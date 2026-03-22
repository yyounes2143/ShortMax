package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzqg {
    @Nullable
    private final Handler zza;
    @Nullable
    private final zzqh zzb;

    public zzqg(@Nullable Handler handler, @Nullable zzqh zzqhVar) {
        this.zza = zzqhVar == null ? null : handler;
        this.zzb = zzqhVar;
    }

    public static /* synthetic */ void zza(zzqg zzqgVar, zzid zzidVar) {
        String str = zzex.zza;
        zzqgVar.zzb.zze(zzidVar);
    }

    public static /* synthetic */ void zzb(zzqg zzqgVar, String str) {
        String str2 = zzex.zza;
        zzqgVar.zzb.zzc(str);
    }

    public static /* synthetic */ void zzc(zzqg zzqgVar, long j10) {
        String str = zzex.zza;
        zzqgVar.zzb.zzg(j10);
    }

    public static /* synthetic */ void zzd(zzqg zzqgVar, zzqi zzqiVar) {
        String str = zzex.zza;
        zzqgVar.zzb.zzk(zzqiVar);
    }

    public static /* synthetic */ void zze(zzqg zzqgVar, int i10, long j10, long j11) {
        String str = zzex.zza;
        zzqgVar.zzb.zzl(i10, j10, j11);
    }

    public static /* synthetic */ void zzf(zzqg zzqgVar, Exception exc) {
        String str = zzex.zza;
        zzqgVar.zzb.zzi(exc);
    }

    public static /* synthetic */ void zzg(zzqg zzqgVar, int i10) {
        String str = zzex.zza;
        zzqgVar.zzb.zzh(i10);
    }

    public static /* synthetic */ void zzh(zzqg zzqgVar, Exception exc) {
        String str = zzex.zza;
        zzqgVar.zzb.zza(exc);
    }

    public static /* synthetic */ void zzi(zzqg zzqgVar, zzz zzzVar, zzie zzieVar) {
        String str = zzex.zza;
        zzqgVar.zzb.zzf(zzzVar, zzieVar);
    }

    public static /* synthetic */ void zzj(zzqg zzqgVar, boolean z10) {
        String str = zzex.zza;
        zzqgVar.zzb.zzo(z10);
    }

    public static /* synthetic */ void zzk(zzqg zzqgVar, zzqi zzqiVar) {
        String str = zzex.zza;
        zzqgVar.zzb.zzj(zzqiVar);
    }

    public static /* synthetic */ void zzl(zzqg zzqgVar, String str, long j10, long j11) {
        String str2 = zzex.zza;
        zzqgVar.zzb.zzb(str, j10, j11);
    }

    public static /* synthetic */ void zzm(zzqg zzqgVar, zzid zzidVar) {
        zzidVar.zza();
        String str = zzex.zza;
        zzqgVar.zzb.zzd(zzidVar);
    }

    public final void zzn(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqa
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzh(zzqg.this, exc);
                }
            });
        }
    }

    public final void zzo(final int i10) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpu
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzg(zzqg.this, i10);
                }
            });
        }
    }

    public final void zzp(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqb
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzf(zzqg.this, exc);
                }
            });
        }
    }

    public final void zzq(final zzqi zzqiVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpy
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzk(zzqg.this, zzqiVar);
                }
            });
        }
    }

    public final void zzr(final zzqi zzqiVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpz
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzd(zzqg.this, zzqiVar);
                }
            });
        }
    }

    public final void zzs(final String str, final long j10, final long j11) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqe
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzl(zzqg.this, str, j10, j11);
                }
            });
        }
    }

    public final void zzt(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqf
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzb(zzqg.this, str);
                }
            });
        }
    }

    public final void zzu(final zzid zzidVar) {
        zzidVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpv
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzm(zzqg.this, zzidVar);
                }
            });
        }
    }

    public final void zzv(final zzid zzidVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpt
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zza(zzqg.this, zzidVar);
                }
            });
        }
    }

    public final void zzw(final zzz zzzVar, @Nullable final zzie zzieVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqc
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzi(zzqg.this, zzzVar, zzieVar);
                }
            });
        }
    }

    public final void zzx(final long j10) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpw
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzc(zzqg.this, j10);
                }
            });
        }
    }

    public final void zzy(final boolean z10) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqd
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zzj(zzqg.this, z10);
                }
            });
        }
    }

    public final void zzz(final int i10, final long j10, final long j11) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpx
                @Override // java.lang.Runnable
                public final void run() {
                    zzqg.zze(zzqg.this, i10, j10, j11);
                }
            });
        }
    }
}
