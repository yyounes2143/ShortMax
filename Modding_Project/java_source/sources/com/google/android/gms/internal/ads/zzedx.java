package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzedx implements zzedm {
    private final zzcog zza;
    private final Context zzb;
    private final zzdpj zzc;
    private final zzfcw zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbki zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjo)).booleanValue();
    private final zzecl zzi;
    private final zzdsd zzj;
    private final zzdsj zzk;

    public zzedx(zzcog zzcogVar, Context context, Executor executor, zzdpj zzdpjVar, zzfcw zzfcwVar, VersionInfoParcel versionInfoParcel, zzbki zzbkiVar, zzecl zzeclVar, zzdsd zzdsdVar, zzdsj zzdsjVar) {
        this.zzb = context;
        this.zza = zzcogVar;
        this.zze = executor;
        this.zzc = zzdpjVar;
        this.zzd = zzfcwVar;
        this.zzf = versionInfoParcel;
        this.zzg = zzbkiVar;
        this.zzi = zzeclVar;
        this.zzj = zzdsdVar;
        this.zzk = zzdsjVar;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzc(zzedx zzedxVar, final zzfca zzfcaVar, zzfcn zzfcnVar, zzdpn zzdpnVar, Object obj) {
        final zzedx zzedxVar2;
        zzbki zzbkiVar;
        zzbcv zzbcvVar = zzbde.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
            zzedxVar.zzj.zza().putLong(zzdrr.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdpj zzdpjVar = zzedxVar.zzc;
        zzfcw zzfcwVar = zzedxVar.zzd;
        final zzcfg zza = zzdpjVar.zza(zzfcwVar.zze, zzfcaVar, zzfcnVar.zzb.zzb);
        zza.zzac(zzfcaVar.zzW);
        zzdpnVar.zza(zzedxVar.zzb, zza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
            zzedxVar.zzj.zza().putLong(zzdrr.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzcak zzcakVar = new zzcak();
        zzcog zzcogVar = zzedxVar.zza;
        zzcrq zzcrqVar = new zzcrq(zzfcnVar, zzfcaVar, null);
        VersionInfoParcel versionInfoParcel = zzedxVar.zzf;
        boolean z10 = zzedxVar.zzh;
        zzbki zzbkiVar2 = zzedxVar.zzg;
        final zzcod zza2 = zzcogVar.zza(zzcrqVar, new zzdff(new zzedz(versionInfoParcel, zzcakVar, zzfcaVar, zza, zzfcwVar, z10, zzbkiVar2, zzedxVar.zzi, zzedxVar.zzk), zza), new zzcoe(zzfcaVar.zzaa));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
            zzedxVar2 = zzedxVar;
            zzedxVar2.zzj.zza().putLong(zzdrr.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        } else {
            zzedxVar2 = zzedxVar;
        }
        zzdpi zzh = zza2.zzh();
        if (true != z10) {
            zzbkiVar = null;
        } else {
            zzbkiVar = zzbkiVar2;
        }
        zzdsd zzdsdVar = zzedxVar2.zzj;
        zzh.zzi(zza, false, zzbkiVar, zzdsdVar.zza());
        zzcakVar.zzc(zza2);
        zza2.zzc().zzo(new zzcws() { // from class: com.google.android.gms.internal.ads.zzedv
            @Override // com.google.android.gms.internal.ads.zzcws
            public final void zzt() {
                zzcfg zzcfgVar = zzcfg.this;
                if (zzcfgVar.zzN() != null) {
                    zzcfgVar.zzN().zzs();
                }
            }
        }, zzcaf.zzg);
        zzfcf zzfcfVar = zzfcaVar.zzs;
        String str = zzfcfVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfC)).booleanValue() && zza2.zzi().zze(true)) {
            str = zzcgr.zzb(str, zzcgr.zza(zzfcaVar));
        }
        zza2.zzh();
        return zzgdn.zzm(zzdpi.zzj(zza, zzfcfVar.zzb, str, zzdsdVar.zza(), zzcogVar.zzg()), new zzfve(zzedxVar2) { // from class: com.google.android.gms.internal.ads.zzedw
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj2) {
                zzcfg zzcfgVar = zza;
                if (zzfcaVar.zzM) {
                    zzcfgVar.zzah();
                }
                zzcod zzcodVar = zza2;
                zzcfgVar.zzab();
                zzcfgVar.onPause();
                return zzcodVar.zza();
            }
        }, zzedxVar2.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final com.google.common.util.concurrent.e zza(final zzfcn zzfcnVar, final zzfca zzfcaVar) {
        final zzdpn zzdpnVar = new zzdpn();
        com.google.common.util.concurrent.e zzh = zzgdn.zzh(null);
        zzgcu zzgcuVar = new zzgcu() { // from class: com.google.android.gms.internal.ads.zzedt
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzedx.zzc(zzedx.this, zzfcaVar, zzfcnVar, zzdpnVar, obj);
            }
        };
        Executor executor = this.zze;
        com.google.common.util.concurrent.e zzn = zzgdn.zzn(zzh, zzgcuVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedu
            @Override // java.lang.Runnable
            public final void run() {
                zzdpn.this.zzb();
            }
        }, executor);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final boolean zzb(zzfcn zzfcnVar, zzfca zzfcaVar) {
        zzfcf zzfcfVar = zzfcaVar.zzs;
        if (zzfcfVar != null && zzfcfVar.zza != null) {
            return true;
        }
        return false;
    }
}
