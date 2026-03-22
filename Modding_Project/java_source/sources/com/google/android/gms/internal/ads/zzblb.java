package com.google.android.gms.internal.ads;

import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@RequiresApi(api = 21)
/* loaded from: classes4.dex */
public final class zzblb extends zzbld {
    private final OnH5AdsEventListener zza;

    public zzblb(OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzble
    public final void zzb(String str) {
        this.zza.onH5AdsEvent(str);
    }
}
