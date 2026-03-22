package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAdListener;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.ads.redexgen.X.gm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2319gm implements SN {
    public int A00 = -1;
    public long A01 = -1;
    public AdExperienceType A02;
    public RewardData A03;
    public RewardedVideoAdListener A04;
    public String A05;
    public String A06;
    public String A07;
    public boolean A08;
    public com.facebook.ads.Ad A09;
    public WeakReference<com.facebook.ads.Ad> A0A;
    public final C2111dL A0B;
    public final TL A0C;
    public final String A0D;

    public C2319gm(C2111dL c2111dL, String str, com.facebook.ads.Ad ad2, TL tl2) {
        this.A0B = c2111dL;
        this.A0D = str;
        this.A09 = ad2;
        this.A0A = new WeakReference<>(ad2);
        this.A0C = tl2;
        c2111dL.A0N(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.SN
    /* renamed from: A00 */
    public final RewardedVideoAdListener A6g() {
        return this.A04;
    }

    public final C2111dL A01() {
        return this.A0B;
    }

    public final void A02(com.facebook.ads.Ad ad2) {
        if (ad2 == null && !U7.A0u(this.A0B)) {
            return;
        }
        this.A09 = ad2;
    }

    @Override // com.facebook.ads.redexgen.X.SN
    public final com.facebook.ads.Ad A6c() {
        return this.A09 != null ? this.A09 : this.A0A.get();
    }
}
