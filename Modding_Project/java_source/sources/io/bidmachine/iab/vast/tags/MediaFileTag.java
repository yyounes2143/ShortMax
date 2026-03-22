package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class MediaFileTag extends VastXmlTag {
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f54921c = {"delivery", "type", "width", "height", "codec", "id", "bitrate", "minBitrate", "maxBitrate", "scalable", "maintainAspectRatio", "apiFramework"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaFileTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    @NonNull
    public String[] O() {
        return f54921c;
    }

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    public boolean U() {
        return true;
    }

    public int Z() {
        return E("height");
    }

    @Nullable
    public String a0() {
        return y("type");
    }

    public int k0() {
        return E("width");
    }

    public boolean l0() {
        String y10 = y("type");
        String y11 = y("width");
        String y12 = y("height");
        if (!TextUtils.isEmpty(y10) && !TextUtils.isEmpty(y11) && !TextUtils.isEmpty(y12) && !TextUtils.isEmpty(P())) {
            return true;
        }
        return false;
    }
}
