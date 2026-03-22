package com.bytedance.sdk.component.ba.oJ.oJ.oJ;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bytedance.sdk.component.ba.oJ.oJ.oJ.ZYk;
/* loaded from: classes3.dex */
public class oJ extends ZYk {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile oJ oJ;

    private oJ(Context context) {
        super(context);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.ZYk
    public /* bridge */ /* synthetic */ ZYk.C0173ZYk oJ() {
        return super.oJ();
    }

    public static oJ oJ(Context context) {
        if (oJ == null) {
            synchronized (oJ.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }
}
