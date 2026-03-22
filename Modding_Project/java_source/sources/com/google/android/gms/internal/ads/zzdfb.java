package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdfb extends zzcra {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzddh zze;
    private final zzdgn zzf;
    private final zzcrv zzg;
    private final zzfot zzh;
    private final zzcwl zzi;
    private final zzbzw zzj;
    private boolean zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdfb(zzcqz zzcqzVar, Context context, zzcfg zzcfgVar, zzddh zzddhVar, zzdgn zzdgnVar, zzcrv zzcrvVar, zzfot zzfotVar, zzcwl zzcwlVar, zzbzw zzbzwVar) {
        super(zzcqzVar);
        this.zzk = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcfgVar);
        this.zze = zzddhVar;
        this.zzf = zzdgnVar;
        this.zzg = zzcrvVar;
        this.zzh = zzfotVar;
        this.zzi = zzcwlVar;
        this.zzj = zzbzwVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcfg zzcfgVar = (zzcfg) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgU)).booleanValue()) {
                if (!this.zzk && zzcfgVar != null) {
                    zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdfa
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcfg.this.destroy();
                        }
                    });
                }
            } else if (zzcfgVar != null) {
                zzcfgVar.destroy();
            }
            super.finalize();
        } catch (Throwable th2) {
            super.finalize();
            throw th2;
        }
    }

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.content.Context] */
    public final boolean zzc(boolean z10, Activity activity) {
        zzfca zzD;
        zzddh zzddhVar = this.zze;
        zzddhVar.zzb();
        com.google.android.gms.ads.internal.zzv.zzr();
        zzdgn zzdgnVar = this.zzf;
        if (!com.google.android.gms.ads.internal.util.zzs.zzO(zzdgnVar.zza())) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaQ)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzr();
                if (com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies");
                    this.zzi.zzd();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaR)).booleanValue()) {
                        this.zzh.zza(this.zza.zzb.zzb.zzb);
                    }
                    return false;
                }
            }
        }
        zzcfg zzcfgVar = (zzcfg) this.zzd.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmp)).booleanValue() && zzcfgVar != null && (zzD = zzcfgVar.zzD()) != null && zzD.zzar && zzD.zzas != this.zzj.zzb()) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The interstitial consent form has been shown.");
            this.zzi.zzc(zzfdx.zzd(12, "The consent form has already been shown.", null));
        } else {
            if (this.zzk) {
                int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("The interstitial ad has been shown.");
                this.zzi.zzc(zzfdx.zzd(10, null, null));
            }
            Activity activity2 = activity;
            if (!this.zzk) {
                if (activity == null) {
                    activity2 = this.zzc;
                }
                try {
                    zzdgnVar.zzb(z10, activity2, this.zzi);
                    zzddhVar.zza();
                    this.zzk = true;
                    return true;
                } catch (zzdgm e10) {
                    this.zzi.zze(e10);
                }
            }
        }
        return false;
    }
}
