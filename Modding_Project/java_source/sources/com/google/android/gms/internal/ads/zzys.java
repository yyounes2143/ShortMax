package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzys extends zzyp {
    private final boolean zze;
    private final zzyi zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final boolean zzs;
    private final boolean zzt;
    private final int zzu;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x00fb A[EDGE_INSN: B:290:0x00fb->B:225:0x00fb ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzys(int r5, com.google.android.gms.internal.ads.zzbm r6, int r7, com.google.android.gms.internal.ads.zzyi r8, int r9, @androidx.annotation.Nullable java.lang.String r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzys.<init>(int, com.google.android.gms.internal.ads.zzbm, int, com.google.android.gms.internal.ads.zzyi, int, java.lang.String, int, boolean):void");
    }

    public static /* synthetic */ int zza(zzys zzysVar, zzys zzysVar2) {
        zzgab zzgabVar;
        zzgab zza;
        if (!zzysVar.zze || !zzysVar.zzh) {
            zzgabVar = zzyu.zzc;
            zza = zzgabVar.zza();
        } else {
            zza = zzyu.zzc;
        }
        zzfyf zzj = zzfyf.zzj();
        boolean z10 = zzysVar.zzf.zzB;
        return zzj.zzc(Integer.valueOf(zzysVar.zzk), Integer.valueOf(zzysVar2.zzk), zza).zzc(Integer.valueOf(zzysVar.zzj), Integer.valueOf(zzysVar2.zzj), zza).zza();
    }

    public static /* synthetic */ int zzd(zzys zzysVar, zzys zzysVar2) {
        zzfyf zzc = zzfyf.zzj().zzd(zzysVar.zzh, zzysVar2.zzh).zzc(Integer.valueOf(zzysVar.zzm), Integer.valueOf(zzysVar2.zzm), zzgab.zzc().zza()).zzb(zzysVar.zzn, zzysVar2.zzn).zzb(zzysVar.zzo, zzysVar2.zzo).zzd(zzysVar.zzp, zzysVar2.zzp).zzb(zzysVar.zzq, zzysVar2.zzq).zzd(zzysVar.zzi, zzysVar2.zzi).zzd(zzysVar.zze, zzysVar2.zze).zzd(zzysVar.zzg, zzysVar2.zzg).zzc(Integer.valueOf(zzysVar.zzl), Integer.valueOf(zzysVar2.zzl), zzgab.zzc().zza());
        boolean z10 = zzysVar.zzs;
        zzfyf zzd = zzc.zzd(z10, zzysVar2.zzs);
        boolean z11 = zzysVar.zzt;
        zzfyf zzd2 = zzd.zzd(z11, zzysVar2.zzt);
        if (z10 && z11) {
            zzd2 = zzd2.zzb(zzysVar.zzu, zzysVar2.zzu);
        }
        return zzd2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final int zzb() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* bridge */ /* synthetic */ boolean zzc(zzyp zzypVar) {
        zzys zzysVar = (zzys) zzypVar;
        if (Objects.equals(this.zzd.zzo, zzysVar.zzd.zzo)) {
            boolean z10 = this.zzf.zzJ;
            if (this.zzs == zzysVar.zzs && this.zzt == zzysVar.zzt) {
                return true;
            }
            return false;
        }
        return false;
    }
}
