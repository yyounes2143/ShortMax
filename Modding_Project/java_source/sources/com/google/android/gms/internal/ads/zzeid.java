package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeid implements zzdgn {
    private final Context zza;
    private final zzdpj zzb;
    private final zzfcw zzc;
    private final VersionInfoParcel zzd;
    private final zzfca zze;
    private final com.google.common.util.concurrent.e zzf;
    private final zzcfg zzg;
    private final zzbki zzh;
    private final boolean zzi;
    private final zzecl zzj;
    private final zzdsd zzk;
    private final zzdsj zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeid(Context context, zzdpj zzdpjVar, zzfcw zzfcwVar, VersionInfoParcel versionInfoParcel, zzfca zzfcaVar, com.google.common.util.concurrent.e eVar, zzcfg zzcfgVar, zzbki zzbkiVar, boolean z10, zzecl zzeclVar, zzdsd zzdsdVar, zzdsj zzdsjVar) {
        this.zza = context;
        this.zzb = zzdpjVar;
        this.zzc = zzfcwVar;
        this.zzd = versionInfoParcel;
        this.zze = zzfcaVar;
        this.zzf = eVar;
        this.zzg = zzcfgVar;
        this.zzh = zzbkiVar;
        this.zzi = z10;
        this.zzj = zzeclVar;
        this.zzk = zzdsdVar;
        this.zzl = zzdsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, zzcwl zzcwlVar) {
        zzbki zzbkiVar;
        boolean z11;
        boolean z12;
        float f10;
        zzdoo zzdooVar = (zzdoo) zzgdn.zzq(this.zzf);
        try {
            zzfca zzfcaVar = this.zze;
            final zzcfg zzcfgVar = this.zzg;
            zzecl zzeclVar = null;
            if (zzcfgVar.zzaG()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbb)).booleanValue()) {
                    zzcfgVar = this.zzb.zza(this.zzc.zze, null, null);
                    zzbkx.zzb(zzcfgVar, zzdooVar.zzg());
                    final zzdpn zzdpnVar = new zzdpn();
                    zzdpnVar.zza(this.zza, zzcfgVar.zzF());
                    zzdpi zzl = zzdooVar.zzl();
                    if (this.zzi) {
                        zzbkiVar = this.zzh;
                    } else {
                        zzbkiVar = null;
                    }
                    zzl.zzi(zzcfgVar, true, zzbkiVar, this.zzk.zza());
                    zzcfgVar.zzN().zzC(new zzcgw() { // from class: com.google.android.gms.internal.ads.zzeib
                        @Override // com.google.android.gms.internal.ads.zzcgw
                        public final void zza(boolean z13, int i10, String str, String str2) {
                            zzdpn.this.zzb();
                            zzcfg zzcfgVar2 = zzcfgVar;
                            zzcfgVar2.zzab();
                            zzcfgVar2.zzN().zzs();
                        }
                    });
                    zzcfgVar.zzN().zzK(new zzcgx() { // from class: com.google.android.gms.internal.ads.zzeic
                        @Override // com.google.android.gms.internal.ads.zzcgx
                        public final void zza() {
                            zzcfg.this.zzaa();
                        }
                    });
                    zzfcf zzfcfVar = zzfcaVar.zzs;
                    zzcfgVar.zzae(zzfcfVar.zzb, zzfcfVar.zza, null);
                }
            }
            zzcfg zzcfgVar2 = zzcfgVar;
            zzcfgVar2.zzaq(true);
            boolean z13 = this.zzi;
            if (z13) {
                z11 = this.zzh.zze(false);
            } else {
                z11 = false;
            }
            com.google.android.gms.ads.internal.zzv.zzr();
            boolean zzJ = com.google.android.gms.ads.internal.util.zzs.zzJ(this.zza);
            if (z13 && this.zzh.zzd()) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z13) {
                f10 = this.zzh.zza();
            } else {
                f10 = 0.0f;
            }
            float f11 = f10;
            zzfca zzfcaVar2 = this.zze;
            com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z11, zzJ, z12, f11, -1, z10, zzfcaVar2.zzO, zzfcaVar2.zzP);
            if (zzcwlVar != null) {
                zzcwlVar.zzf();
            }
            com.google.android.gms.ads.internal.zzv.zzj();
            zzdgc zzh = zzdooVar.zzh();
            int i10 = zzfcaVar2.zzQ;
            VersionInfoParcel versionInfoParcel = this.zzd;
            String str = zzfcaVar2.zzB;
            zzfcf zzfcfVar2 = zzfcaVar2.zzs;
            String str2 = zzfcfVar2.zzb;
            String str3 = zzfcfVar2.zza;
            zzfcw zzfcwVar = this.zzc;
            if (zzfcaVar2.zzb()) {
                zzeclVar = this.zzj;
            }
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzh, null, zzcfgVar2, i10, versionInfoParcel, str, zzlVar, str2, str3, zzfcwVar.zzf, zzcwlVar, zzeclVar, zzcfgVar2.zzr()), true, this.zzl);
        } catch (zzcfs e10) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }
}
