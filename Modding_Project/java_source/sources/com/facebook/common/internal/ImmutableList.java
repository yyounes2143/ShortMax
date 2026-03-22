package com.facebook.common.internal;

import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes3.dex */
public class ImmutableList<E> extends ArrayList<E> {
    private ImmutableList(int i10) {
        super(i10);
    }

    public static <E> ImmutableList<E> e(E... eArr) {
        ImmutableList<E> immutableList = new ImmutableList<>(eArr.length);
        Collections.addAll(immutableList, eArr);
        return immutableList;
    }
}
