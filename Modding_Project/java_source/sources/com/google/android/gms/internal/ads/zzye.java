package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzye extends zzyp implements Comparable {
    private final int zze;
    private final boolean zzf;
    @Nullable
    private final String zzg;
    private final zzyi zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final boolean zzw;

    /* JADX WARN: Removed duplicated region for block: B:115:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x012e A[EDGE_INSN: B:116:0x012e->B:82:0x012e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ee A[LOOP:1: B:62:0x00eb->B:64:0x00ee, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzye(int r8, com.google.android.gms.internal.ads.zzbm r9, int r10, com.google.android.gms.internal.ads.zzyi r11, int r12, boolean r13, com.google.android.gms.internal.ads.zzfvq r14, int r15) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzye.<init>(int, com.google.android.gms.internal.ads.zzbm, int, com.google.android.gms.internal.ads.zzyi, int, boolean, com.google.android.gms.internal.ads.zzfvq, int):void");
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzye zzyeVar) {
        zzgab zzgabVar;
        zzgab zza;
        boolean z10 = this.zzf;
        if (!z10 || !this.zzi) {
            zzgabVar = zzyu.zzc;
            zza = zzgabVar.zza();
        } else {
            zza = zzyu.zzc;
        }
        zzfyf zzc = zzfyf.zzj().zzd(this.zzi, zzyeVar.zzi).zzc(Integer.valueOf(this.zzk), Integer.valueOf(zzyeVar.zzk), zzgab.zzc().zza()).zzb(this.zzj, zzyeVar.zzj).zzb(this.zzl, zzyeVar.zzl).zzd(this.zzp, zzyeVar.zzp).zzd(this.zzm, zzyeVar.zzm).zzc(Integer.valueOf(this.zzn), Integer.valueOf(zzyeVar.zzn), zzgab.zzc().zza()).zzb(this.zzo, zzyeVar.zzo).zzd(z10, zzyeVar.zzf).zzc(Integer.valueOf(this.zzt), Integer.valueOf(zzyeVar.zzt), zzgab.zzc().zza());
        boolean z11 = this.zzh.zzB;
        zzfyf zzc2 = zzc.zzd(this.zzu, zzyeVar.zzu).zzd(this.zzv, zzyeVar.zzv).zzd(this.zzw, zzyeVar.zzw).zzc(Integer.valueOf(this.zzq), Integer.valueOf(zzyeVar.zzq), zza).zzc(Integer.valueOf(this.zzr), Integer.valueOf(zzyeVar.zzr), zza);
        if (Objects.equals(this.zzg, zzyeVar.zzg)) {
            zzc2 = zzc2.zzc(Integer.valueOf(this.zzs), Integer.valueOf(zzyeVar.zzs), zza);
        }
        return zzc2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyp
    public final /* bridge */ /* synthetic */ boolean zzc(zzyp zzypVar) {
        String str;
        int i10;
        zzye zzyeVar = (zzye) zzypVar;
        boolean z10 = this.zzh.zzN;
        zzz zzzVar = this.zzd;
        int i11 = zzzVar.zzG;
        if (i11 != -1) {
            zzz zzzVar2 = zzyeVar.zzd;
            if (i11 == zzzVar2.zzG && (str = zzzVar.zzo) != null && TextUtils.equals(str, zzzVar2.zzo) && (i10 = zzzVar.zzH) != -1 && i10 == zzzVar2.zzH && this.zzu == zzyeVar.zzu && this.zzv == zzyeVar.zzv) {
                return true;
            }
            return false;
        }
        return false;
    }
}
