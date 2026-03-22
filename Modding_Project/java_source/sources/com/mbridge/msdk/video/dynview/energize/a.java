package com.mbridge.msdk.video.dynview.energize;

import android.view.View;
import com.mbridge.msdk.video.dynview.c;
import com.mbridge.msdk.video.dynview.listener.e;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: DataEnergize.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile a f30709b;

    /* renamed from: a  reason: collision with root package name */
    public com.mbridge.msdk.video.dynview.inter.a f30710a;

    private a() {
    }

    public static a a() {
        a aVar;
        if (f30709b == null) {
            synchronized (a.class) {
                try {
                    if (f30709b == null) {
                        f30709b = new a();
                    }
                    aVar = f30709b;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return aVar;
        }
        return f30709b;
    }

    private void b(c cVar, View view, Map map, e eVar) {
        new com.mbridge.msdk.video.dynview.wrapper.a().b(cVar, view, map, eVar);
    }

    private void c(c cVar, View view, Map map, e eVar) {
        new com.mbridge.msdk.video.dynview.wrapper.a().c(cVar, view, map, eVar);
    }

    public void d() {
        com.mbridge.msdk.video.dynview.inter.a aVar = this.f30710a;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void b() {
        com.mbridge.msdk.video.dynview.inter.a aVar = this.f30710a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void c() {
        com.mbridge.msdk.video.dynview.inter.a aVar = this.f30710a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void a(View view, c cVar, Map map, e eVar) {
        int g10 = cVar.g();
        if (g10 == 1) {
            a(cVar, view, map, eVar);
        } else if (g10 == 2) {
            b(cVar, view, map, eVar);
        } else if (g10 == 4) {
            a(cVar, view, eVar);
        } else if (g10 != 5) {
            eVar.a(view, new ArrayList());
        } else {
            c(cVar, view, map, eVar);
        }
    }

    private void a(c cVar, View view, Map map, e eVar) {
        com.mbridge.msdk.video.dynview.wrapper.a aVar = new com.mbridge.msdk.video.dynview.wrapper.a();
        aVar.a(cVar, view, map, eVar);
        this.f30710a = aVar.f30860l;
    }

    private void a(c cVar, View view, e eVar) {
        new com.mbridge.msdk.video.dynview.wrapper.a().a(cVar, view, eVar);
    }
}
