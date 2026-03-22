package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.mraid.o;
import io.bidmachine.iab.vast.TrackingEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class CompanionTag extends VastXmlTag {
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f54902j = {"width", "height", "id", "assetWidth", "assetHeight", "expandedWidth", "expandedHeight", "apiFramework", "adSlotID", "required"};
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private StaticResourceTag f54903c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f54904d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f54905e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f54906f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private List<String> f54907g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Map<TrackingEvent, List<String>> f54908h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f54909i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompanionTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Companion");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "StaticResource")) {
                    StaticResourceTag staticResourceTag = new StaticResourceTag(xmlPullParser);
                    if (staticResourceTag.Z()) {
                        Z(staticResourceTag);
                    }
                } else if (VastXmlTag.D(name, "IFrameResource")) {
                    y0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "HTMLResource")) {
                    G0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "CompanionClickThrough")) {
                    x0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "CompanionClickTracking")) {
                    v0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "TrackingEvents")) {
                    a0(new TrackingEventsTag(xmlPullParser).Z());
                } else if (VastXmlTag.D(name, "AdParameters")) {
                    B0(VastXmlTag.H(xmlPullParser));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Companion");
    }

    private void Z(@Nullable StaticResourceTag staticResourceTag) {
        this.f54903c = staticResourceTag;
    }

    private void a0(@Nullable Map<TrackingEvent, List<String>> map) {
        this.f54908h = map;
    }

    private void v0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f54907g == null) {
            this.f54907g = new ArrayList();
        }
        this.f54907g.add(str);
    }

    private void x0(@Nullable String str) {
        this.f54906f = str;
    }

    private void y0(@Nullable String str) {
        this.f54904d = str;
    }

    public void B0(@Nullable String str) {
        this.f54909i = str;
    }

    public void G0(@Nullable String str) {
        this.f54905e = str;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54902j;
    }

    @Nullable
    public List<String> k0() {
        return this.f54907g;
    }

    public int l0() {
        return E("height");
    }

    @Nullable
    public String o0() {
        String p02 = p0();
        if (p02 != null) {
            return o.r(p02);
        }
        return null;
    }

    @Nullable
    public String p0() {
        String str = this.f54905e;
        if (str != null) {
            return str;
        }
        StaticResourceTag staticResourceTag = this.f54903c;
        if (staticResourceTag != null) {
            return String.format("<script type='text/javascript'>document.write('<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; height: 100%%; width: 100%%; object-fit: contain;\" src=\"%s\"/></a>');</script>", this.f54906f, staticResourceTag.P());
        }
        if (this.f54904d != null) {
            return String.format("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>", Integer.valueOf(r0()), Integer.valueOf(l0()), this.f54904d);
        }
        return null;
    }

    @Nullable
    public Map<TrackingEvent, List<String>> q0() {
        return this.f54908h;
    }

    public int r0() {
        return E("width");
    }

    public boolean s0() {
        if (this.f54905e == null && this.f54903c == null && this.f54904d == null) {
            return false;
        }
        return true;
    }

    public boolean u0() {
        String y10 = y("width");
        String y11 = y("height");
        if (!TextUtils.isEmpty(y10) && !TextUtils.isEmpty(y11)) {
            return true;
        }
        return false;
    }
}
