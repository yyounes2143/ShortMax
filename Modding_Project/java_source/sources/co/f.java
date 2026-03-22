package co;

import androidx.annotation.Nullable;
import cn.b0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.y;
/* compiled from: ListChunk.java */
/* loaded from: classes8.dex */
final class f implements a {

    /* renamed from: a  reason: collision with root package name */
    public final ImmutableList<a> f3722a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3723b;

    private f(int i10, ImmutableList<a> immutableList) {
        this.f3723b = i10;
        this.f3722a = immutableList;
    }

    @Nullable
    private static a a(int i10, int i11, b0 b0Var) {
        switch (i10) {
            case 1718776947:
                return g.d(i11, b0Var);
            case 1751742049:
                return c.b(b0Var);
            case 1752331379:
                return d.c(b0Var);
            case 1852994675:
                return h.a(b0Var);
            default:
                return null;
        }
    }

    public static f c(int i10, b0 b0Var) {
        a a10;
        ImmutableList.a aVar = new ImmutableList.a();
        int g10 = b0Var.g();
        int i11 = -2;
        while (b0Var.a() > 8) {
            int u10 = b0Var.u();
            int f10 = b0Var.f() + b0Var.u();
            b0Var.V(f10);
            if (u10 == 1414744396) {
                a10 = c(b0Var.u(), b0Var);
            } else {
                a10 = a(u10, i11, b0Var);
            }
            if (a10 != null) {
                if (a10.getType() == 1752331379) {
                    i11 = ((d) a10).b();
                }
                aVar.a(a10);
            }
            b0Var.W(f10);
            b0Var.V(g10);
        }
        return new f(i10, aVar.k());
    }

    @Nullable
    public <T extends a> T b(Class<T> cls) {
        y<a> it = this.f3722a.iterator();
        while (it.hasNext()) {
            T t10 = (T) it.next();
            if (t10.getClass() == cls) {
                return t10;
            }
        }
        return null;
    }

    @Override // co.a
    public int getType() {
        return this.f3723b;
    }
}
