package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class JavaScriptResourceTag extends VastXmlTag {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f54913c = {"apiFramework"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public JavaScriptResourceTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54913c;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public boolean U() {
        return true;
    }
}
