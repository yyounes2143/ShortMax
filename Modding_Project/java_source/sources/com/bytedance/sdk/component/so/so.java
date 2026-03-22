package com.bytedance.sdk.component.so;
/* loaded from: classes3.dex */
public abstract class so implements Comparable<so>, Runnable {
    private String ZYk;
    private int oJ;

    public so(String str, int i10) {
        this.oJ = 0;
        this.oJ = i10 == 0 ? 5 : i10;
        this.ZYk = str;
    }

    public String getName() {
        return this.ZYk;
    }

    public int getPriority() {
        return this.oJ;
    }

    public void setPriority(int i10) {
        this.oJ = i10;
    }

    @Override // java.lang.Comparable
    public int compareTo(so soVar) {
        if (getPriority() < soVar.getPriority()) {
            return 1;
        }
        return getPriority() >= soVar.getPriority() ? -1 : 0;
    }

    public so(String str) {
        this.oJ = 5;
        this.ZYk = str;
    }
}
