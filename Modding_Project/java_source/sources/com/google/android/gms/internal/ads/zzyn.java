package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzyn extends zzyp implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;

    public zzyn(int i10, zzbm zzbmVar, int i11, zzyi zzyiVar, int i12, @Nullable String str, @Nullable String str2) {
        super(i10, zzbmVar, i11);
        boolean z10;
        boolean z11;
        zzfyq zzfyqVar;
        int i13;
        int i14;
        boolean z12;
        boolean z13;
        boolean z14;
        int i15 = 0;
        this.zzf = zzmb.zza(i12, false);
        int i16 = this.zzd.zze;
        int i17 = zzyiVar.zzy;
        if (1 != (i16 & 1)) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.zzg = z10;
        if ((i16 & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.zzh = z11;
        if (str2 != null) {
            zzfyqVar = zzfyq.zzo(str2);
        } else if (zzyiVar.zzv.isEmpty()) {
            zzfyqVar = zzfyq.zzo("");
        } else {
            zzfyqVar = zzyiVar.zzv;
        }
        int i18 = 0;
        while (true) {
            if (i18 < zzfyqVar.size()) {
                i13 = zzyu.zzc(this.zzd, (String) zzfyqVar.get(i18), false);
                if (i13 > 0) {
                    break;
                }
                i18++;
            } else {
                i18 = Integer.MAX_VALUE;
                i13 = 0;
                break;
            }
        }
        this.zzi = i18;
        this.zzj = i13;
        if (str2 != null) {
            i14 = 1088;
        } else {
            i14 = 0;
        }
        int zzb = zzyu.zzb(this.zzd.zzf, i14);
        this.zzk = zzb;
        if ((1088 & this.zzd.zzf) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        this.zzm = z12;
        if (zzyu.zzh(str) == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        int zzc = zzyu.zzc(this.zzd, str, z13);
        this.zzl = zzc;
        if (i13 > 0 || ((zzyiVar.zzv.isEmpty() && zzb > 0) || this.zzg || (this.zzh && zzc > 0))) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (zzmb.zza(i12, zzyiVar.zzR) && z14) {
            i15 = 1;
        }
        this.zze = i15;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzyn zzynVar) {
        zzgab zza;
        zzfyf zzc = zzfyf.zzj().zzd(this.zzf, zzynVar.zzf).zzc(Integer.valueOf(this.zzi), Integer.valueOf(zzynVar.zzi), zzgab.zzc().zza());
        int i10 = this.zzj;
        zzfyf zzb = zzc.zzb(i10, zzynVar.zzj);
        int i11 = this.zzk;
        zzfyf zzd = zzb.zzb(i11, zzynVar.zzk).zzd(this.zzg, zzynVar.zzg);
        Boolean valueOf = Boolean.valueOf(this.zzh);
        Boolean valueOf2 = Boolean.valueOf(zzynVar.zzh);
        if (i10 == 0) {
            zza = zzgab.zzc();
        } else {
            zza = zzgab.zzc().zza();
        }
        zzfyf zzb2 = zzd.zzc(valueOf, valueOf2, zza).zzb(this.zzl, zzynVar.zzl);
        if (i11 == 0) {
            zzb2 = zzb2.zze(this.zzm, zzynVar.zzm);
        }
        return zzb2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* bridge */ /* synthetic */ boolean zzc(zzyp zzypVar) {
        zzyn zzynVar = (zzyn) zzypVar;
        return false;
    }
}
