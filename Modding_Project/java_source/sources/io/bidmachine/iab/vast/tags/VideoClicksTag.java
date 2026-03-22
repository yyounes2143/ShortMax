package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class VideoClicksTag extends VastXmlTag {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f54944c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private List<String> f54945d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private List<String> f54946e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoClicksTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "VideoClicks");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "ClickThrough")) {
                    o0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "ClickTracking")) {
                    k0(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "CustomClick")) {
                    l0(VastXmlTag.H(xmlPullParser));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VideoClicks");
    }

    private void k0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f54945d == null) {
            this.f54945d = new ArrayList();
        }
        this.f54945d.add(str);
    }

    private void l0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f54946e == null) {
            this.f54946e = new ArrayList();
        }
        this.f54946e.add(str);
    }

    private void o0(@Nullable String str) {
        this.f54944c = str;
    }

    @Nullable
    public String Z() {
        return this.f54944c;
    }

    @Nullable
    public List<String> a0() {
        return this.f54945d;
    }
}
