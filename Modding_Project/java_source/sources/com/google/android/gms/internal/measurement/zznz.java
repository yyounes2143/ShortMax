package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
public final class zznz {
    public static final /* synthetic */ int zza = 0;
    private static final zzoi zzb;

    static {
        int i10 = zznu.zza;
        zzb = new zzok();
    }

    public static zzoi zzA() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzB(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzC(zzls zzlsVar, Object obj, Object obj2) {
        if (((zzmc) obj2).zzb.zza.isEmpty()) {
            return;
        }
        zzmc zzmcVar = (zzmc) obj;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzD(zzoi zzoiVar, Object obj, Object obj2) {
        zzmf zzmfVar = (zzmf) obj;
        zzoj zzojVar = zzmfVar.zzc;
        zzoj zzojVar2 = ((zzmf) obj2).zzc;
        if (!zzoj.zza().equals(zzojVar2)) {
            if (zzoj.zza().equals(zzojVar)) {
                zzojVar = zzoj.zzc(zzojVar, zzojVar2);
            } else {
                zzojVar.zzl(zzojVar2);
            }
        }
        zzmfVar.zzc = zzojVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzE(Object obj, int i10, int i11, Object obj2, zzoi zzoiVar) {
        if (obj2 == null) {
            obj2 = zzoiVar.zza(obj);
        }
        ((zzoj) obj2).zzk(i10 << 3, Long.valueOf(i11));
        return obj2;
    }

    public static void zza(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzC(i10, list, z10);
        }
    }

    public static void zzb(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzB(i10, list, z10);
        }
    }

    public static void zzc(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzy(i10, list, z10);
        }
    }

    public static void zzd(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzz(i10, list, z10);
        }
    }

    public static void zze(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzL(i10, list, z10);
        }
    }

    public static void zzf(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzA(i10, list, z10);
        }
    }

    public static void zzg(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzJ(i10, list, z10);
        }
    }

    public static void zzh(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzw(i10, list, z10);
        }
    }

    public static void zzi(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzH(i10, list, z10);
        }
    }

    public static void zzj(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzK(i10, list, z10);
        }
    }

    public static void zzk(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzx(i10, list, z10);
        }
    }

    public static void zzl(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzI(i10, list, z10);
        }
    }

    public static void zzm(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzD(i10, list, z10);
        }
    }

    public static void zzn(int i10, List list, zzov zzovVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzovVar.zzE(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(zznaVar.zzc(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(zznaVar.zzc(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzna) {
            zzna zznaVar = (zzna) list;
            i10 = 0;
            while (i11 < size) {
                long zzc = zznaVar.zzc(i11);
                i10 += zzlm.zzA((zzc >> 63) ^ (zzc + zzc));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                long longValue = ((Long) list.get(i11)).longValue();
                i10 += zzlm.zzA((longValue >> 63) ^ (longValue + longValue));
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(zzmgVar.zzf(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(zzmgVar.zzf(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzA(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzz(zzmgVar.zzf(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzlm.zzz(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzmg) {
            zzmg zzmgVar = (zzmg) list;
            i10 = 0;
            while (i11 < size) {
                int zzf = zzmgVar.zzf(i11);
                i10 += zzlm.zzz((zzf >> 31) ^ (zzf + zzf));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = ((Integer) list.get(i11)).intValue();
                i10 += zzlm.zzz((intValue >> 31) ^ (intValue + intValue));
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(List list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzlm.zzz(i10 << 3) + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(List list) {
        return list.size() * 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzy(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzlm.zzz(i10 << 3) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzz(int i10, Object obj, zznx zznxVar) {
        int i11 = i10 << 3;
        if (obj instanceof zzmw) {
            int zzz = zzlm.zzz(i11);
            int zzb2 = ((zzmw) obj).zzb();
            return zzz + zzlm.zzz(zzb2) + zzb2;
        }
        return zzlm.zzz(i11) + zzlm.zzD((zznm) obj, zznxVar);
    }
}
