package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-base@@18.4.0 */
/* loaded from: classes4.dex */
public final class FreezableUtils {
    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull ArrayList<E> arrayList) {
        ArrayList<T> arrayList2 = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(arrayList.get(i10).freeze());
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(@NonNull Iterable<E> iterable) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        for (E e10 : iterable) {
            arrayList.add(e10.freeze());
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull E[] eArr) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e10 : eArr) {
            arrayList.add(e10.freeze());
        }
        return arrayList;
    }
}
