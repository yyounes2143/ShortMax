package com.google.android.gms.ads.mediation;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public interface MediationAppOpenAdCallback extends MediationAdCallback {
    void onAdFailedToShow(@NonNull AdError adError);
}
