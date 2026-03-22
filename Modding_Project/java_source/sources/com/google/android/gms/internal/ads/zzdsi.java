package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdsi {
    final /* synthetic */ zzdsj zza;
    private final Map zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzdsi(zzdsj zzdsjVar) {
        Objects.requireNonNull(zzdsjVar);
        this.zza = zzdsjVar;
        this.zzb = new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzdsi zza(zzdsi zzdsiVar) {
        zzdsiVar.zzb.putAll(zzdsj.zzc(zzdsiVar.zza));
        return zzdsiVar;
    }

    public final zzdsi zzb(String str, @Nullable String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.zzb.put(str, str2);
        }
        return this;
    }

    public final zzdsi zzc(zzfca zzfcaVar) {
        zzb("aai", zzfcaVar.zzw);
        zzb("request_id", zzfcaVar.zzan);
        zzb("ad_format", zzfca.zza(zzfcaVar.zzb));
        return this;
    }

    public final zzdsi zzd(zzfcd zzfcdVar) {
        zzb("gqi", zzfcdVar.zzb);
        return this;
    }

    public final String zze() {
        return zzdsj.zzb(this.zza).zzb(this.zzb);
    }

    public final void zzi() {
        zzdsj.zzd(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsh
            @Override // java.lang.Runnable
            public final void run() {
                zzdsj.zzb(r0.zza).zze(zzdsi.this.zzb);
            }
        });
    }

    public final void zzj() {
        zzdsj.zzd(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsf
            @Override // java.lang.Runnable
            public final void run() {
                zzdsj.zzb(r0.zza).zzg(zzdsi.this.zzb);
            }
        });
    }

    public final void zzk() {
        zzdsj.zzd(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsg
            @Override // java.lang.Runnable
            public final void run() {
                zzdsj.zzb(r0.zza).zzf(zzdsi.this.zzb);
            }
        });
    }
}
