package com.google.android.gms.ads.h5;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.ads.zzbll;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class H5AdsRequestHandler {
    private final zzbll zza;

    public H5AdsRequestHandler(@NonNull Context context, @NonNull OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = new zzbll(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        this.zza.zza();
    }

    public boolean handleH5AdsRequest(@NonNull String str) {
        return this.zza.zzb(str);
    }

    public boolean shouldInterceptRequest(@NonNull String str) {
        return zzbll.zzc(str);
    }
}
