package com.bytedance.sdk.component.cFZ.tB;
/* loaded from: classes3.dex */
public class tB {
    private ZYk ZYk;
    private oJ oJ;

    /* loaded from: classes3.dex */
    public interface ZYk {
    }

    /* loaded from: classes3.dex */
    public enum oJ {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* renamed from: com.bytedance.sdk.component.cFZ.tB.tB$tB  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static class C0175tB {
        private static final tB oJ = new tB();
    }

    public static void oJ(oJ oJVar) {
        synchronized (tB.class) {
            C0175tB.oJ.oJ = oJVar;
        }
    }

    private tB() {
        this.oJ = oJ.OFF;
        this.ZYk = new com.bytedance.sdk.component.cFZ.tB.ZYk();
    }
}
