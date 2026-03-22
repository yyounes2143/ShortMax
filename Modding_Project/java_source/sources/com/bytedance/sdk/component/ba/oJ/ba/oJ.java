package com.bytedance.sdk.component.ba.oJ.ba;

import com.bytedance.sdk.component.ba.oJ.so;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile ZYk oJ;

    public static ZYk oJ() {
        if (oJ == null) {
            synchronized (ZYk.class) {
                try {
                    if (oJ == null) {
                        oJ = new tB(so.cFZ().ba(), new ba(so.cFZ().ba()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }
}
