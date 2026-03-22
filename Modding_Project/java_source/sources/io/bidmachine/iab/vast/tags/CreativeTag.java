package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class CreativeTag extends VastXmlTag {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f54910d = {"id", "adID"};
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private CreativeContentTag f54911c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CreativeTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Creative");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "Linear")) {
                    this.f54911c = new LinearCreativeTag(xmlPullParser);
                } else if (VastXmlTag.D(name, "CompanionAds")) {
                    this.f54911c = new CompanionAdsCreativeTag(xmlPullParser);
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creative");
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54910d;
    }

    @Nullable
    public CreativeContentTag Z() {
        return this.f54911c;
    }
}
