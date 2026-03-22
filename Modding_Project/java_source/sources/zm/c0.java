package zm;

import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import java.util.Collections;
import java.util.List;
/* compiled from: TrackSelectionOverride.java */
/* loaded from: classes8.dex */
public final class c0 {

    /* renamed from: c  reason: collision with root package name */
    private static final String f71832c = m0.C0(0);

    /* renamed from: d  reason: collision with root package name */
    private static final String f71833d = m0.C0(1);

    /* renamed from: a  reason: collision with root package name */
    public final b0 f71834a;

    /* renamed from: b  reason: collision with root package name */
    public final ImmutableList<Integer> f71835b;

    public c0(b0 b0Var, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= b0Var.f71809a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f71834a = b0Var;
        this.f71835b = ImmutableList.u(list);
    }

    public int a() {
        return this.f71834a.f71811c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        if (this.f71834a.equals(c0Var.f71834a) && this.f71835b.equals(c0Var.f71835b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f71834a.hashCode() + (this.f71835b.hashCode() * 31);
    }
}
