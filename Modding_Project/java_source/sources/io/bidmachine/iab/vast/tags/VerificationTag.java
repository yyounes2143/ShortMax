package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class VerificationTag extends VastXmlTag {
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f54941e = {"vendor"};
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private JavaScriptResourceTag f54942c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f54943d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VerificationTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Verification");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "JavaScriptResource")) {
                    this.f54942c = new JavaScriptResourceTag(xmlPullParser);
                } else if (VastXmlTag.D(name, "VerificationParameters")) {
                    this.f54943d = VastXmlTag.H(xmlPullParser);
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Verification");
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54941e;
    }

    @Nullable
    public JavaScriptResourceTag Z() {
        return this.f54942c;
    }

    @Nullable
    public String a0() {
        return y("vendor");
    }

    @Nullable
    public String k0() {
        return this.f54943d;
    }
}
