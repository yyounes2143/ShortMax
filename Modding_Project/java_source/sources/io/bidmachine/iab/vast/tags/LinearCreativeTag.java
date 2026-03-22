package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.TrackingEvent;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import tm.d;
/* loaded from: classes7.dex */
public class LinearCreativeTag extends CreativeContentTag {
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f54914i = {"skipoffset"};
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Float f54915c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private List<MediaFileTag> f54916d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private VideoClicksTag f54917e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f54918f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private EnumMap<TrackingEvent, List<String>> f54919g;

    /* renamed from: h  reason: collision with root package name */
    private int f54920h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LinearCreativeTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f54920h = -1;
        xmlPullParser.require(2, null, "Linear");
        int K = VastXmlTag.K(y("skipoffset"));
        if (K > -1) {
            Z(K);
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "Duration")) {
                    float K2 = VastXmlTag.K(VastXmlTag.H(xmlPullParser));
                    if (K2 > -1.0f) {
                        v0(Float.valueOf(K2));
                    }
                } else if (VastXmlTag.D(name, "MediaFiles")) {
                    l0(o0(xmlPullParser));
                } else if (VastXmlTag.D(name, "VideoClicks")) {
                    a0(new VideoClicksTag(xmlPullParser));
                } else if (VastXmlTag.D(name, "AdParameters")) {
                    u0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "TrackingEvents")) {
                    k0(new TrackingEventsTag(xmlPullParser).Z());
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Linear");
    }

    private void Z(int i10) {
        this.f54920h = i10;
    }

    private void a0(@Nullable VideoClicksTag videoClicksTag) {
        this.f54917e = videoClicksTag;
    }

    private void k0(@Nullable EnumMap<TrackingEvent, List<String>> enumMap) {
        this.f54919g = enumMap;
    }

    private void l0(@Nullable List<MediaFileTag> list) {
        this.f54916d = list;
    }

    private static List<MediaFileTag> o0(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "MediaFiles");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "MediaFile")) {
                    MediaFileTag mediaFileTag = new MediaFileTag(xmlPullParser);
                    if (mediaFileTag.l0()) {
                        arrayList.add(mediaFileTag);
                    } else {
                        d.a("VastXmlTag", "MediaFile: is not valid. Skipping it.", new Object[0]);
                        VastXmlTag.I(xmlPullParser);
                    }
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "MediaFiles");
        return arrayList;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54914i;
    }

    @Nullable
    public Float p0() {
        return this.f54915c;
    }

    @Nullable
    public List<MediaFileTag> q0() {
        return this.f54916d;
    }

    @Nullable
    public Map<TrackingEvent, List<String>> r0() {
        return this.f54919g;
    }

    @Nullable
    public VideoClicksTag s0() {
        return this.f54917e;
    }

    public void u0(@Nullable String str) {
        this.f54918f = str;
    }

    public void v0(@Nullable Float f10) {
        this.f54915c = f10;
    }
}
