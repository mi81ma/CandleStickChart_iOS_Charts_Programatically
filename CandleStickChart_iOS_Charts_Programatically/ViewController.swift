//
//  ViewController.swift
//  CandleStickChart_iOS_Charts_Programatically
//
//  Created by masato on 5/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {



    var chart: CandleStickChartView!
    var candleDataSet: CandleChartDataSet!


    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func  viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // let rectView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        //
        //        rectView.backgroundColor = .blue


        // CandleStick Chart Instance
        var candleStickData = CandleChartData()

        //結合グラフに線グラフのデータ読み出し
        //Data readout of line graph on connected graph
        candleStickData = setGraph()


        chart = CandleStickChartView(frame: CGRect(x: 0, y: view.safeAreaInsets.bottom, width: view.frame.width, height: 500))

        print(view.safeAreaInsets.top)

        chart.data = candleStickData

        self.view.addSubview(chart)



        //        // ***********************************************************************
        //
        //        // Grid line color, thickness
        //        ChartView.gridBackgroundColor = UIColor.red.withAlphaComponent(0.9)
        //        //        ChartView.xAxis =
        //
        //        // Display the bellow Text, when there is no output data
        //        ChartView.noDataText = "No chart data available."
        //
        //        // Display data action
        //        // tap to select data is possibele or not
        //        ChartView.highlightPerTapEnabled = true
        //
        //        // Tap Zoom cancel
        //        ChartView.doubleTapToZoomEnabled = false
        //
        //        // Label Font & Size
        //        ChartView.legend.font = UIFont(name: "Futura", size:25)!
        //        ChartView.chartDescription?.font = UIFont(name: "Futura", size: 12)!
        //        //        ChartView.chartDescription?.xOffset = ChartView.frame.width + 30
        //        //        ChartView.chartDescription?.yOffset = ChartView.frame.height + 30
        //        //        ChartView.chartDescription?.textAlign = NSTextAlignment.right
        //
        //
        //        // Place X axis labels below
        //        ChartView.xAxis.labelPosition = .bottom
        //
        //        //
        //        ChartView.highlightValue(x: 30, y: 30, dataSetIndex: 99, dataIndex: 99)
        //
        //        //Color and form edit
        //        // Animation
        //        ChartView.animate(xAxisDuration: 1, yAxisDuration: 1)
        //
        //        ChartView.tintColor = UIColor.blue
        //
        //        // Cancel Pinch Zoom
        //        ChartView.pinchZoomEnabled = false
        //
        //        // Change Background Color Change
        //        ChartView.backgroundColor = UIColor.white
        //
        //
        //
        //        // Border color & thickness
        //        ChartView.drawBordersEnabled = false
        //        ChartView.borderLineWidth = 4
        //        ChartView.borderColor = UIColor.red
        //
        //
        //
        //
        //        // ***********************************************************************


    }




    func setGraph() -> CandleChartData
    {

        // Prepare Data Array
        var entries: [CandleChartDataEntry] = Array()

        // Input Data Set

        entries.append(CandleChartDataEntry(x: 1, shadowH: 0.00010852, shadowL: 9.206e-5, open: 0.00010265, close: 0.00010201))
        entries.append(CandleChartDataEntry(x: 2, shadowH: 0.000104, shadowL: 9.75e-5, open: 0.0001020, close: 0.0001025))
        entries.append(CandleChartDataEntry(x: 3, shadowH: 0.0001051, shadowL: 0.0001005, open: 0.0001025, close: 0.0001047))
        entries.append(CandleChartDataEntry(x: 4, shadowH: 0.0001053, shadowL: 9.866e-5, open: 0.000104, close: 0.0001008))
        entries.append(CandleChartDataEntry(x: 5, shadowH: 0.0001026, shadowL: 9.88e-5, open: 0.0001009, close: 0.00010084))
        entries.append(CandleChartDataEntry(x: 6, shadowH: 0.0001012, shadowL: 9.7e-5, open: 0.0001008, close: 9.883e-5))
        entries.append(CandleChartDataEntry(x: 7, shadowH: 9.917e-5, shadowL: 9.746e-5, open: 9.906e-5, close: 9.776e-5))
        entries.append(CandleChartDataEntry(x: 8, shadowH: 0.0001026, shadowL: 9.88e-5, open: 0.0001009, close: 0.00010084))
        entries.append(CandleChartDataEntry(x: 10, shadowH: 0.000104, shadowL: 9.75e-5, open: 0.0001020, close: 0.0001025))
        entries.append(CandleChartDataEntry(x: 11, shadowH: 0.0001051, shadowL: 0.0001005, open: 0.0001025, close: 0.0001047))
        entries.append(CandleChartDataEntry(x: 12, shadowH: 0.0001053, shadowL: 9.866e-5, open: 0.000104, close: 0.0001008))

        //dataset & Label Name
        let dataSet = CandleChartDataSet(values: entries, label: "Label")




        // HighLight; Color & Width
        dataSet.drawVerticalHighlightIndicatorEnabled = true
        dataSet.drawHorizontalHighlightIndicatorEnabled = true

        dataSet.highlightColor = UIColor.red
        dataSet.highlightLineWidth = 3.0


        //Candle Color Change
        //dataSet.colors = [UIColor.red]

        //CandleColor Filled in Increasing
        dataSet.increasingFilled = true

        //CandleColor Filled in Decreasing
        dataSet.decreasingFilled = true

        // Shadow Color is same as CandleColor
        dataSet.shadowColorSameAsCandle = true


        //Candle Color
        //        dataSet.increasingColor = UIColor.green
        //        dataSet.decreasingColor = UIColor.red

        // Candle Colors to joyful/colorful/vordiplom/liberty/material
        dataSet.colors = ChartColorTemplates.material()

        //        let chartData = CandleChartData(dataSet: dataSet)

        //        //Data set to CandleStickChartView instance
        //        ChartView.data = chartData

        return CandleChartData(dataSet: dataSet)

    }

}
