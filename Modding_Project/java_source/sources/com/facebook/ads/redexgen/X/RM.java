package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.api.NativeAdViewApi;
/* loaded from: assets/audience_network.dex */
public final class RM implements NativeAdViewApi {
    public static View A00(C2111dL c2111dL, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C1769Ur c1769Ur = (C1769Ur) nativeAdViewAttributes.getInternalAttributes();
        C1652Qc internalNativeAd = C1652Qc.A0L(nativeAd.getInternalNativeAd());
        internalNativeAd.A1a(EnumC1770Us.A00(type.getEnumCode()));
        internalNativeAd.A1Z(c1769Ur);
        C6Q c6q = new C6Q();
        NativeAdLayout mediumRectTemplateLayout = new NativeAdLayout(c2111dL, c6q);
        c6q.A06(mediumRectTemplateLayout, c2111dL, nativeAd, c1769Ur);
        mediumRectTemplateLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (AbstractC1812Wl.A02 * type.getHeight())));
        return mediumRectTemplateLayout;
    }

    public static View A01(C2111dL c2111dL, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        if (nativeAdViewAttributes == null) {
            nativeAdViewAttributes = new NativeAdViewAttributes();
        }
        C1652Qc A0L = C1652Qc.A0L(nativeAd.getInternalNativeAd());
        C1769Ur c1769Ur = (C1769Ur) nativeAdViewAttributes.getInternalAttributes();
        A0L.A1a(EnumC1770Us.A0B);
        A0L.A1Z(c1769Ur);
        C6Q c6q = new C6Q();
        NativeAdLayout nativeAdLayout = new NativeAdLayout(c2111dL, c6q);
        c6q.A06(nativeAdLayout, c2111dL, nativeAd, c1769Ur);
        return nativeAdLayout;
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd) {
        return render(context, nativeAd, (NativeAdViewAttributes) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type) {
        return render(context, nativeAd, type, null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes) {
        try {
            return A00(RB.A03(context), nativeAd, type, nativeAdViewAttributes);
        } catch (Throwable th2) {
            return YB.A00(RB.A03(context), th2);
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewApi
    public final View render(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        C2111dL contextWrapper;
        try {
            if (context instanceof C2111dL) {
                contextWrapper = (C2111dL) context;
            } else {
                contextWrapper = RB.A03(context);
            }
            return A01(contextWrapper, nativeAd, nativeAdViewAttributes);
        } catch (Throwable th2) {
            return YB.A00(RB.A03(context), th2);
        }
    }
}
