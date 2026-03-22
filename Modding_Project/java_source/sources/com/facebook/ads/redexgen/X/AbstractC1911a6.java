package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import androidx.exifinterface.media.ExifInterface;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.a6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1911a6 {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.0g] */
    public static C10010g A00(final C1949ai c1949ai, final C1652Qc c1652Qc, final String str, final C11415s c11415s) {
        return new C11305h(c1949ai, c1652Qc, true, str, c11415s) { // from class: com.facebook.ads.redexgen.X.0g
            public KE A00;
            public C2078cn A01;
            public final US A02 = this.A0I.A06().A02().A0A();
            public final C1652Qc A03;
            public final C11415s A04;
            public final String A05;
            public static String[] A06 = {CampaignEx.JSON_KEY_AD_Q, "A73Xi2G3GXsP7eqOYxzIEC2a49UqAHwv", "tzkKnItTrh", "5yGem34VUXIU78ICazF0QaKYuuceWMlm", "d26mhKEOwDnFCjn", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "vFFUszWLQFPwstqQ2PhnuKwIvdRc", "cQLhl1S6XoLnT945hQssVDVRJiee0FVC"};
            public static final int A08 = (int) (AbstractC1812Wl.A02 * (-4.0f));
            public static final int A07 = (int) (AbstractC1812Wl.A02 * 6.0f);

            {
                this.A03 = c1652Qc;
                this.A05 = str;
                this.A04 = c11415s;
                this.A03.A1L(this);
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1462Ir
            public void setupNativeCtaExtension(C2078cn c2078cn) {
                N3 A21;
                this.A01 = c2078cn;
                int A0Q = U7.A0Q(this.A0I.A06());
                C1572My A01 = this.A03.A10().A1z().A01();
                C2111dL A062 = this.A0I.A06();
                String A0r = this.A03.A10().A0r();
                US us2 = this.A02;
                InterfaceC1840Xn dummyListener = C1881Zc.getDummyListener();
                C2184eX A0b = this.A04.A0b();
                XH A1A = this.A03.A1A();
                if (this.A03.A10() == null) {
                    A21 = null;
                } else {
                    A21 = this.A03.A10().A21();
                }
                this.A00 = new KE(A062, A0r, A01, us2, dummyListener, A0b, A1A, A21);
                this.A00.setCta(c2078cn.A03().A0J(), this.A05, new HashMap());
                this.A03.A1L(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (A0Q == 1) {
                    layoutParams.addRule(12);
                    String[] strArr = A06;
                    String str2 = strArr[5];
                    String str3 = strArr[0];
                    int length = str2.length();
                    int extensionVariant = str3.length();
                    if (length != extensionVariant) {
                        throw new RuntimeException();
                    }
                    A06[4] = "cEnNLXyXCc05OsZ";
                    XP.A0N(this.A00, A07, 5, A01.A0A(false));
                    ((C11305h) this).A06.addView(this.A00, layoutParams);
                } else if (A0Q == 2) {
                    layoutParams.addRule(3, ((C11305h) this).A06.getId());
                    int extensionVariant2 = A08;
                    layoutParams.setMargins(0, extensionVariant2, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C11305h) this).A06.bringToFront();
                }
            }
        };
    }
}
