package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import org.xmlpull.v1.XmlPullParser;
import tm.d;
/* loaded from: classes7.dex */
public class PostBannerTag extends VastXmlTag {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f54926g;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final IabElementStyle f54922c = new IabElementStyle();
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final IabElementStyle f54923d = new IabElementStyle();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final IabElementStyle f54924e = new IabElementStyle();
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final IabElementStyle f54925f = new IabElementStyle();

    /* renamed from: h  reason: collision with root package name */
    private float f54927h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f54928i = 0.0f;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54929j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54930k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54931l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f54932m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f54933n = false;

    @Override // io.bidmachine.iab.vast.tags.VastXmlTag
    protected void B(@NonNull XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Postbanner");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                try {
                    String name = xmlPullParser.getName();
                    if (VastXmlTag.D(name, "CloseTime")) {
                        String H = VastXmlTag.H(xmlPullParser);
                        if (!TextUtils.isEmpty(H)) {
                            this.f54927h = Float.parseFloat(H);
                        }
                    } else if (VastXmlTag.D(name, "Duration")) {
                        String H2 = VastXmlTag.H(xmlPullParser);
                        if (!TextUtils.isEmpty(H2)) {
                            this.f54928i = Float.parseFloat(H2);
                        }
                    } else if (VastXmlTag.D(name, "ClosableView")) {
                        VastXmlTag.C(xmlPullParser, this.f54922c);
                    } else if (VastXmlTag.D(name, "Countdown")) {
                        VastXmlTag.C(xmlPullParser, this.f54923d);
                    } else if (VastXmlTag.D(name, "LoadingView")) {
                        VastXmlTag.C(xmlPullParser, this.f54924e);
                    } else if (VastXmlTag.D(name, "Progress")) {
                        VastXmlTag.C(xmlPullParser, this.f54925f);
                    } else if (VastXmlTag.D(name, "UseNativeClose")) {
                        this.f54931l = VastXmlTag.F(xmlPullParser);
                    } else if (VastXmlTag.D(name, "IgnoresSafeAreaLayoutGuide")) {
                        this.f54930k = VastXmlTag.F(xmlPullParser);
                    } else if (VastXmlTag.D(name, "ProductLink")) {
                        this.f54926g = VastXmlTag.H(xmlPullParser);
                    } else if (VastXmlTag.D(name, "R1")) {
                        this.f54932m = VastXmlTag.F(xmlPullParser);
                    } else if (VastXmlTag.D(name, "R2")) {
                        this.f54933n = VastXmlTag.F(xmlPullParser);
                    } else {
                        VastXmlTag.I(xmlPullParser);
                    }
                } catch (Throwable th2) {
                    d.c("VastXmlTag", th2);
                }
            }
        }
        xmlPullParser.require(3, null, "Postbanner");
    }

    public float Z() {
        return this.f54927h;
    }

    public float a0() {
        return this.f54928i;
    }

    @NonNull
    public IabElementStyle b() {
        return this.f54922c;
    }

    @NonNull
    public IabElementStyle j() {
        return this.f54925f;
    }

    @Nullable
    public String k0() {
        return this.f54926g;
    }

    public boolean l0() {
        return this.f54931l;
    }

    public boolean n() {
        return this.f54933n;
    }

    public boolean o0() {
        return this.f54929j;
    }

    public void p0(int i10) {
        this.f54927h = i10;
    }

    public boolean q() {
        return this.f54932m;
    }

    public void q0(boolean z10) {
        this.f54929j = z10;
    }

    @NonNull
    public IabElementStyle u() {
        return this.f54923d;
    }

    @NonNull
    public IabElementStyle v() {
        return this.f54924e;
    }
}
