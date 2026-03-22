package com.bytedance.sdk.component.ba.oJ.Pfn;

import java.util.UUID;
/* loaded from: classes3.dex */
public abstract class Pfn implements Comparable<Pfn>, Runnable {
    private String tB;
    private int oJ = 5;
    private String ZYk = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public Pfn(String str) {
        this.tB = str;
    }

    public void oJ(int i10) {
        this.oJ = i10;
    }

    public int oJ() {
        return this.oJ;
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(Pfn pfn) {
        if (oJ() < pfn.oJ()) {
            return 1;
        }
        return oJ() >= pfn.oJ() ? -1 : 0;
    }
}
