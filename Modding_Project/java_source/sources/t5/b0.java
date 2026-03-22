package t5;

import androidx.annotation.Nullable;
import b7.g0;
import com.google.android.exoplayer2.v0;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: TrackOutput.java */
/* loaded from: classes4.dex */
public interface b0 {

    /* compiled from: TrackOutput.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f67100a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f67101b;

        /* renamed from: c  reason: collision with root package name */
        public final int f67102c;

        /* renamed from: d  reason: collision with root package name */
        public final int f67103d;

        public a(int i10, byte[] bArr, int i11, int i12) {
            this.f67100a = i10;
            this.f67101b = bArr;
            this.f67102c = i11;
            this.f67103d = i12;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f67100a == aVar.f67100a && this.f67102c == aVar.f67102c && this.f67103d == aVar.f67103d && Arrays.equals(this.f67101b, aVar.f67101b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.f67100a * 31) + Arrays.hashCode(this.f67101b)) * 31) + this.f67102c) * 31) + this.f67103d;
        }
    }

    default void a(g0 g0Var, int i10) {
        c(g0Var, i10, 0);
    }

    void b(v0 v0Var);

    void c(g0 g0Var, int i10, int i11);

    int d(a7.f fVar, int i10, boolean z10, int i11) throws IOException;

    void e(long j10, int i10, int i11, int i12, @Nullable a aVar);

    default int f(a7.f fVar, int i10, boolean z10) throws IOException {
        return d(fVar, i10, z10, 0);
    }
}
