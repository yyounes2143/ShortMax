package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: LoadUrlTool.java */
/* loaded from: classes5.dex */
public class d {
    public static String a(String str) {
        String b10 = b(str);
        if (TextUtils.isEmpty(b10)) {
            return "";
        }
        return b1.a(b10);
    }

    public static String b(String str) {
        int B;
        g b10 = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(str)) {
            B = b10.p0();
        } else {
            B = b10.B();
        }
        return com.mbridge.msdk.foundation.same.net.utils.d.h().a(str, B);
    }
}
