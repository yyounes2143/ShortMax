package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class AdTag extends VastXmlTag {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f54879d = {"id"};
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AdContentTag f54880c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Ad");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "InLine")) {
                    this.f54880c = new InLineAdTag(xmlPullParser);
                } else if (VastXmlTag.D(name, "Wrapper")) {
                    this.f54880c = new WrapperAdTag(xmlPullParser);
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Ad");
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54879d;
    }

    @Nullable
    public AdContentTag Z() {
        return this.f54880c;
    }
}
