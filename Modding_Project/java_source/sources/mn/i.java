package mn;

import android.util.SparseArray;
import cn.h0;
/* compiled from: TimestampAdjusterProvider.java */
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<h0> f62551a = new SparseArray<>();

    public h0 a(int i10) {
        h0 h0Var = this.f62551a.get(i10);
        if (h0Var == null) {
            h0 h0Var2 = new h0(9223372036854775806L);
            this.f62551a.put(i10, h0Var2);
            return h0Var2;
        }
        return h0Var;
    }

    public void b() {
        this.f62551a.clear();
    }
}
