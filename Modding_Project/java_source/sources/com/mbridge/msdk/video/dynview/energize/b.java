package com.mbridge.msdk.video.dynview.energize;

import android.view.View;
import com.mbridge.msdk.video.dynview.c;
import java.util.Map;
/* compiled from: UIEnergize.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f30711a;

    private b() {
    }

    public static b a() {
        b bVar;
        if (f30711a == null) {
            synchronized (b.class) {
                try {
                    if (f30711a == null) {
                        f30711a = new b();
                    }
                    bVar = f30711a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return bVar;
        }
        return f30711a;
    }

    private void b(View view, c cVar) {
        new com.mbridge.msdk.video.dynview.wrapper.b().b(view, cVar);
    }

    private void c(View view, c cVar, Map<String, Object> map) {
        new com.mbridge.msdk.video.dynview.wrapper.b().a(view, cVar, map);
    }

    private void b(View view, c cVar, Map<String, Object> map) {
        new com.mbridge.msdk.video.dynview.wrapper.b().b(view, cVar, map);
    }

    public void a(View view, c cVar, Map<String, Object> map) {
        if (cVar == null) {
            return;
        }
        int g10 = cVar.g();
        if (g10 == 1) {
            a(view, map);
        } else if (g10 == 2) {
            c(view, cVar, map);
        } else if (g10 == 3) {
            b(view, cVar);
        } else if (g10 == 4) {
            b(view, cVar, map);
        } else if (g10 != 5) {
        } else {
            a(view, cVar);
        }
    }

    private void a(View view, c cVar) {
        new com.mbridge.msdk.video.dynview.wrapper.b().a(view, cVar);
    }

    private void a(View view, Map<String, Object> map) {
        new com.mbridge.msdk.video.dynview.wrapper.b().a(view, map);
    }
}
