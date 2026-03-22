package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzgy implements zzgx {
    @NotNull
    public static final zzgy zza = new zzgy();

    private zzgy() {
    }

    private static final List zzc(Object obj) {
        if (obj instanceof byte[]) {
            return n.s1((byte[]) obj);
        }
        if (obj instanceof short[]) {
            return n.y1((short[]) obj);
        }
        if (obj instanceof int[]) {
            return n.v1((int[]) obj);
        }
        if (obj instanceof long[]) {
            return n.w1((long[]) obj);
        }
        if (obj instanceof float[]) {
            return n.u1((float[]) obj);
        }
        if (!(obj instanceof double[])) {
            return null;
        }
        return n.t1((double[]) obj);
    }

    @Override // com.google.android.recaptcha.internal.zzgx
    public final void zza(int i10, @NotNull zzgd zzgdVar, @NotNull zzue... zzueVarArr) throws zzce {
        if (zzueVarArr.length == 2) {
            Object zza2 = zzgdVar.zzc().zza(zzueVarArr[0]);
            if (true != Objects.nonNull(zza2)) {
                zza2 = null;
            }
            if (zza2 != null) {
                Object zza3 = zzgdVar.zzc().zza(zzueVarArr[1]);
                if (true != Objects.nonNull(zza3)) {
                    zza3 = null;
                }
                if (zza3 != null) {
                    zzgdVar.zzc().zze(i10, zzb(zza2, zza3));
                    return;
                }
                throw new zzce(4, 5, null);
            }
            throw new zzce(4, 5, null);
        }
        throw new zzce(4, 3, null);
    }

    @NotNull
    public final Object zzb(@NotNull Object obj, @NotNull Object obj2) throws zzce {
        List zzc = zzc(obj);
        List zzc2 = zzc(obj2);
        if (obj instanceof Number) {
            if (obj2 instanceof Number) {
                return Double.valueOf(Math.pow(((Number) obj).doubleValue(), ((Number) obj2).doubleValue()));
            }
            if (zzc2 != null) {
                List<Number> list = zzc2;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                for (Number number : list) {
                    arrayList.add(Double.valueOf(Math.pow(number.doubleValue(), ((Number) obj).doubleValue())));
                }
                return arrayList.toArray(new Double[0]);
            }
        }
        if (zzc != null && (obj2 instanceof Number)) {
            List<Number> list2 = zzc;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list2, 10));
            for (Number number2 : list2) {
                arrayList2.add(Double.valueOf(Math.pow(number2.doubleValue(), ((Number) obj2).doubleValue())));
            }
            return arrayList2.toArray(new Double[0]);
        } else if (zzc != null && zzc2 != null) {
            zzgw.zza(this, zzc.size(), zzc2.size());
            int size = zzc.size();
            Double[] dArr = new Double[size];
            for (int i10 = 0; i10 < size; i10++) {
                dArr[i10] = Double.valueOf(Math.pow(((Number) zzc.get(i10)).doubleValue(), ((Number) zzc2.get(i10)).doubleValue()));
            }
            return dArr;
        } else {
            throw new zzce(4, 5, null);
        }
    }
}
