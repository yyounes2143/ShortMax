package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzeq implements zzhu {
    private final zzep zza;

    private zzeq(zzep zzepVar) {
        byte[] bArr = zzfo.zzb;
        this.zza = zzepVar;
        zzepVar.zza = this;
    }

    public static zzeq zza(zzep zzepVar) {
        zzeq zzeqVar = zzepVar.zza;
        if (zzeqVar != null) {
            return zzeqVar;
        }
        return new zzeq(zzepVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzA(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgaVar.size(); i13++) {
                    zzgaVar.zze(i13);
                    i12 += 8;
                }
                zzepVar.zzv(i12);
                while (i11 < zzgaVar.size()) {
                    zzepVar.zzj(zzgaVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgaVar.size()) {
                this.zza.zzi(i10, zzgaVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzj(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzi(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzB(int i10, int i11) throws IOException {
        this.zza.zzu(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzC(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfjVar.size(); i13++) {
                    int zze = zzfjVar.zze(i13);
                    i12 += zzep.zzC((zze >> 31) ^ (zze + zze));
                }
                zzepVar.zzv(i12);
                while (i11 < zzfjVar.size()) {
                    int zze2 = zzfjVar.zze(i11);
                    zzepVar.zzv((zze2 >> 31) ^ (zze2 + zze2));
                    i11++;
                }
                return;
            }
            while (i11 < zzfjVar.size()) {
                zzep zzepVar2 = this.zza;
                int zze3 = zzfjVar.zze(i11);
                zzepVar2.zzu(i10, (zze3 >> 31) ^ (zze3 + zze3));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar3 = this.zza;
            zzepVar3.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                int intValue = ((Integer) list.get(i15)).intValue();
                i14 += zzep.zzC((intValue >> 31) ^ (intValue + intValue));
            }
            zzepVar3.zzv(i14);
            while (i11 < list.size()) {
                int intValue2 = ((Integer) list.get(i11)).intValue();
                zzepVar3.zzv((intValue2 >> 31) ^ (intValue2 + intValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                zzep zzepVar4 = this.zza;
                int intValue3 = ((Integer) list.get(i11)).intValue();
                zzepVar4.zzu(i10, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzD(int i10, long j10) throws IOException {
        this.zza.zzw(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzE(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgaVar.size(); i13++) {
                    long zze = zzgaVar.zze(i13);
                    i12 += zzep.zzD((zze >> 63) ^ (zze + zze));
                }
                zzepVar.zzv(i12);
                while (i11 < zzgaVar.size()) {
                    long zze2 = zzgaVar.zze(i11);
                    zzepVar.zzx((zze2 >> 63) ^ (zze2 + zze2));
                    i11++;
                }
                return;
            }
            while (i11 < zzgaVar.size()) {
                zzep zzepVar2 = this.zza;
                long zze3 = zzgaVar.zze(i11);
                zzepVar2.zzw(i10, (zze3 >> 63) ^ (zze3 + zze3));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar3 = this.zza;
            zzepVar3.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                long longValue = ((Long) list.get(i15)).longValue();
                i14 += zzep.zzD((longValue >> 63) ^ (longValue + longValue));
            }
            zzepVar3.zzv(i14);
            while (i11 < list.size()) {
                long longValue2 = ((Long) list.get(i11)).longValue();
                zzepVar3.zzx((longValue2 >> 63) ^ (longValue2 + longValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                zzep zzepVar4 = this.zza;
                long longValue3 = ((Long) list.get(i11)).longValue();
                zzepVar4.zzw(i10, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    @Deprecated
    public final void zzF(int i10) throws IOException {
        this.zza.zzt(i10, 3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzG(int i10, String str) throws IOException {
        this.zza.zzr(i10, str);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzH(int i10, List list) throws IOException {
        int i11 = 0;
        if (list instanceof zzfx) {
            zzfx zzfxVar = (zzfx) list;
            while (i11 < list.size()) {
                Object zza = zzfxVar.zza();
                if (zza instanceof String) {
                    this.zza.zzr(i10, (String) zza);
                } else {
                    this.zza.zze(i10, (zzei) zza);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zzr(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzI(int i10, int i11) throws IOException {
        this.zza.zzu(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzJ(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfjVar.size(); i13++) {
                    i12 += zzep.zzC(zzfjVar.zze(i13));
                }
                zzepVar.zzv(i12);
                while (i11 < zzfjVar.size()) {
                    zzepVar.zzv(zzfjVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzfjVar.size()) {
                this.zza.zzu(i10, zzfjVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzep.zzC(((Integer) list.get(i15)).intValue());
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzv(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzu(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzK(int i10, long j10) throws IOException {
        this.zza.zzw(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzL(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgaVar.size(); i13++) {
                    i12 += zzep.zzD(zzgaVar.zze(i13));
                }
                zzepVar.zzv(i12);
                while (i11 < zzgaVar.size()) {
                    zzepVar.zzx(zzgaVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgaVar.size()) {
                this.zza.zzw(i10, zzgaVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzep.zzD(((Long) list.get(i15)).longValue());
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzx(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzw(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzb(int i10, boolean z10) throws IOException {
        this.zza.zzd(i10, z10);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzc(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzdy) {
            zzdy zzdyVar = (zzdy) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzdyVar.size(); i13++) {
                    zzdyVar.zzf(i13);
                    i12++;
                }
                zzepVar.zzv(i12);
                while (i11 < zzdyVar.size()) {
                    zzepVar.zzb(zzdyVar.zzf(i11) ? (byte) 1 : (byte) 0);
                    i11++;
                }
                return;
            }
            while (i11 < zzdyVar.size()) {
                this.zza.zzd(i10, zzdyVar.zzf(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Boolean) list.get(i15)).booleanValue();
                i14++;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzb(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzd(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzd(int i10, zzei zzeiVar) throws IOException {
        this.zza.zze(i10, zzeiVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zze(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zze(i10, (zzei) list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzf(int i10, double d10) throws IOException {
        this.zza.zzi(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzg(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzer) {
            zzer zzerVar = (zzer) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzerVar.size(); i13++) {
                    zzerVar.zze(i13);
                    i12 += 8;
                }
                zzepVar.zzv(i12);
                while (i11 < zzerVar.size()) {
                    zzepVar.zzj(Double.doubleToRawLongBits(zzerVar.zze(i11)));
                    i11++;
                }
                return;
            }
            while (i11 < zzerVar.size()) {
                this.zza.zzi(i10, Double.doubleToRawLongBits(zzerVar.zze(i11)));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Double) list.get(i15)).doubleValue();
                i14 += 8;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzj(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzi(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    @Deprecated
    public final void zzh(int i10) throws IOException {
        this.zza.zzt(i10, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzi(int i10, int i11) throws IOException {
        this.zza.zzk(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzj(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfjVar.size(); i13++) {
                    i12 += zzep.zzD(zzfjVar.zze(i13));
                }
                zzepVar.zzv(i12);
                while (i11 < zzfjVar.size()) {
                    zzepVar.zzl(zzfjVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzfjVar.size()) {
                this.zza.zzk(i10, zzfjVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzep.zzD(((Integer) list.get(i15)).intValue());
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzl(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzk(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzk(int i10, int i11) throws IOException {
        this.zza.zzg(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzl(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfjVar.size(); i13++) {
                    zzfjVar.zze(i13);
                    i12 += 4;
                }
                zzepVar.zzv(i12);
                while (i11 < zzfjVar.size()) {
                    zzepVar.zzh(zzfjVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzfjVar.size()) {
                this.zza.zzg(i10, zzfjVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzh(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzg(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzm(int i10, long j10) throws IOException {
        this.zza.zzi(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzn(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgaVar.size(); i13++) {
                    zzgaVar.zze(i13);
                    i12 += 8;
                }
                zzepVar.zzv(i12);
                while (i11 < zzgaVar.size()) {
                    zzepVar.zzj(zzgaVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgaVar.size()) {
                this.zza.zzi(i10, zzgaVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzj(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzi(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzo(int i10, float f10) throws IOException {
        this.zza.zzg(i10, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzp(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfb) {
            zzfb zzfbVar = (zzfb) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfbVar.size(); i13++) {
                    zzfbVar.zze(i13);
                    i12 += 4;
                }
                zzepVar.zzv(i12);
                while (i11 < zzfbVar.size()) {
                    zzepVar.zzh(Float.floatToRawIntBits(zzfbVar.zze(i11)));
                    i11++;
                }
                return;
            }
            while (i11 < zzfbVar.size()) {
                this.zza.zzg(i10, Float.floatToRawIntBits(zzfbVar.zze(i11)));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Float) list.get(i15)).floatValue();
                i14 += 4;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzh(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzg(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzq(int i10, Object obj, zzgv zzgvVar) throws IOException {
        zzep zzepVar = this.zza;
        zzepVar.zzt(i10, 3);
        zzgvVar.zzi((zzgl) obj, zzepVar.zza);
        zzepVar.zzt(i10, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzr(int i10, int i11) throws IOException {
        this.zza.zzk(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzs(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfjVar.size(); i13++) {
                    i12 += zzep.zzD(zzfjVar.zze(i13));
                }
                zzepVar.zzv(i12);
                while (i11 < zzfjVar.size()) {
                    zzepVar.zzl(zzfjVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzfjVar.size()) {
                this.zza.zzk(i10, zzfjVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzep.zzD(((Integer) list.get(i15)).intValue());
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzl(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzk(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzt(int i10, long j10) throws IOException {
        this.zza.zzw(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzu(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzgaVar.size(); i13++) {
                    i12 += zzep.zzD(zzgaVar.zze(i13));
                }
                zzepVar.zzv(i12);
                while (i11 < zzgaVar.size()) {
                    zzepVar.zzx(zzgaVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzgaVar.size()) {
                this.zza.zzw(i10, zzgaVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzep.zzD(((Long) list.get(i15)).longValue());
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzx(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzw(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzv(int i10, Object obj, zzgv zzgvVar) throws IOException {
        this.zza.zzn(i10, (zzgl) obj, zzgvVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzw(int i10, Object obj) throws IOException {
        if (obj instanceof zzei) {
            this.zza.zzq(i10, (zzei) obj);
        } else {
            this.zza.zzp(i10, (zzgl) obj);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzx(int i10, int i11) throws IOException {
        this.zza.zzg(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzy(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            if (z10) {
                zzep zzepVar = this.zza;
                zzepVar.zzt(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzfjVar.size(); i13++) {
                    zzfjVar.zze(i13);
                    i12 += 4;
                }
                zzepVar.zzv(i12);
                while (i11 < zzfjVar.size()) {
                    zzepVar.zzh(zzfjVar.zze(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzfjVar.size()) {
                this.zza.zzg(i10, zzfjVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzep zzepVar2 = this.zza;
            zzepVar2.zzt(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            zzepVar2.zzv(i14);
            while (i11 < list.size()) {
                zzepVar2.zzh(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzg(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhu
    public final void zzz(int i10, long j10) throws IOException {
        this.zza.zzi(i10, j10);
    }
}
