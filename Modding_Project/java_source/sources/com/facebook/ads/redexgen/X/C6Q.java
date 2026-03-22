package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
/* renamed from: com.facebook.ads.redexgen.X.6Q  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6Q extends C2254fg {
    public InterfaceC2112dM A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A06(NativeAdLayout nativeAdLayout, C2111dL c2111dL, NativeAd nativeAd, C1769Ur c1769Ur) {
        C1925aK c1925aK = new C1925aK(c2111dL);
        MediaView mediaView = new MediaView(c2111dL);
        AdOptionsView adOptionsView = new AdOptionsView(c2111dL, nativeAd, nativeAdLayout);
        c1769Ur.A09(adOptionsView, 28);
        this.A00 = new EP(c2111dL, nativeAd, c1769Ur, C1652Qc.A0L(nativeAd.getInternalNativeAd()).A18(), c1925aK, mediaView, adOptionsView);
        XP.A0K(nativeAdLayout, c1769Ur.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c1925aK, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.R8, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
