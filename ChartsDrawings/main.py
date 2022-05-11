import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


# inspiration from https://stackoverflow.com/questions/23293011/how-to-plot-a-superimposed-bar-chart-using-matplotlib
# -in-python

def draw_overlapped_barchart(df, df2, df3, show=False, width=2.5, alpha=1, title='', xlabel='', ylabel=''):
    pastels = plt.get_cmap('Pastel1')
    N = len(df)
    M = len(df.columns)
    plt.figure(dpi=300)
    indices = np.arange(N) * 10
    colors = [pastels.colors[1], pastels.colors[0]] * int(M / 2. + 1)
    colors2 = [pastels.colors[1], pastels.colors[0]] * int(M / 2. + 1)
    for i, label, label2, color1, color2 in zip(range(M), df.columns, df2.columns, colors, colors2):
        plt.bar(indices - width - 0.3 + width / 2, df2[label2], width=width, alpha=alpha, color=color2)
        plt.bar(indices + width + 0.3 + width / 2, df[label], width=width, alpha=alpha, color=color1, label=label)

    nameset = [['HW No Opt: {}'.format(idx+1), 'SW: {}'.format(idx+1), 'HW Opt: {}'.format(idx+1)] for idx in
               range(len(df.index.values))]
    buflist = list()
    for s in nameset:
        buflist.append(s[0])
        buflist.append(s[1])
        buflist.append(s[2])

    indx1 = indices - width - 0.3 + width / 2
    indx2 = indices + width / 2
    indx3 = indices + width + 0.3 + width / 2
    nIndices = list()
    for i in range(len(indices)):
        nIndices.append(indx1[i])
        nIndices.append(indx2[i])
        nIndices.append(indx3[i])

    nIndices = np.array(nIndices)

    plt.xticks(nIndices,buflist, rotation='vertical')

    label3 = df3.columns[0]
    plt.bar(indices + width / 2, df3[label3], width=width, alpha=alpha, color=pastels.colors[1])
    plt.legend()
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.subplots_adjust(bottom=0.3)
    plt.savefig('test_single_run_time.png', dpi=300)
    if show:
        plt.show()
    return plt.gcf()


if __name__ == '__main__':
    average_total_time_hardware_O = [2.62688, 4.03354, 5.2477, 7.49712, 9.74743, 11.9942, 4.0337, 9.74807]
    average_execution_time_hardware_O = [0.433275, 0.657676, 0.858673, 1.22557, 1.59259, 1.95968, 0.657996, 1.5935]

    average_total_time_hardware_nO = [4.16799, 6.42469, 8.34893, 11.9308, 15.5155, 19.0965, 6.44499, 15.5732]
    average_execution_time_hardware_nO = [1.97474, 3.04775, 3.95913, 5.66184, 7.36529, 9.06911, 3.06883, 7.42297]

    average_total_time_software = [12.0172, 18.7853, 24.4828, 35.1121, 45.8689, 56.6826, 18.9523, 46.1498]

    ath_df = pd.DataFrame(np.matrix([average_total_time_hardware_O, average_execution_time_hardware_O]).T,
                          columns=['Average Total Time', 'Average Execution Time'],
                          index=pd.Index(['%s' % i for i in range(len(average_execution_time_hardware_O))],
                                         name='Test Number'))

    atth_df = pd.DataFrame(np.matrix([average_total_time_hardware_nO, average_execution_time_hardware_nO]).T,
                           columns=['ATTH No O', 'AETH No O'],
                           index=pd.Index(['%s' % i for i in range(len(average_execution_time_hardware_nO))],
                                          name='Test Number'))

    atts_df = pd.DataFrame(np.matrix([average_total_time_software]).T, columns=['AATS'],
                           index=pd.Index(['%s' % i for i in range(len(average_total_time_software))],
                                          name='Test Number'))

    draw_overlapped_barchart(ath_df, atth_df, atts_df, show=True, ylabel='Time (ns)', xlabel='Test')
