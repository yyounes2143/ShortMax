package com.bytedance.sdk.component.jFA.oJ;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile oJ ZYk;
    private volatile ZYk oJ;

    private oJ() {
    }

    public static oJ oJ() {
        if (ZYk == null) {
            synchronized (oJ.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    public ZYk ZYk() {
        return this.oJ;
    }

    public void oJ(ZYk zYk) {
        this.oJ = zYk;
    }
}
