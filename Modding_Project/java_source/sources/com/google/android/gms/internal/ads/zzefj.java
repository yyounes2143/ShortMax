package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzefj implements zzdgn {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final com.google.common.util.concurrent.e zzc;
    private final zzfca zzd;
    private final zzcfg zze;
    private final zzfcw zzf;
    private final zzbki zzg;
    private final boolean zzh;
    private final zzecl zzi;
    private final zzdsj zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzefj(Context context, VersionInfoParcel versionInfoParcel, com.google.common.util.concurrent.e eVar, zzfca zzfcaVar, zzcfg zzcfgVar, zzfcw zzfcwVar, boolean z10, zzbki zzbkiVar, zzecl zzeclVar, zzdsj zzdsjVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = eVar;
        this.zzd = zzfcaVar;
        this.zze = zzcfgVar;
        this.zzf = zzfcwVar;
        this.zzg = zzbkiVar;
        this.zzh = z10;
        this.zzi = zzeclVar;
        this.zzj = zzdsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, zzcwl zzcwlVar) {
        boolean z11;
        boolean z12;
        float f10;
        zzecl zzeclVar;
        zzdfc zzdfcVar = (zzdfc) zzgdn.zzq(this.zzc);
        zzcfg zzcfgVar = this.zze;
        zzcfgVar.zzaq(true);
        boolean z13 = this.zzh;
        if (z13) {
            z11 = this.zzg.zze(false);
        } else {
            z11 = false;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        boolean zzJ = com.google.android.gms.ads.internal.util.zzs.zzJ(this.zza);
        if (z13 && this.zzg.zzd()) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z13) {
            f10 = this.zzg.zza();
        } else {
            f10 = 0.0f;
        }
        float f11 = f10;
        zzfca zzfcaVar = this.zzd;
        com.google.android.gms.ads.internal.zzl zzlVar = new com.google.android.gms.ads.internal.zzl(z11, zzJ, z12, f11, -1, z10, zzfcaVar.zzO, false);
        if (zzcwlVar != null) {
            zzcwlVar.zzf();
        }
        com.google.android.gms.ads.internal.zzv.zzj();
        zzdgc zzh = zzdfcVar.zzh();
        int i10 = zzfcaVar.zzQ;
        VersionInfoParcel versionInfoParcel = this.zzb;
        String str = zzfcaVar.zzB;
        zzfcf zzfcfVar = zzfcaVar.zzs;
        String str2 = zzfcfVar.zzb;
        String str3 = zzfcfVar.zza;
        zzfcw zzfcwVar = this.zzf;
        if (zzfcaVar.zzb()) {
            zzeclVar = this.zzi;
        } else {
            zzeclVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(null, zzh, null, zzcfgVar, i10, versionInfoParcel, str, zzlVar, str2, str3, zzfcwVar.zzf, zzcwlVar, zzeclVar, zzcfgVar.zzr()), true, this.zzj);
    }
}
