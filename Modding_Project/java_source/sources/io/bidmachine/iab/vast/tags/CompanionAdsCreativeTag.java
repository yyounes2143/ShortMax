package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import tm.d;
/* loaded from: classes7.dex */
public class CompanionAdsCreativeTag extends CreativeContentTag {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final List<CompanionTag> f54901c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompanionAdsCreativeTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f54901c = new ArrayList();
        xmlPullParser.require(2, null, "CompanionAds");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "Companion")) {
                    CompanionTag companionTag = new CompanionTag(xmlPullParser);
                    if (companionTag.u0()) {
                        this.f54901c.add(companionTag);
                    } else {
                        d.a("VastXmlTag", "Creative Companion: is not valid. Skipping it.", new Object[0]);
                    }
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "CompanionAds");
    }

    @NonNull
    public List<CompanionTag> Z() {
        return this.f54901c;
    }
}
