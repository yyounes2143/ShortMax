package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import io.bidmachine.iab.vast.TrackingEvent;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import tm.d;
/* loaded from: classes7.dex */
class TrackingEventsTag extends VastXmlTag {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final EnumMap<TrackingEvent, List<String>> f54935c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackingEventsTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        TrackingEvent trackingEvent;
        this.f54935c = new EnumMap<>(TrackingEvent.class);
        xmlPullParser.require(2, null, "TrackingEvents");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "Tracking")) {
                    String y10 = new TrackingTag(xmlPullParser).y(NotificationCompat.CATEGORY_EVENT);
                    try {
                        trackingEvent = TrackingEvent.valueOf(y10);
                    } catch (Exception unused) {
                        d.a("VastXmlTag", "Event: %s is not valid. Skipping it.", y10);
                        trackingEvent = null;
                    }
                    if (trackingEvent != null) {
                        String H = VastXmlTag.H(xmlPullParser);
                        List<String> list = this.f54935c.get(trackingEvent);
                        if (list != null) {
                            list.add(H);
                        } else {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(H);
                            this.f54935c.put((EnumMap<TrackingEvent, List<String>>) trackingEvent, (TrackingEvent) arrayList);
                        }
                    } else {
                        VastXmlTag.I(xmlPullParser);
                    }
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "TrackingEvents");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public EnumMap<TrackingEvent, List<String>> Z() {
        return this.f54935c;
    }
}
