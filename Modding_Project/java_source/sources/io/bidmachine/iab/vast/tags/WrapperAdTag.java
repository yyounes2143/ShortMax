package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class WrapperAdTag extends AdContentTag {
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f54947i = {"followAdditionalWrappers", "allowMultipleAds", "fallbackOnNoAd"};
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f54948h;

    public WrapperAdTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Wrapper");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "Creatives")) {
                    a0(l0(xmlPullParser));
                } else if (VastXmlTag.D(name, "Extensions")) {
                    k0(p0(xmlPullParser));
                } else if (VastXmlTag.D(name, "Impression")) {
                    x0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "Error")) {
                    v0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "AdSystem")) {
                    Z(new AdSystemTag(xmlPullParser));
                } else if (VastXmlTag.D(name, "VASTAdTagURI")) {
                    B0(VastXmlTag.H(xmlPullParser));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Wrapper");
    }

    private void B0(@Nullable String str) {
        this.f54948h = str;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54947i;
    }

    @Nullable
    public String y0() {
        return this.f54948h;
    }
}
