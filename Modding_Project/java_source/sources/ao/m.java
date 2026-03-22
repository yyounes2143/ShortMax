package ao;

import androidx.annotation.Nullable;
import ao.o0;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: DiscardingTrackOutput.java */
/* loaded from: classes8.dex */
public final class m implements o0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1893a = new byte[4096];

    @Override // ao.o0
    public int e(zm.h hVar, int i10, boolean z10, int i11) throws IOException {
        int read = hVar.read(this.f1893a, 0, Math.min(this.f1893a.length, i10));
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        return read;
    }

    @Override // ao.o0
    public void f(cn.b0 b0Var, int i10, int i11) {
        b0Var.X(i10);
    }

    @Override // ao.o0
    public void g(io.bidmachine.media3.common.a aVar) {
    }

    @Override // ao.o0
    public void c(long j10, int i10, int i11, int i12, @Nullable o0.a aVar) {
    }
}
