package x4;

import com.facebook.soloader.t;
import com.facebook.soloader.w;
import java.util.concurrent.atomic.AtomicReference;
import y4.h;
/* compiled from: ObserverHolder.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<a[]> f70400a = new AtomicReference<>();

    public static void a(Throwable th2) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.l(th2);
            }
        }
    }

    public static void b() {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.j();
            }
        }
    }

    public static void c(Throwable th2, boolean z10) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.f(th2, z10);
            }
        }
    }

    public static void d(String str, int i10) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.h(str, i10);
            }
        }
    }

    public static void e(Throwable th2, boolean z10) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.k(th2, z10);
            }
        }
    }

    public static void f(String str, String str2, int i10) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.c(str, str2, i10);
            }
        }
    }

    public static void g(Throwable th2) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.e(th2);
            }
        }
    }

    public static void h(h hVar) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.i(hVar);
            }
        }
    }

    public static void i(Throwable th2) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.d(th2);
            }
        }
    }

    public static void j(t tVar, String str, int i10) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.b(tVar, str, i10);
            }
        }
    }

    public static void k(Throwable th2) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.a(th2);
            }
        }
    }

    public static void l(w wVar) {
        a[] aVarArr = f70400a.get();
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.g(wVar);
            }
        }
    }
}
