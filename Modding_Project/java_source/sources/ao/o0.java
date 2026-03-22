package ao;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: TrackOutput.java */
/* loaded from: classes8.dex */
public interface o0 {

    /* compiled from: TrackOutput.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1914a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f1915b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1916c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1917d;

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.f1914a = i10;
            this.f1915b = bArr;
            this.f1916c = i11;
            this.f1917d = i12;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f1914a == aVar.f1914a && this.f1916c == aVar.f1916c && this.f1917d == aVar.f1917d && Arrays.equals(this.f1915b, aVar.f1915b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.f1914a * 31) + Arrays.hashCode(this.f1915b)) * 31) + this.f1916c) * 31) + this.f1917d;
        }
    }

    default void a(cn.b0 b0Var, int i10) {
        f(b0Var, i10, 0);
    }

    default int b(zm.h hVar, int i10, boolean z10) throws IOException {
        return e(hVar, i10, z10, 0);
    }

    void c(long j10, int i10, int i11, int i12, @Nullable a aVar);

    int e(zm.h hVar, int i10, boolean z10, int i11) throws IOException;

    void f(cn.b0 b0Var, int i10, int i11);

    void g(io.bidmachine.media3.common.a aVar);

    default void d(long j10) {
    }
}
