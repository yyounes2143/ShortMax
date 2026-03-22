package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class VastTag extends VastXmlTag {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f54937d = {"version"};
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final List<AdTag> f54938c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f54938c = new ArrayList();
        xmlPullParser.require(2, null, "VAST");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "Ad")) {
                    this.f54938c.add(new AdTag(xmlPullParser));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VAST");
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54937d;
    }

    @NonNull
    public List<AdTag> Z() {
        return this.f54938c;
    }

    public boolean a0() {
        return !this.f54938c.isEmpty();
    }
}
