package com.mbridge.msdk.foundation.same.image;

import android.content.Context;
import android.graphics.Bitmap;
import com.mbridge.msdk.foundation.tools.u0;
/* compiled from: CommonImageLoader.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f27089a;

    protected b(Context context) {
    }

    public void a() {
    }

    public void b() {
    }

    public boolean c(String str) {
        if (u0.k(str)) {
            return false;
        }
        return d.a().d(str);
    }

    public void a(String str) {
    }

    public Bitmap b(String str) {
        if (u0.k(str)) {
            return null;
        }
        return d.a().c(str);
    }

    public static b a(Context context) {
        if (f27089a == null) {
            f27089a = new b(context);
        }
        return f27089a;
    }

    public void a(String str, c cVar) {
        d.a().b(str, null, cVar);
    }
}
