package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class InLineAdTag extends AdContentTag {
    /* JADX INFO: Access modifiers changed from: package-private */
    public InLineAdTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "InLine");
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
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "InLine");
    }
}
