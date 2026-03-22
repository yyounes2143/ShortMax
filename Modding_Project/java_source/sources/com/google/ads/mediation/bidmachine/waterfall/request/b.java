package com.google.ads.mediation.bidmachine.waterfall.request;

import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import io.bidmachine.AdRequest;
import io.bidmachine.banner.BannerSize;
import kotlin.jvm.internal.Intrinsics;
import nm.b;
/* loaded from: classes4.dex */
public final class b extends a {
    @Override // com.google.ads.mediation.bidmachine.waterfall.request.a
    public void a(MediationBannerAdConfiguration adConfiguration, Bundle extras, com.google.ads.mediation.bidmachine.common.b listener) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        AdSize adSize = adConfiguration.getAdSize();
        Intrinsics.checkNotNullExpressionValue(adSize, "getAdSize(...)");
        BannerSize a10 = a(adSize);
        if (a10 != null) {
            AdRequest build = ((b.c) a(new b.c(), extras)).c(a10).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            listener.onSuccess(build);
            return;
        }
        fr.a h10 = fr.a.h("Unsupported AdSize: " + adSize.getWidth() + 'x' + adSize.getHeight());
        Intrinsics.checkNotNullExpressionValue(h10, "incorrectContent(...)");
        listener.a(h10);
    }

    private final BannerSize a(AdSize adSize) {
        int width = adSize.getWidth();
        if (width != 300) {
            if (width != 320) {
                if (width != 728) {
                    return null;
                }
                return BannerSize.Size_728x90;
            }
            return BannerSize.Size_320x50;
        }
        return BannerSize.Size_300x250;
    }
}
