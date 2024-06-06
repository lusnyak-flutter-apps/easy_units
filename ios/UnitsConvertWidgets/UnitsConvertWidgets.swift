//
//  UnitsConvertWidgets.swift
//  UnitsConvertWidgets
//
//  Created by Lusine Khachatryan on 30.05.24.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct UnitsConvertWidgetsEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        HStack {
            VStack( spacing: 8) {
                Text("Convert").frame(maxWidth: .infinity, alignment: .leading)
                HStack(spacing: 8){
                    Text("mph")
                    Text("->")
                    Text("km/h")
                }
                .frame(maxWidth: .infinity)
                .padding(8)
                .background(ContainerRelativeShape()
                        .fill(Color(.green)))
                HStack(spacing: 8){
                        Text("F")
                        Text("->")
                        Text("C")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(8)
                    .background(ContainerRelativeShape()
                        .fill(Color(.yellow)))
                }
                
                VStack {
                    Text("Medium part")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(8)
                .background(ContainerRelativeShape()
                    .fill(Color(.lightText)))
            }
        }
}

struct UnitsConvertWidgets: Widget {
    let kind: String = "UnitsConvertWidgets"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                UnitsConvertWidgetsEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                UnitsConvertWidgetsEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemMedium])
    }
}

#Preview(as: .systemMedium) {
    UnitsConvertWidgets()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀")
    SimpleEntry(date: .now, emoji: "🤩")
}
