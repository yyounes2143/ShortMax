package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzand  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzand {
    private static final zzanu<?, ?> zza = new zzanw();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int zza(int i10, zzamm zzammVar, zzanb zzanbVar) {
        return (zzakn.zzh(i10) << 1) + ((zzajm) zzammVar).zza(zzanbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzakn.zzh(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzakn.zzb(i10, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzakn.zza(i10, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzakn.zzh(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return zzf(list) + (list.size() * zzakn.zzh(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzakn.zzh(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzakn.zzh(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzakn.zzh(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzakn.zzh(i10));
    }

    public static void zzk(int i10, List<Integer> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzaolVar.zzk(i10, list, z10);
        }
    }

    public static void zzl(int i10, List<Long> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzaolVar.zzl(i10, list, z10);
        }
    }

    public static void zzm(int i10, List<Integer> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzaolVar.zzm(i10, list, z10);
        }
    }

    public static void zzn(int i10, List<Long> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzaolVar.zzn(i10, list, z10);
        }
    }

    private static int zza(zzajm zzajmVar, zzanb zzanbVar) {
        return zzakn.zzd(zzajmVar.zza(zzanbVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(List<?> list) {
        return list.size() << 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(List<?> list) {
        return list.size() << 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zza(zzaliVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zza(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static void zzc(int i10, List<Integer> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzc(i10, list, z10);
    }

    public static void zzd(int i10, List<Integer> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzd(i10, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzc(zzaliVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzc(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzb(zzalxVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzb(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzg(zzaliVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzg(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzd(zzalxVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzd(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzi(zzaliVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zzi(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zze(zzalxVar.zzb(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += zzakn.zze(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzakn.zza(i10, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(List<?> list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, List<zzajv> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzh = size * zzakn.zzh(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzh += zzakn.zza(list.get(i11));
        }
        return zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i10, List<?> list, zzanb<?> zzanbVar) {
        int zza2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzh = zzakn.zzh(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof zzalu) {
                zza2 = zzakn.zza((zzalu) obj);
            } else {
                zza2 = zza((zzajm) obj, (zzanb) zzanbVar);
            }
            zzh += zza2;
        }
        return zzh;
    }

    public static void zze(int i10, List<Long> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zze(i10, list, z10);
    }

    public static void zzf(int i10, List<Float> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzf(i10, list, z10);
    }

    public static void zzg(int i10, List<Integer> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzg(i10, list, z10);
    }

    public static void zzh(int i10, List<Long> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzh(i10, list, z10);
    }

    public static void zzi(int i10, List<Integer> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzi(i10, list, z10);
    }

    public static void zzj(int i10, List<Long> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzj(i10, list, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, List<zzamm> list, zzanb<?> zzanbVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += zza(i10, list.get(i12), (zzanb) zzanbVar);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, Object obj, zzanb<?> zzanbVar) {
        if (obj instanceof zzalu) {
            return zzakn.zzb(i10, (zzalu) obj);
        }
        return zzakn.zzh(i10) + zza((zzajm) obj, (zzanb) zzanbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i10, List<?> list) {
        int zza2;
        int zza3;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int zzh = zzakn.zzh(i10) * size;
        if (list instanceof zzalt) {
            zzalt zzaltVar = (zzalt) list;
            while (i11 < size) {
                Object zza4 = zzaltVar.zza(i11);
                if (zza4 instanceof zzajv) {
                    zza3 = zzakn.zza((zzajv) zza4);
                } else {
                    zza3 = zzakn.zza((String) zza4);
                }
                zzh += zza3;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof zzajv) {
                    zza2 = zzakn.zza((zzajv) obj);
                } else {
                    zza2 = zzakn.zza((String) obj);
                }
                zzh += zza2;
                i11++;
            }
        }
        return zzh;
    }

    public static zzanu<?, ?> zza() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB zza(Object obj, int i10, List<Integer> list, zzalj zzaljVar, UB ub2, zzanu<UT, UB> zzanuVar) {
        if (zzaljVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = list.get(i12);
                int intValue = num.intValue();
                if (zzaljVar.zza(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    ub2 = (UB) zza(obj, i10, intValue, ub2, zzanuVar);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!zzaljVar.zza(intValue2)) {
                    ub2 = (UB) zza(obj, i10, intValue2, ub2, zzanuVar);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    public static void zzb(int i10, List<Double> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzb(i10, list, z10);
    }

    public static void zzb(int i10, List<?> list, zzaol zzaolVar, zzanb<?> zzanbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzb(i10, list, (zzanb) zzanbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB zza(Object obj, int i10, int i11, UB ub2, zzanu<UT, UB> zzanuVar) {
        if (ub2 == null) {
            ub2 = zzanuVar.zzc(obj);
        }
        zzanuVar.zzb(ub2, i10, i11);
        return ub2;
    }

    public static void zzb(int i10, List<String> list, zzaol zzaolVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zzb(i10, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends zzakz<FT>> void zza(zzakw<FT> zzakwVar, T t10, T t11) {
        zzakx<FT> zza2 = zzakwVar.zza(t11);
        if (zza2.zza.isEmpty()) {
            return;
        }
        zzakwVar.zzb(t10).zza(zza2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void zza(zzamf zzamfVar, T t10, T t11, long j10) {
        zzanz.zza(t10, j10, zzamfVar.zza(zzanz.zze(t10, j10), zzanz.zze(t11, j10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void zza(zzanu<UT, UB> zzanuVar, T t10, T t11) {
        zzanuVar.zzc(t10, zzanuVar.zza(zzanuVar.zzd(t10), zzanuVar.zzd(t11)));
    }

    public static void zza(Class<?> cls) {
        zzalf.class.isAssignableFrom(cls);
    }

    public static void zza(int i10, List<Boolean> list, zzaol zzaolVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zza(i10, list, z10);
    }

    public static void zza(int i10, List<zzajv> list, zzaol zzaolVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zza(i10, list);
    }

    public static void zza(int i10, List<?> list, zzaol zzaolVar, zzanb<?> zzanbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaolVar.zza(i10, list, (zzanb) zzanbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
