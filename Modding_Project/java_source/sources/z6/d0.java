package z6;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.Collections;
import java.util.List;
/* compiled from: TrackSelectionOverride.java */
/* loaded from: classes4.dex */
public final class d0 implements com.google.android.exoplayer2.g {

    /* renamed from: c  reason: collision with root package name */
    public static final g.a<d0> f71362c = new g.a() { // from class: z6.c0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            d0 d10;
            d10 = d0.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final n6.u f71363a;

    /* renamed from: b  reason: collision with root package name */
    public final ImmutableList<Integer> f71364b;

    public d0(n6.u uVar, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= uVar.f62833a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f71363a = uVar;
        this.f71364b = ImmutableList.u(list);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d0 d(Bundle bundle) {
        return new d0(n6.u.f62832f.fromBundle((Bundle) b7.a.e(bundle.getBundle(c(0)))), Ints.c((int[]) b7.a.e(bundle.getIntArray(c(1)))));
    }

    public int b() {
        return this.f71363a.f62835c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d0.class != obj.getClass()) {
            return false;
        }
        d0 d0Var = (d0) obj;
        if (this.f71363a.equals(d0Var.f71363a) && this.f71364b.equals(d0Var.f71364b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f71363a.hashCode() + (this.f71364b.hashCode() * 31);
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(c(0), this.f71363a.toBundle());
        bundle.putIntArray(c(1), Ints.m(this.f71364b));
        return bundle;
    }
}
