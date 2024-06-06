//
//  EasyUnitsWidget.swift
//  EasyUnitsWidget
//
//  Created by Lusine Khachatryan on 22.05.24.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> EasyUnitsEntry {
        EasyUnitsEntry(date: Date(), unitType: "Speed", fromUnit: "mph", toUnit: "km/h")
    }

    func getSnapshot(in context: Context, completion: @escaping (EasyUnitsEntry) -> ()) {
        let entry:  EasyUnitsEntry
        if(context.isPreview) {
            entry = placeholder(in: context)
        } else {
            entry = EasyUnitsEntry(date: Date(), unitType: "Speed", fromUnit: "mph", toUnit: "km/h")
        }
        
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        getSnapshot(in: context) { entry in
            let timeline = Timeline(entries: [entry], policy: TimelineReloadPolicy.atEnd)
            completion(timeline)
        }
    }
}

struct  EasyUnitsEntry: TimelineEntry {
    var date: Date
    
    let unitType: String
    let fromUnit: String
    let toUnit: String
}

struct EasyUnitsWidgetEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var widgetFamily
    
    var smallBody: some View {
        VStack( spacing: 8) {
            VStack (spacing: 8) {
                Image("speed").frame(maxWidth: .infinity, alignment: .trailing)
                Spacer()
                Text(entry.unitType)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .padding(8)
            .background(ContainerRelativeShape().fill(Color(.lightGray)))
            HStack(spacing: 8){
                Text(entry.fromUnit)
                Text("->")
                Text(entry.toUnit)
            }
            .frame(maxWidth: .infinity)
            .padding(8)
            .background(ContainerRelativeShape()
                .fill(Color(.yellow)))
        }
    }
    
    var mediumBody: some View {
        HStack {
            smallBody
            VStack(content: {
                Text("Medium part")
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(8)
            .background(ContainerRelativeShape()
                    .fill(Color(.lightText)))
        }
    }
    
    var body: some View {
        switch widgetFamily {
        case .systemSmall:
            smallBody
        default:
            mediumBody
        }
        
    }
}

struct EasyUnitsWidget: Widget {
    let kind: String = "EasyUnitsWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                EasyUnitsWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                EasyUnitsWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

#Preview(as: .systemSmall) {
    EasyUnitsWidget()
} timeline: {
    EasyUnitsEntry(date: Date(),
                   unitType: "Speed",
                   fromUnit: "mph",
                   toUnit: "km/h")
}


#Preview(as: .systemMedium) {
    EasyUnitsWidget()
} timeline: {
    EasyUnitsEntry(date: Date(),
                   unitType: "Speed",
                   fromUnit: "mph",
                   toUnit: "km/h")
}


#Preview(as: .systemLarge) {
    EasyUnitsWidget()
} timeline: {
    EasyUnitsEntry(date: Date(),
                   unitType: "Speed",
                   fromUnit: "mph",
                   toUnit: "km/h")
}
