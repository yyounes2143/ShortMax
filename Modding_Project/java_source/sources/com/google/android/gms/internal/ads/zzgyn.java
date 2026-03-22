package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgyn implements zzhcm {
    private final zzgym zza;

    private zzgyn(zzgym zzgymVar) {
        zzgzu.zzc(zzgymVar, "output");
        this.zza = zzgymVar;
        zzgymVar.zze = this;
    }

    public static zzgyn zza(zzgym zzgymVar) {
        zzgyn zzgynVar = zzgymVar.zze;
        if (zzgynVar != null) {
            return zzgynVar;
        }
        return new zzgyn(zzgymVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzA(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzhahVar.size(); i13++) {
                    zzhahVar.zza(i13);
                    i12 += 8;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzhahVar.size()) {
                    zzgymVar.zzk(zzhahVar.zza(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzhahVar.size()) {
                this.zza.zzj(i10, zzhahVar.zza(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzk(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzj(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzB(int i10, int i11) throws IOException {
        this.zza.zzt(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzC(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgziVar.size(); i13++) {
                    int zzd = zzgziVar.zzd(i13);
                    i12 += zzgym.zzD((zzd >> 31) ^ (zzd + zzd));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgziVar.size()) {
                    int zzd2 = zzgziVar.zzd(i11);
                    zzgymVar.zzu((zzd2 >> 31) ^ (zzd2 + zzd2));
                    i11++;
                }
                return;
            }
            while (i11 < zzgziVar.size()) {
                zzgym zzgymVar2 = this.zza;
                int zzd3 = zzgziVar.zzd(i11);
                zzgymVar2.zzt(i10, (zzd3 >> 31) ^ (zzd3 + zzd3));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar3 = this.zza;
            zzgymVar3.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                int intValue = ((Integer) list.get(i15)).intValue();
                i14 += zzgym.zzD((intValue >> 31) ^ (intValue + intValue));
            }
            zzgymVar3.zzu(i14);
            while (i11 < list.size()) {
                int intValue2 = ((Integer) list.get(i11)).intValue();
                zzgymVar3.zzu((intValue2 >> 31) ^ (intValue2 + intValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                zzgym zzgymVar4 = this.zza;
                int intValue3 = ((Integer) list.get(i11)).intValue();
                zzgymVar4.zzt(i10, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzD(int i10, long j10) throws IOException {
        this.zza.zzv(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzE(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzhahVar.size(); i13++) {
                    long zza = zzhahVar.zza(i13);
                    i12 += zzgym.zzE((zza >> 63) ^ (zza + zza));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzhahVar.size()) {
                    long zza2 = zzhahVar.zza(i11);
                    zzgymVar.zzw((zza2 >> 63) ^ (zza2 + zza2));
                    i11++;
                }
                return;
            }
            while (i11 < zzhahVar.size()) {
                zzgym zzgymVar2 = this.zza;
                long zza3 = zzhahVar.zza(i11);
                zzgymVar2.zzv(i10, (zza3 >> 63) ^ (zza3 + zza3));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar3 = this.zza;
            zzgymVar3.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                long longValue = ((Long) list.get(i15)).longValue();
                i14 += zzgym.zzE((longValue >> 63) ^ (longValue + longValue));
            }
            zzgymVar3.zzu(i14);
            while (i11 < list.size()) {
                long longValue2 = ((Long) list.get(i11)).longValue();
                zzgymVar3.zzw((longValue2 >> 63) ^ (longValue2 + longValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                zzgym zzgymVar4 = this.zza;
                long longValue3 = ((Long) list.get(i11)).longValue();
                zzgymVar4.zzv(i10, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    @Deprecated
    public final void zzF(int i10) throws IOException {
        this.zza.zzs(i10, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzG(int i10, String str) throws IOException {
        this.zza.zzq(i10, str);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzH(int i10, List list) throws IOException {
        int i11 = 0;
        if (list instanceof zzhae) {
            zzhae zzhaeVar = (zzhae) list;
            while (i11 < list.size()) {
                Object zzc = zzhaeVar.zzc();
                if (zzc instanceof String) {
                    this.zza.zzq(i10, (String) zzc);
                } else {
                    this.zza.zzN(i10, (zzgxz) zzc);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zzq(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzI(int i10, int i11) throws IOException {
        this.zza.zzt(i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzJ(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgziVar.size(); i13++) {
                    i12 += zzgym.zzD(zzgziVar.zzd(i13));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgziVar.size()) {
                    zzgymVar.zzu(zzgziVar.zzd(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgziVar.size()) {
                this.zza.zzt(i10, zzgziVar.zzd(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzgym.zzD(((Integer) list.get(i15)).intValue());
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzu(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzt(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzK(int i10, long j10) throws IOException {
        this.zza.zzv(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzL(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzhahVar.size(); i13++) {
                    i12 += zzgym.zzE(zzhahVar.zza(i13));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzhahVar.size()) {
                    zzgymVar.zzw(zzhahVar.zza(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzhahVar.size()) {
                this.zza.zzv(i10, zzhahVar.zza(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzgym.zzE(((Long) list.get(i15)).longValue());
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzw(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzv(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzb(int i10, boolean z10) throws IOException {
        this.zza.zzM(i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzc(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgxp) {
            zzgxp zzgxpVar = (zzgxp) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgxpVar.size(); i13++) {
                    zzgxpVar.zzh(i13);
                    i12++;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgxpVar.size()) {
                    zzgymVar.zzL(zzgxpVar.zzh(i11) ? (byte) 1 : (byte) 0);
                    i11++;
                }
                return;
            }
            while (i11 < zzgxpVar.size()) {
                this.zza.zzM(i10, zzgxpVar.zzh(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Boolean) list.get(i15)).booleanValue();
                i14++;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzL(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzM(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzd(int i10, zzgxz zzgxzVar) throws IOException {
        this.zza.zzN(i10, zzgxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zze(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zzN(i10, (zzgxz) list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzf(int i10, double d10) throws IOException {
        this.zza.zzj(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzg(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgyo) {
            zzgyo zzgyoVar = (zzgyo) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgyoVar.size(); i13++) {
                    zzgyoVar.zzd(i13);
                    i12 += 8;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgyoVar.size()) {
                    zzgymVar.zzk(Double.doubleToRawLongBits(zzgyoVar.zzd(i11)));
                    i11++;
                }
                return;
            }
            while (i11 < zzgyoVar.size()) {
                this.zza.zzj(i10, Double.doubleToRawLongBits(zzgyoVar.zzd(i11)));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Double) list.get(i15)).doubleValue();
                i14 += 8;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzk(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzj(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    @Deprecated
    public final void zzh(int i10) throws IOException {
        this.zza.zzs(i10, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzi(int i10, int i11) throws IOException {
        this.zza.zzl(i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzj(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgziVar.size(); i13++) {
                    i12 += zzgym.zzE(zzgziVar.zzd(i13));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgziVar.size()) {
                    zzgymVar.zzm(zzgziVar.zzd(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgziVar.size()) {
                this.zza.zzl(i10, zzgziVar.zzd(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzgym.zzE(((Integer) list.get(i15)).intValue());
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzm(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzl(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzk(int i10, int i11) throws IOException {
        this.zza.zzh(i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzl(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgziVar.size(); i13++) {
                    zzgziVar.zzd(i13);
                    i12 += 4;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgziVar.size()) {
                    zzgymVar.zzi(zzgziVar.zzd(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgziVar.size()) {
                this.zza.zzh(i10, zzgziVar.zzd(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzi(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzh(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzm(int i10, long j10) throws IOException {
        this.zza.zzj(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzn(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzhahVar.size(); i13++) {
                    zzhahVar.zza(i13);
                    i12 += 8;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzhahVar.size()) {
                    zzgymVar.zzk(zzhahVar.zza(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzhahVar.size()) {
                this.zza.zzj(i10, zzhahVar.zza(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzk(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzj(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzo(int i10, float f10) throws IOException {
        this.zza.zzh(i10, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzp(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgyy) {
            zzgyy zzgyyVar = (zzgyy) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgyyVar.size(); i13++) {
                    zzgyyVar.zzd(i13);
                    i12 += 4;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgyyVar.size()) {
                    zzgymVar.zzi(Float.floatToRawIntBits(zzgyyVar.zzd(i11)));
                    i11++;
                }
                return;
            }
            while (i11 < zzgyyVar.size()) {
                this.zza.zzh(i10, Float.floatToRawIntBits(zzgyyVar.zzd(i11)));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Float) list.get(i15)).floatValue();
                i14 += 4;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzi(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzh(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzq(int i10, Object obj, zzhbl zzhblVar) throws IOException {
        zzgym zzgymVar = this.zza;
        zzgymVar.zzs(i10, 3);
        zzhblVar.zzj((zzhas) obj, zzgymVar.zze);
        zzgymVar.zzs(i10, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzr(int i10, int i11) throws IOException {
        this.zza.zzl(i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzs(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgziVar.size(); i13++) {
                    i12 += zzgym.zzE(zzgziVar.zzd(i13));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgziVar.size()) {
                    zzgymVar.zzm(zzgziVar.zzd(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgziVar.size()) {
                this.zza.zzl(i10, zzgziVar.zzd(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzgym.zzE(((Integer) list.get(i15)).intValue());
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzm(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzl(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzt(int i10, long j10) throws IOException {
        this.zza.zzv(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzu(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzhahVar.size(); i13++) {
                    i12 += zzgym.zzE(zzhahVar.zza(i13));
                }
                zzgymVar.zzu(i12);
                while (i11 < zzhahVar.size()) {
                    zzgymVar.zzw(zzhahVar.zza(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzhahVar.size()) {
                this.zza.zzv(i10, zzhahVar.zza(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzgym.zzE(((Long) list.get(i15)).longValue());
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzw(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzv(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzv(int i10, Object obj, zzhbl zzhblVar) throws IOException {
        this.zza.zzn(i10, (zzhas) obj, zzhblVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzw(int i10, Object obj) throws IOException {
        if (obj instanceof zzgxz) {
            this.zza.zzp(i10, (zzgxz) obj);
        } else {
            this.zza.zzo(i10, (zzhas) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzx(int i10, int i11) throws IOException {
        this.zza.zzh(i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzy(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            if (z10) {
                zzgym zzgymVar = this.zza;
                zzgymVar.zzs(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgziVar.size(); i13++) {
                    zzgziVar.zzd(i13);
                    i12 += 4;
                }
                zzgymVar.zzu(i12);
                while (i11 < zzgziVar.size()) {
                    zzgymVar.zzi(zzgziVar.zzd(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgziVar.size()) {
                this.zza.zzh(i10, zzgziVar.zzd(i11));
                i11++;
            }
        } else if (z10) {
            zzgym zzgymVar2 = this.zza;
            zzgymVar2.zzs(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            zzgymVar2.zzu(i14);
            while (i11 < list.size()) {
                zzgymVar2.zzi(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzh(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcm
    public final void zzz(int i10, long j10) throws IOException {
        this.zza.zzj(i10, j10);
    }
}
