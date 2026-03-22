package zm;

import androidx.annotation.Nullable;
import cn.m0;
import java.util.Arrays;
import java.util.List;
import zm.s;
/* compiled from: Metadata.java */
/* loaded from: classes8.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final a[] f72196a;

    /* renamed from: b  reason: collision with root package name */
    public final long f72197b;

    public t(a... aVarArr) {
        this(-9223372036854775807L, aVarArr);
    }

    public t a(a... aVarArr) {
        if (aVarArr.length == 0) {
            return this;
        }
        return new t(this.f72197b, (a[]) m0.X0(this.f72196a, aVarArr));
    }

    public t b(@Nullable t tVar) {
        if (tVar == null) {
            return this;
        }
        return a(tVar.f72196a);
    }

    public t c(long j10) {
        if (this.f72197b == j10) {
            return this;
        }
        return new t(j10, this.f72196a);
    }

    public a d(int i10) {
        return this.f72196a[i10];
    }

    public int e() {
        return this.f72196a.length;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (Arrays.equals(this.f72196a, tVar.f72196a) && this.f72197b == tVar.f72197b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f72196a) * 31) + com.google.common.primitives.f.a(this.f72197b);
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("entries=");
        sb2.append(Arrays.toString(this.f72196a));
        if (this.f72197b == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + this.f72197b;
        }
        sb2.append(str);
        return sb2.toString();
    }

    public t(long j10, a... aVarArr) {
        this.f72197b = j10;
        this.f72196a = aVarArr;
    }

    public t(List<? extends a> list) {
        this((a[]) list.toArray(new a[0]));
    }

    public t(long j10, List<? extends a> list) {
        this(j10, (a[]) list.toArray(new a[0]));
    }

    /* compiled from: Metadata.java */
    /* loaded from: classes8.dex */
    public interface a {
        @Nullable
        default byte[] q() {
            return null;
        }

        @Nullable
        default io.bidmachine.media3.common.a r() {
            return null;
        }

        default void a(s.b bVar) {
        }
    }
}
