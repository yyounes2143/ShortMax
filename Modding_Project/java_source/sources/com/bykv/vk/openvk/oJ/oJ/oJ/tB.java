package com.bykv.vk.openvk.oJ.oJ.oJ;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import java.io.File;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class tB {
    private static dLZ Pfn = null;
    private static Context ZYk = null;

    /* renamed from: ba  reason: collision with root package name */
    private static int f11014ba = 1;
    private static boolean ex = false;
    public static boolean oJ = false;
    private static String tB;

    public static boolean Pfn() {
        return oJ;
    }

    public static String ZYk() {
        if (TextUtils.isEmpty(tB)) {
            try {
                File file = new File(oJ().getFilesDir(), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                tB = file.getAbsolutePath();
            } catch (Throwable unused) {
            }
        }
        return tB;
    }

    public static int ba() {
        return f11014ba;
    }

    public static dLZ ex() {
        if (Pfn == null) {
            dLZ.oJ oJVar = new dLZ.oJ("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            Pfn = oJVar.oJ(10000L, timeUnit).ZYk(10000L, timeUnit).tB(10000L, timeUnit).oJ();
        }
        return Pfn;
    }

    public static Context oJ() {
        return ZYk;
    }

    public static boolean tB() {
        return ex;
    }

    public static void oJ(Context context, String str) {
        ZYk = context;
        tB = str;
    }

    public static void oJ(boolean z10) {
        ex = z10;
    }

    public static void oJ(dLZ dlz) {
        Pfn = dlz;
    }

    public static void oJ(int i10) {
        f11014ba = i10;
    }
}
