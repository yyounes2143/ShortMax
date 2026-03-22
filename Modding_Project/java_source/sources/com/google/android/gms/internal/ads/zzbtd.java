package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbtd {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;
    @Nullable
    private final NativeCustomFormatAd.OnCustomClickListener zzb;
    @Nullable
    @GuardedBy("this")
    private NativeCustomFormatAd zzc;

    public zzbtd(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final synchronized NativeCustomFormatAd zzf(zzbhj zzbhjVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzbte zzbteVar = new zzbte(zzbhjVar);
        this.zzc = zzbteVar;
        return zzbteVar;
    }

    @Nullable
    public final zzbht zza() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbta(this, null);
    }

    public final zzbhw zzb() {
        return new zzbtb(this, null);
    }
}
