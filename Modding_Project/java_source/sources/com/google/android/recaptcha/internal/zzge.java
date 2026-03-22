package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzge {
    @NotNull
    private final Map zza = new LinkedHashMap();
    @NotNull
    private final Set zzb = new LinkedHashSet();

    private final List zzh(List list) {
        List<zzue> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
        for (zzue zzueVar : list2) {
            arrayList.add(zza(zzueVar));
        }
        return arrayList;
    }

    @Nullable
    public final Object zza(@NotNull zzue zzueVar) throws zzce {
        int zzS = zzueVar.zzS();
        int i10 = zzS - 1;
        if (zzS != 0) {
            switch (i10) {
                case 0:
                    return this.zza.get(Integer.valueOf(zzueVar.zzi()));
                case 1:
                    return Boolean.valueOf(zzueVar.zzQ());
                case 2:
                    byte[] zzl = zzueVar.zzM().zzl();
                    if (zzl.length == 1) {
                        return Byte.valueOf(zzl[0]);
                    }
                    throw new zzce(4, 6, null);
                case 3:
                    String zzO = zzueVar.zzO();
                    if (zzO.length() == 1) {
                        return Character.valueOf(zzO.charAt(0));
                    }
                    throw new zzce(4, 6, null);
                case 4:
                    int zzj = zzueVar.zzj();
                    if (zzj >= -32768 && zzj <= 32767) {
                        return Short.valueOf((short) zzj);
                    }
                    throw new zzce(4, 6, null);
                case 5:
                    return Integer.valueOf(zzueVar.zzk());
                case 6:
                case 8:
                    throw new zzce(4, 6, null);
                case 7:
                    return Long.valueOf(zzueVar.zzl());
                case 9:
                    return Float.valueOf(zzueVar.zzg());
                case 10:
                    return Double.valueOf(zzueVar.zzf());
                case 11:
                    return zzueVar.zzP();
                case 12:
                    return null;
                default:
                    throw new zzce(4, 5, null);
            }
        }
        throw null;
    }

    @Nullable
    public final Object zzb(int i10) {
        return this.zza.remove(Integer.valueOf(i10));
    }

    public final void zzc() {
        this.zza.clear();
    }

    public final void zzd(int i10, @Nullable Object obj) {
        zze(173, obj);
        this.zzb.add(173);
    }

    public final void zze(int i10, @Nullable Object obj) {
        this.zza.put(Integer.valueOf(i10), obj);
    }

    @NotNull
    public final Class[] zzf(@NotNull List list) {
        List<Object> zzh = zzh(list);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(zzh, 10));
        for (Object obj : zzh) {
            arrayList.add(zzgc.zza(obj));
        }
        return (Class[]) arrayList.toArray(new Class[0]);
    }

    @NotNull
    public final Object[] zzg(@NotNull List list) {
        return zzh(list).toArray(new Object[0]);
    }
}
