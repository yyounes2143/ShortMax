package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
final class zzln implements zzov {
    private final zzlm zza;

    private zzln(zzlm zzlmVar) {
        byte[] bArr = zzmp.zzb;
        this.zza = zzlmVar;
        zzlmVar.zza = this;
    }

    public static zzln zza(zzlm zzlmVar) {
        zzln zzlnVar = zzlmVar.zza;
        if (zzlnVar != null) {
            return zzlnVar;
        }
        return new zzln(zzlmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzA(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zznaVar.size(); i13++) {
                    zznaVar.zzc(i13);
                    i12 += 8;
                }
                zzlmVar.zzr(i12);
                while (i11 < zznaVar.size()) {
                    zzlmVar.zzu(zznaVar.zzc(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zznaVar.size()) {
                this.zza.zzf(i10, zznaVar.zzc(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzu(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzf(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzB(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzly) {
            zzly zzlyVar = (zzly) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzlyVar.size(); i13++) {
                    zzlyVar.zze(i13);
                    i12 += 4;
                }
                zzlmVar.zzr(i12);
                while (i11 < zzlyVar.size()) {
                    zzlmVar.zzs(Float.floatToRawIntBits(zzlyVar.zze(i11)));
                    i11++;
                }
                return;
            }
            while (i11 < zzlyVar.size()) {
                this.zza.zzd(i10, Float.floatToRawIntBits(zzlyVar.zze(i11)));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Float) list.get(i15)).floatValue();
                i14 += 4;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzs(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzd(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzC(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzlo) {
            zzlo zzloVar = (zzlo) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzloVar.size(); i13++) {
                    zzloVar.zze(i13);
                    i12 += 8;
                }
                zzlmVar.zzr(i12);
                while (i11 < zzloVar.size()) {
                    zzlmVar.zzu(Double.doubleToRawLongBits(zzloVar.zze(i11)));
                    i11++;
                }
                return;
            }
            while (i11 < zzloVar.size()) {
                this.zza.zzf(i10, Double.doubleToRawLongBits(zzloVar.zze(i11)));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Double) list.get(i15)).doubleValue();
                i14 += 8;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzu(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzf(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzD(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzmgVar.size(); i13++) {
                    i12 += zzlm.zzA(zzmgVar.zzf(i13));
                }
                zzlmVar.zzr(i12);
                while (i11 < zzmgVar.size()) {
                    zzlmVar.zzq(zzmgVar.zzf(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzmgVar.size()) {
                this.zza.zzb(i10, zzmgVar.zzf(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzlm.zzA(((Integer) list.get(i15)).intValue());
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzq(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzb(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzE(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzkyVar.size(); i13++) {
                    zzkyVar.zze(i13);
                    i12++;
                }
                zzlmVar.zzr(i12);
                while (i11 < zzkyVar.size()) {
                    zzlmVar.zzp(zzkyVar.zze(i11) ? (byte) 1 : (byte) 0);
                    i11++;
                }
                return;
            }
            while (i11 < zzkyVar.size()) {
                this.zza.zzg(i10, zzkyVar.zze(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Boolean) list.get(i15)).booleanValue();
                i14++;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzp(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzg(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzF(int i10, List list) throws IOException {
        int i11 = 0;
        if (list instanceof zzmx) {
            zzmx zzmxVar = (zzmx) list;
            while (i11 < list.size()) {
                Object zzc = zzmxVar.zzc();
                if (zzc instanceof String) {
                    this.zza.zzh(i10, (String) zzc);
                } else {
                    this.zza.zzi(i10, (zzlh) zzc);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zzh(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzG(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zzi(i10, (zzlh) list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzH(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzmgVar.size(); i13++) {
                    i12 += zzlm.zzz(zzmgVar.zzf(i13));
                }
                zzlmVar.zzr(i12);
                while (i11 < zzmgVar.size()) {
                    zzlmVar.zzr(zzmgVar.zzf(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzmgVar.size()) {
                this.zza.zzc(i10, zzmgVar.zzf(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzlm.zzz(((Integer) list.get(i15)).intValue());
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzr(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzc(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzI(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzmgVar.size(); i13++) {
                    zzmgVar.zzf(i13);
                    i12 += 4;
                }
                zzlmVar.zzr(i12);
                while (i11 < zzmgVar.size()) {
                    zzlmVar.zzs(zzmgVar.zzf(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzmgVar.size()) {
                this.zza.zzd(i10, zzmgVar.zzf(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzs(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzd(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzJ(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zznaVar.size(); i13++) {
                    zznaVar.zzc(i13);
                    i12 += 8;
                }
                zzlmVar.zzr(i12);
                while (i11 < zznaVar.size()) {
                    zzlmVar.zzu(zznaVar.zzc(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zznaVar.size()) {
                this.zza.zzf(i10, zznaVar.zzc(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzu(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzf(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzK(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzmgVar.size(); i13++) {
                    int zzf = zzmgVar.zzf(i13);
                    i12 += zzlm.zzz((zzf >> 31) ^ (zzf + zzf));
                }
                zzlmVar.zzr(i12);
                while (i11 < zzmgVar.size()) {
                    int zzf2 = zzmgVar.zzf(i11);
                    zzlmVar.zzr((zzf2 >> 31) ^ (zzf2 + zzf2));
                    i11++;
                }
                return;
            }
            while (i11 < zzmgVar.size()) {
                zzlm zzlmVar2 = this.zza;
                int zzf3 = zzmgVar.zzf(i11);
                zzlmVar2.zzc(i10, (zzf3 >> 31) ^ (zzf3 + zzf3));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar3 = this.zza;
            zzlmVar3.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                int intValue = ((Integer) list.get(i15)).intValue();
                i14 += zzlm.zzz((intValue >> 31) ^ (intValue + intValue));
            }
            zzlmVar3.zzr(i14);
            while (i11 < list.size()) {
                int intValue2 = ((Integer) list.get(i11)).intValue();
                zzlmVar3.zzr((intValue2 >> 31) ^ (intValue2 + intValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                zzlm zzlmVar4 = this.zza;
                int intValue3 = ((Integer) list.get(i11)).intValue();
                zzlmVar4.zzc(i10, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzL(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zznaVar.size(); i13++) {
                    long zzc = zznaVar.zzc(i13);
                    i12 += zzlm.zzA((zzc >> 63) ^ (zzc + zzc));
                }
                zzlmVar.zzr(i12);
                while (i11 < zznaVar.size()) {
                    long zzc2 = zznaVar.zzc(i11);
                    zzlmVar.zzt((zzc2 >> 63) ^ (zzc2 + zzc2));
                    i11++;
                }
                return;
            }
            while (i11 < zznaVar.size()) {
                zzlm zzlmVar2 = this.zza;
                long zzc3 = zznaVar.zzc(i11);
                zzlmVar2.zze(i10, (zzc3 >> 63) ^ (zzc3 + zzc3));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar3 = this.zza;
            zzlmVar3.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                long longValue = ((Long) list.get(i15)).longValue();
                i14 += zzlm.zzA((longValue >> 63) ^ (longValue + longValue));
            }
            zzlmVar3.zzr(i14);
            while (i11 < list.size()) {
                long longValue2 = ((Long) list.get(i11)).longValue();
                zzlmVar3.zzt((longValue2 >> 63) ^ (longValue2 + longValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                zzlm zzlmVar4 = this.zza;
                long longValue3 = ((Long) list.get(i11)).longValue();
                zzlmVar4.zze(i10, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzM(int i10, zzne zzneVar, Map map) throws IOException {
        for (Map.Entry entry : map.entrySet()) {
            zzlm zzlmVar = this.zza;
            zzlmVar.zza(i10, 2);
            zzlmVar.zzr(zznf.zzc(zzneVar, entry.getKey(), entry.getValue()));
            zznf.zzb(zzlmVar, zzneVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzb(int i10, int i11) throws IOException {
        this.zza.zzd(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzc(int i10, long j10) throws IOException {
        this.zza.zze(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzd(int i10, long j10) throws IOException {
        this.zza.zzf(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zze(int i10, float f10) throws IOException {
        this.zza.zzd(i10, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzf(int i10, double d10) throws IOException {
        this.zza.zzf(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzg(int i10, int i11) throws IOException {
        this.zza.zzb(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzh(int i10, long j10) throws IOException {
        this.zza.zze(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzi(int i10, int i11) throws IOException {
        this.zza.zzb(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzj(int i10, long j10) throws IOException {
        this.zza.zzf(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzk(int i10, int i11) throws IOException {
        this.zza.zzd(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzl(int i10, boolean z10) throws IOException {
        this.zza.zzg(i10, z10);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzm(int i10, String str) throws IOException {
        this.zza.zzh(i10, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzn(int i10, zzlh zzlhVar) throws IOException {
        this.zza.zzi(i10, zzlhVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzo(int i10, int i11) throws IOException {
        this.zza.zzc(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzp(int i10, int i11) throws IOException {
        this.zza.zzc(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzq(int i10, long j10) throws IOException {
        this.zza.zze(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzr(int i10, Object obj, zznx zznxVar) throws IOException {
        this.zza.zzl(i10, (zznm) obj, zznxVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzs(int i10, Object obj, zznx zznxVar) throws IOException {
        zzlm zzlmVar = this.zza;
        zzlmVar.zza(i10, 3);
        zznxVar.zzf((zznm) obj, zzlmVar.zza);
        zzlmVar.zza(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    @Deprecated
    public final void zzt(int i10) throws IOException {
        this.zza.zza(i10, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    @Deprecated
    public final void zzu(int i10) throws IOException {
        this.zza.zza(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzv(int i10, Object obj) throws IOException {
        if (obj instanceof zzlh) {
            this.zza.zzn(i10, (zzlh) obj);
        } else {
            this.zza.zzm(i10, (zznm) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzw(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzmgVar.size(); i13++) {
                    i12 += zzlm.zzA(zzmgVar.zzf(i13));
                }
                zzlmVar.zzr(i12);
                while (i11 < zzmgVar.size()) {
                    zzlmVar.zzq(zzmgVar.zzf(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzmgVar.size()) {
                this.zza.zzb(i10, zzmgVar.zzf(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzlm.zzA(((Integer) list.get(i15)).intValue());
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzq(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzb(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzx(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzmgVar.size(); i13++) {
                    zzmgVar.zzf(i13);
                    i12 += 4;
                }
                zzlmVar.zzr(i12);
                while (i11 < zzmgVar.size()) {
                    zzlmVar.zzs(zzmgVar.zzf(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzmgVar.size()) {
                this.zza.zzd(i10, zzmgVar.zzf(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzs(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzd(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzy(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zznaVar.size(); i13++) {
                    i12 += zzlm.zzA(zznaVar.zzc(i13));
                }
                zzlmVar.zzr(i12);
                while (i11 < zznaVar.size()) {
                    zzlmVar.zzt(zznaVar.zzc(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zznaVar.size()) {
                this.zza.zze(i10, zznaVar.zzc(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzlm.zzA(((Long) list.get(i15)).longValue());
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzt(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zze(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzov
    public final void zzz(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            if (z10) {
                zzlm zzlmVar = this.zza;
                zzlmVar.zza(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zznaVar.size(); i13++) {
                    i12 += zzlm.zzA(zznaVar.zzc(i13));
                }
                zzlmVar.zzr(i12);
                while (i11 < zznaVar.size()) {
                    zzlmVar.zzt(zznaVar.zzc(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zznaVar.size()) {
                this.zza.zze(i10, zznaVar.zzc(i11));
                i11++;
            }
        } else if (z10) {
            zzlm zzlmVar2 = this.zza;
            zzlmVar2.zza(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzlm.zzA(((Long) list.get(i15)).longValue());
            }
            zzlmVar2.zzr(i14);
            while (i11 < list.size()) {
                zzlmVar2.zzt(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zze(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }
}
