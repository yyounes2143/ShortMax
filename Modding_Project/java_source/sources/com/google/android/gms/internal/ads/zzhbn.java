package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhbn {
    public static final /* synthetic */ int zza = 0;
    private static final zzhbx zzb;

    static {
        int i10 = zzhbc.zza;
        zzb = new zzhbz();
    }

    public static void zzA(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzu(i10, list, z10);
        }
    }

    public static void zzB(int i10, List list, zzhcm zzhcmVar, zzhbl zzhblVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((zzgyn) zzhcmVar).zzv(i10, list.get(i11), zzhblVar);
            }
        }
    }

    public static void zzC(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzy(i10, list, z10);
        }
    }

    public static void zzD(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzA(i10, list, z10);
        }
    }

    public static void zzE(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzC(i10, list, z10);
        }
    }

    public static void zzF(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzE(i10, list, z10);
        }
    }

    public static void zzG(int i10, List list, zzhcm zzhcmVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzH(i10, list);
        }
    }

    public static void zzH(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzJ(i10, list, z10);
        }
    }

    public static void zzI(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzL(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzJ(Object obj, Object obj2) {
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
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(zzgziVar.zzd(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(((Integer) list.get(i11)).intValue());
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
        return size * (zzgym.zzD(i10 << 3) + 4);
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
        return size * (zzgym.zzD(i10 << 3) + 8);
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
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(zzgziVar.zzd(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(((Integer) list.get(i11)).intValue());
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
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(zzhahVar.zza(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i10, Object obj, zzhbl zzhblVar) {
        int i11 = i10 << 3;
        if (obj instanceof zzhad) {
            int zzD = zzgym.zzD(i11);
            int zza2 = ((zzhad) obj).zza();
            return zzD + zzgym.zzD(zza2) + zza2;
        }
        return zzgym.zzD(i11) + zzgym.zzA((zzhas) obj, zzhblVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            i10 = 0;
            while (i11 < size) {
                int zzd = zzgziVar.zzd(i11);
                i10 += zzgym.zzD((zzd >> 31) ^ (zzd + zzd));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = ((Integer) list.get(i11)).intValue();
                i10 += zzgym.zzD((intValue >> 31) ^ (intValue + intValue));
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
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            i10 = 0;
            while (i11 < size) {
                long zza2 = zzhahVar.zza(i11);
                i10 += zzgym.zzE((zza2 >> 63) ^ (zza2 + zza2));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                long longValue = ((Long) list.get(i11)).longValue();
                i10 += zzgym.zzE((longValue >> 63) ^ (longValue + longValue));
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
        if (list instanceof zzgzi) {
            zzgzi zzgziVar = (zzgzi) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzD(zzgziVar.zzd(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzD(((Integer) list.get(i11)).intValue());
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
        if (list instanceof zzhah) {
            zzhah zzhahVar = (zzhah) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(zzhahVar.zza(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzgym.zzE(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static zzhbx zzm() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzn(Object obj, int i10, List list, zzgzn zzgznVar, Object obj2, zzhbx zzhbxVar) {
        if (zzgznVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = (Integer) list.get(i12);
                int intValue = num.intValue();
                if (zzgznVar.zza(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    obj2 = zzo(obj, i10, intValue, obj2, zzhbxVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!zzgznVar.zza(intValue2)) {
                    obj2 = zzo(obj, i10, intValue2, obj2, zzhbxVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzo(Object obj, int i10, int i11, Object obj2, zzhbx zzhbxVar) {
        if (obj2 == null) {
            obj2 = zzhbxVar.zza(obj);
        }
        zzhbxVar.zzh(obj2, i10, i11);
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzp(zzgys zzgysVar, Object obj, Object obj2) {
        if (((zzgzd) obj2).zza.zza.isEmpty()) {
            return;
        }
        zzgzd zzgzdVar = (zzgzd) obj;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzq(zzhbx zzhbxVar, Object obj, Object obj2) {
        zzgzh zzgzhVar = (zzgzh) obj;
        zzhby zzhbyVar = zzgzhVar.zzt;
        zzhby zzhbyVar2 = ((zzgzh) obj2).zzt;
        if (!zzhby.zzc().equals(zzhbyVar2)) {
            if (zzhby.zzc().equals(zzhbyVar)) {
                zzhbyVar = zzhby.zze(zzhbyVar, zzhbyVar2);
            } else {
                zzhbyVar.zzd(zzhbyVar2);
            }
        }
        zzgzhVar.zzt = zzhbyVar;
    }

    public static void zzr(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzc(i10, list, z10);
        }
    }

    public static void zzs(int i10, List list, zzhcm zzhcmVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zze(i10, list);
        }
    }

    public static void zzt(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzg(i10, list, z10);
        }
    }

    public static void zzu(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzj(i10, list, z10);
        }
    }

    public static void zzv(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzl(i10, list, z10);
        }
    }

    public static void zzw(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzn(i10, list, z10);
        }
    }

    public static void zzx(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzp(i10, list, z10);
        }
    }

    public static void zzy(int i10, List list, zzhcm zzhcmVar, zzhbl zzhblVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                ((zzgyn) zzhcmVar).zzq(i10, list.get(i11), zzhblVar);
            }
        }
    }

    public static void zzz(int i10, List list, zzhcm zzhcmVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzhcmVar.zzs(i10, list, z10);
        }
    }
}
