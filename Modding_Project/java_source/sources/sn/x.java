package sn;

import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import zm.b0;
/* compiled from: TrackGroupArray.java */
/* loaded from: classes8.dex */
public final class x {

    /* renamed from: d  reason: collision with root package name */
    public static final x f66545d = new x(new b0[0]);

    /* renamed from: e  reason: collision with root package name */
    private static final String f66546e = m0.C0(0);

    /* renamed from: a  reason: collision with root package name */
    public final int f66547a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<b0> f66548b;

    /* renamed from: c  reason: collision with root package name */
    private int f66549c;

    public x(b0... b0VarArr) {
        this.f66548b = ImmutableList.v(b0VarArr);
        this.f66547a = b0VarArr.length;
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer e(b0 b0Var) {
        return Integer.valueOf(b0Var.f71811c);
    }

    private void f() {
        int i10 = 0;
        while (i10 < this.f66548b.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f66548b.size(); i12++) {
                if (this.f66548b.get(i10).equals(this.f66548b.get(i12))) {
                    cn.r.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public b0 b(int i10) {
        return this.f66548b.get(i10);
    }

    public ImmutableList<Integer> c() {
        return ImmutableList.u(Lists.l(this.f66548b, new h7.e() { // from class: sn.w
            @Override // h7.e
            public final Object apply(Object obj) {
                Integer e10;
                e10 = x.e((b0) obj);
                return e10;
            }
        }));
    }

    public int d(b0 b0Var) {
        int indexOf = this.f66548b.indexOf(b0Var);
        if (indexOf < 0) {
            return -1;
        }
        return indexOf;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        if (this.f66547a == xVar.f66547a && this.f66548b.equals(xVar.f66548b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f66549c == 0) {
            this.f66549c = this.f66548b.hashCode();
        }
        return this.f66549c;
    }

    public String toString() {
        return this.f66548b.toString();
    }
}
