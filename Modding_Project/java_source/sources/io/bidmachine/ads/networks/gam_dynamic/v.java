package io.bidmachine.ads.networks.gam_dynamic;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsFormat;
import io.bidmachine.protobuf.Waterfall;
/* compiled from: InternalBannerAd.java */
/* loaded from: classes7.dex */
public abstract class v extends InternalAd {
    public v(@NonNull hm.s sVar, @NonNull hm.u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar) {
        super(sVar, uVar, adsFormat, adUnit, kVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract View K();
}
