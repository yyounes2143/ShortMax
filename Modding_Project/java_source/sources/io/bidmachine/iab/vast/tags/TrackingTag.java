package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class TrackingTag extends VastXmlTag {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f54936c = {NotificationCompat.CATEGORY_EVENT};

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackingTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54936c;
    }
}
