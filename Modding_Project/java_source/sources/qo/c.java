package qo;

import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.g;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import qo.c;
import zm.t;
/* compiled from: SlowMotionData.java */
/* loaded from: classes8.dex */
public final class c implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final List<a> f65391a;

    /* compiled from: SlowMotionData.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        public static final Comparator<a> f65392d = new Comparator() { // from class: qo.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = c.a.b((c.a) obj, (c.a) obj2);
                return b10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f65393a;

        /* renamed from: b  reason: collision with root package name */
        public final long f65394b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65395c;

        public a(long j10, long j11, int i10) {
            boolean z10;
            if (j10 < j11) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            this.f65393a = j10;
            this.f65394b = j11;
            this.f65395c = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(a aVar, a aVar2) {
            return g.j().e(aVar.f65393a, aVar2.f65393a).e(aVar.f65394b, aVar2.f65394b).d(aVar.f65395c, aVar2.f65395c).i();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f65393a == aVar.f65393a && this.f65394b == aVar.f65394b && this.f65395c == aVar.f65395c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f65393a), Long.valueOf(this.f65394b), Integer.valueOf(this.f65395c));
        }

        public String toString() {
            return m0.G("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f65393a), Long.valueOf(this.f65394b), Integer.valueOf(this.f65395c));
        }
    }

    public c(List<a> list) {
        this.f65391a = list;
        cn.a.a(!b(list));
    }

    private static boolean b(List<a> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j10 = list.get(0).f65394b;
        for (int i10 = 1; i10 < list.size(); i10++) {
            if (list.get(i10).f65393a < j10) {
                return true;
            }
            j10 = list.get(i10).f65394b;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c.class == obj.getClass()) {
            return this.f65391a.equals(((c) obj).f65391a);
        }
        return false;
    }

    public int hashCode() {
        return this.f65391a.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f65391a;
    }
}
