package com.bytedance.sdk.component.so;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes3.dex */
public class cFZ<V> extends FutureTask<V> implements Comparable<cFZ<V>> {
    private int ZYk;
    private int oJ;

    public cFZ(Callable<V> callable, int i10, int i11) {
        super(callable);
        this.oJ = i10 == -1 ? 5 : i10;
        this.ZYk = i11;
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(cFZ cfz) {
        if (oJ() < cfz.oJ()) {
            return 1;
        }
        return oJ() > cfz.oJ() ? -1 : 0;
    }

    public int oJ() {
        return this.oJ;
    }
}
