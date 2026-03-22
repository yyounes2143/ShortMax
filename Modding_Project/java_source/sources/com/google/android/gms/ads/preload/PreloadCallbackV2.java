package com.google.android.gms.ads.preload;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.ResponseInfo;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class PreloadCallbackV2 {
    public void onAdsExhausted(@NonNull String str) {
    }

    public void onAdFailedToPreload(@NonNull String str, @NonNull AdError adError) {
    }

    public void onAdPreloaded(@NonNull String str, @Nullable ResponseInfo responseInfo) {
    }
}
