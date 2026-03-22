package com.bytedance.sdk.component.ba.oJ.ZYk;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.oJ.Pfn;
import com.bytedance.sdk.component.ba.oJ.so;
/* loaded from: classes3.dex */
public class oJ {
    public static boolean Pfn() {
        Pfn ex = so.cFZ().ex();
        if (ex != null && !TextUtils.isEmpty(ex.tB())) {
            return true;
        }
        return false;
    }

    private static long ZYk(int i10, Context context) {
        if (context == null) {
            return i10;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.freeMemory() / 1048576;
        long maxMemory = (runtime.maxMemory() / 1048576) - (runtime.totalMemory() / 1048576);
        if (maxMemory <= 0) {
            if (freeMemory <= 2) {
                return 1L;
            }
            if (freeMemory <= 10) {
                return Math.min(i10, 10);
            }
            return Math.min((freeMemory / 2) * 10, i10);
        }
        long j10 = ((freeMemory + maxMemory) - 10) / 2;
        if (j10 <= 2) {
            return 1L;
        }
        if (j10 <= 10) {
            return Math.min(i10, 10);
        }
        return Math.min(j10 * 10, i10);
    }

    public static boolean ba() {
        Pfn ex = so.cFZ().ex();
        if (ex != null && !TextUtils.isEmpty(ex.ba())) {
            return true;
        }
        return false;
    }

    public static boolean ex() {
        Pfn ex = so.cFZ().ex();
        if (ex != null && !TextUtils.isEmpty(ex.Pfn())) {
            return true;
        }
        return false;
    }

    public static long oJ(int i10, Context context) {
        return ZYk(i10, context);
    }

    public static boolean tB() {
        Pfn ex = so.cFZ().ex();
        if (ex != null && !TextUtils.isEmpty(ex.ex())) {
            return true;
        }
        return false;
    }

    public static boolean oJ() {
        Pfn ex = so.cFZ().ex();
        return (ex == null || TextUtils.isEmpty(ex.oJ())) ? false : true;
    }

    public static boolean ZYk() {
        Pfn ex = so.cFZ().ex();
        return (ex == null || TextUtils.isEmpty(ex.ZYk())) ? false : true;
    }
}
