package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcur implements zzcvy, zzddi, zzdax, zzcwo, zzazd {
    private final zzcwq zza;
    private final zzcym zzb;
    private final zzfca zzc;
    private final ScheduledExecutorService zzd;
    private final Executor zze;
    private ScheduledFuture zzg;
    @Nullable
    private final String zzi;
    private final zzgeh zzf = zzgeh.zze();
    private final AtomicBoolean zzh = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcur(zzcwq zzcwqVar, zzfca zzfcaVar, ScheduledExecutorService scheduledExecutorService, Executor executor, @Nullable String str, zzcym zzcymVar) {
        this.zza = zzcwqVar;
        this.zzc = zzfcaVar;
        this.zzd = scheduledExecutorService;
        this.zze = executor;
        this.zzi = str;
        this.zzb = zzcymVar;
    }

    public static /* synthetic */ void zzh(zzcur zzcurVar) {
        synchronized (zzcurVar) {
            try {
                zzgeh zzgehVar = zzcurVar.zzf;
                if (zzgehVar.isDone()) {
                    return;
                }
                zzgehVar.zzc(Boolean.TRUE);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final boolean zzk() {
        if (this.zzi.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzc() {
        zzfca zzfcaVar = this.zzc;
        if (zzfcaVar.zze != 3) {
            int i10 = zzfcaVar.zzY;
            if (i10 == 0 || i10 == 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlT)).booleanValue() && zzk()) {
                    return;
                }
                this.zza.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final synchronized void zzdq() {
        if (this.zzc.zze == 4) {
            this.zza.zza();
            return;
        }
        zzgeh zzgehVar = this.zzf;
        if (zzgehVar.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzg;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzgehVar.zzc(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    public final void zzdr(zzazc zzazcVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlT)).booleanValue() && zzk() && zzazcVar.zzj && this.zzh.compareAndSet(false, true) && this.zzc.zze != 3) {
            com.google.android.gms.ads.internal.util.zze.zza("Full screen 1px impression occurred");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public final void zzi() {
        zzfca zzfcaVar = this.zzc;
        int i10 = zzfcaVar.zze;
        if (i10 != 3) {
            if (i10 == 4) {
                this.zzb.zza();
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbI)).booleanValue() && zzfcaVar.zzY == 2) {
                int i11 = zzfcaVar.zzq;
                if (i11 == 0) {
                    this.zza.zza();
                    return;
                }
                zzgdn.zzr(this.zzf, new zzcuq(this), this.zze);
                this.zzg = this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcup
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcur.zzh(zzcur.this);
                    }
                }, i11, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final synchronized void zzs(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            zzgeh zzgehVar = this.zzf;
            if (zzgehVar.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.zzg;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            zzgehVar.zzd(new Exception());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzdp() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzdu(zzbwc zzbwcVar, String str, String str2) {
    }
}
