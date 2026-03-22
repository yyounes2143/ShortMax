package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.List;
/* compiled from: NativeVideoTrackingReport.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28096a = "com.mbridge.msdk.mbnative.controller.e";

    public static void a(Context context, String str) {
        if (context != null) {
            try {
                n a10 = n.a(g.a(context));
                if (!TextUtils.isEmpty(str) && a10 != null && a10.a() > 0) {
                    List<com.mbridge.msdk.foundation.entity.n> a11 = a10.a("m_download_end");
                    List<com.mbridge.msdk.foundation.entity.n> a12 = a10.a("2000021");
                    List<com.mbridge.msdk.foundation.entity.n> a13 = a10.a("m_download_end");
                    o.e(a12);
                    o.a(a11);
                    o.b(a13);
                }
            } catch (Exception e10) {
                p0.b(f28096a, e10.getMessage());
            }
        }
    }
}
