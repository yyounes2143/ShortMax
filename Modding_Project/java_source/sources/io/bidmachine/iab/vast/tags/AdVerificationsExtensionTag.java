package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class AdVerificationsExtensionTag extends ExtensionTag {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final List<VerificationTag> f54881d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdVerificationsExtensionTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f54881d = new ArrayList();
        xmlPullParser.require(2, null, "AdVerifications");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "Verification")) {
                    this.f54881d.add(new VerificationTag(xmlPullParser));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "AdVerifications");
    }

    @NonNull
    public List<VerificationTag> Z() {
        return this.f54881d;
    }
}
