package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class StaticResourceTag extends VastXmlTag {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f54934c = {"creativeType"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public StaticResourceTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54934c;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public boolean U() {
        return true;
    }

    public boolean Z() {
        String y10 = y("creativeType");
        if (!TextUtils.isEmpty(y10)) {
            return y10.matches("image/.*(?i)(gif|jpeg|jpg|bmp|png)");
        }
        return false;
    }
}
