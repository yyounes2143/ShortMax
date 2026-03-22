package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzgx {
    public static final /* synthetic */ int zza = 0;
    private static final zzhh zzb;

    static {
        int i10 = zzgs.zza;
        zzb = new zzhj();
    }

    public static void zzA(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzC(i10, list, z10);
        }
    }

    public static void zzB(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzE(i10, list, z10);
        }
    }

    public static void zzC(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzJ(i10, list, z10);
        }
    }

    public static void zzD(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzL(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzE(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(zzfjVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzep.zzC(i10 << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzep.zzC(i10 << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(zzfjVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(zzgaVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i10, Object obj, zzgv zzgvVar) {
        int i11 = i10 << 3;
        if (obj instanceof zzfw) {
            int zzC = zzep.zzC(i11);
            int zza2 = ((zzfw) obj).zza();
            return zzC + zzep.zzC(zza2) + zza2;
        }
        return zzep.zzC(i11) + zzep.zzA((zzgl) obj, zzgvVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            i10 = 0;
            while (i11 < size) {
                int zze = zzfjVar.zze(i11);
                i10 += zzep.zzC((zze >> 31) ^ (zze + zze));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = ((Integer) list.get(i11)).intValue();
                i10 += zzep.zzC((intValue >> 31) ^ (intValue + intValue));
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            i10 = 0;
            while (i11 < size) {
                long zze = zzgaVar.zze(i11);
                i10 += zzep.zzD((zze >> 63) ^ (zze + zze));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                long longValue = ((Long) list.get(i11)).longValue();
                i10 += zzep.zzD((longValue >> 63) ^ (longValue + longValue));
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfj) {
            zzfj zzfjVar = (zzfj) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzC(zzfjVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzC(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzga) {
            zzga zzgaVar = (zzga) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(zzgaVar.zze(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzep.zzD(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static zzhh zzm() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzn(Object obj, int i10, int i11, Object obj2, zzhh zzhhVar) {
        if (obj2 == null) {
            obj2 = zzhhVar.zza(obj);
        }
        ((zzhi) obj2).zzj(i10 << 3, Long.valueOf(i11));
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzo(zzev zzevVar, Object obj, Object obj2) {
        if (((zzff) obj2).zzb.zza.isEmpty()) {
            return;
        }
        zzff zzffVar = (zzff) obj;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzp(zzhh zzhhVar, Object obj, Object obj2) {
        zzfi zzfiVar = (zzfi) obj;
        zzhi zzhiVar = zzfiVar.zzc;
        zzhi zzhiVar2 = ((zzfi) obj2).zzc;
        if (!zzhi.zzc().equals(zzhiVar2)) {
            if (zzhi.zzc().equals(zzhiVar)) {
                zzhiVar = zzhi.zze(zzhiVar, zzhiVar2);
            } else {
                zzhiVar.zzd(zzhiVar2);
            }
        }
        zzfiVar.zzc = zzhiVar;
    }

    public static void zzq(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzc(i10, list, z10);
        }
    }

    public static void zzr(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzg(i10, list, z10);
        }
    }

    public static void zzs(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzj(i10, list, z10);
        }
    }

    public static void zzt(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzl(i10, list, z10);
        }
    }

    public static void zzu(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzn(i10, list, z10);
        }
    }

    public static void zzv(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzp(i10, list, z10);
        }
    }

    public static void zzw(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzs(i10, list, z10);
        }
    }

    public static void zzx(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzu(i10, list, z10);
        }
    }

    public static void zzy(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzy(i10, list, z10);
        }
    }

    public static void zzz(int i10, List list, zzhu zzhuVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhuVar.zzA(i10, list, z10);
        }
    }
}
