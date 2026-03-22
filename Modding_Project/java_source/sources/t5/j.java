package t5;

import androidx.annotation.Nullable;
import b7.g0;
import com.google.android.exoplayer2.v0;
import java.io.EOFException;
import java.io.IOException;
import t5.b0;
/* compiled from: DummyTrackOutput.java */
/* loaded from: classes4.dex */
public final class j implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67175a = new byte[4096];

    @Override // t5.b0
    public void c(g0 g0Var, int i10, int i11) {
        g0Var.Q(i10);
    }

    @Override // t5.b0
    public int d(a7.f fVar, int i10, boolean z10, int i11) throws IOException {
        int read = fVar.read(this.f67175a, 0, Math.min(this.f67175a.length, i10));
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        return read;
    }

    @Override // t5.b0
    public void b(v0 v0Var) {
    }

    @Override // t5.b0
    public void e(long j10, int i10, int i11, int i12, @Nullable b0.a aVar) {
    }
}
