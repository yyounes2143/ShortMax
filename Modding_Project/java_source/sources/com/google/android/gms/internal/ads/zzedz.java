package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzedz implements zzdgn {
    private final VersionInfoParcel zza;
    private final com.google.common.util.concurrent.e zzb;
    private final zzfca zzc;
    private final zzcfg zzd;
    private final zzfcw zze;
    private final zzbki zzf;
    private final boolean zzg;
    private final zzecl zzh;
    private final zzdsj zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzedz(VersionInfoParcel versionInfoParcel, com.google.common.util.concurrent.e eVar, zzfca zzfcaVar, zzcfg zzcfgVar, zzfcw zzfcwVar, boolean z10, zzbki zzbkiVar, zzecl zzeclVar, zzdsj zzdsjVar) {
        this.zza = versionInfoParcel;
        this.zzb = eVar;
        this.zzc = zzfcaVar;
        this.zzd = zzcfgVar;
        this.zze = zzfcwVar;
        this.zzg = z10;
        this.zzf = zzbkiVar;
        this.zzh = zzeclVar;
        this.zzi = zzdsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, zzcwl zzcwlVar) {
        boolean z11;
        boolean z12;
        float f10;
        zzecl zzeclVar;
        zzcod zzcodVar = (zzcod) zzgdn.zzq(this.zzb);
        zzcfg zzcfgVar = this.zzd;
        zzcfgVar.zzaq(true);
        boolean z13 = this.zzg;
        if (z13) {
            z11 = this.zzf.zze(true);
        } else {
            z11 = true;
        }
        if (z13 && this.zzf.zzd()) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z13) {
            f10 = this.zzf.zza();
        } else {
            f10 = 0.0f;
        }
        float f11 = f10;
        zzfca zzfcaVar = this.zzc;
        com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z11, true, z12, f11, -1, z10, zzfcaVar.zzO, false);
        if (zzcwlVar != null) {
            zzcwlVar.zzf();
        }
        com.google.android.gms.ads.internal.zzv.zzj();
        zzdgc zzg = zzcodVar.zzg();
        int i10 = zzfcaVar.zzQ;
        if (i10 == -1) {
            com.google.android.gms.ads.internal.client.zzx zzxVar = this.zze.zzj;
            if (zzxVar != null) {
                int i11 = zzxVar.zza;
                if (i11 == 1) {
                    i10 = 7;
                } else if (i11 == 2) {
                    i10 = 6;
                }
            }
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error setting app open orientation; no targeting orientation available.");
        }
        int i13 = i10;
        VersionInfoParcel versionInfoParcel = this.zza;
        String str = zzfcaVar.zzB;
        zzfcf zzfcfVar = zzfcaVar.zzs;
        String str2 = zzfcfVar.zzb;
        String str3 = zzfcfVar.zza;
        zzfcw zzfcwVar = this.zze;
        if (zzfcaVar.zzb()) {
            zzeclVar = this.zzh;
        } else {
            zzeclVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzg, null, zzcfgVar, i13, versionInfoParcel, str, zzlVar, str2, str3, zzfcwVar.zzf, zzcwlVar, zzeclVar, zzcfgVar.zzr()), true, this.zzi);
    }
}
