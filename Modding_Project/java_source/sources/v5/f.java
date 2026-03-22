package v5;

import androidx.annotation.Nullable;
import b7.g0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.y;
/* compiled from: ListChunk.java */
/* loaded from: classes4.dex */
final class f implements a {

    /* renamed from: a  reason: collision with root package name */
    public final ImmutableList<a> f68714a;

    /* renamed from: b  reason: collision with root package name */
    private final int f68715b;

    private f(int i10, ImmutableList<a> immutableList) {
        this.f68715b = i10;
        this.f68714a = immutableList;
    }

    @Nullable
    private static a a(int i10, int i11, g0 g0Var) {
        switch (i10) {
            case 1718776947:
                return g.d(i11, g0Var);
            case 1751742049:
                return c.b(g0Var);
            case 1752331379:
                return d.c(g0Var);
            case 1852994675:
                return h.a(g0Var);
            default:
                return null;
        }
    }

    public static f c(int i10, g0 g0Var) {
        a a10;
        ImmutableList.a aVar = new ImmutableList.a();
        int f10 = g0Var.f();
        int i11 = -2;
        while (g0Var.a() > 8) {
            int q10 = g0Var.q();
            int e10 = g0Var.e() + g0Var.q();
            g0Var.O(e10);
            if (q10 == 1414744396) {
                a10 = c(g0Var.q(), g0Var);
            } else {
                a10 = a(q10, i11, g0Var);
            }
            if (a10 != null) {
                if (a10.getType() == 1752331379) {
                    i11 = ((d) a10).b();
                }
                aVar.a(a10);
            }
            g0Var.P(e10);
            g0Var.O(f10);
        }
        return new f(i10, aVar.k());
    }

    @Nullable
    public <T extends a> T b(Class<T> cls) {
        y<a> it = this.f68714a.iterator();
        while (it.hasNext()) {
            T t10 = (T) it.next();
            if (t10.getClass() == cls) {
                return t10;
            }
        }
        return null;
    }

    @Override // v5.a
    public int getType() {
        return this.f68715b;
    }
}
