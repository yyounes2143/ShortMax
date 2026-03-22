package ao;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import po.h;
/* compiled from: Id3Peeker.java */
/* loaded from: classes8.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final cn.b0 f1794a = new cn.b0(10);

    @Nullable
    public zm.t a(q qVar, @Nullable h.a aVar) throws IOException {
        zm.t tVar = null;
        int i10 = 0;
        while (true) {
            try {
                qVar.peekFully(this.f1794a.e(), 0, 10);
                this.f1794a.W(0);
                if (this.f1794a.K() != 4801587) {
                    break;
                }
                this.f1794a.X(3);
                int G = this.f1794a.G();
                int i11 = G + 10;
                if (tVar == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f1794a.e(), 0, bArr, 0, 10);
                    qVar.peekFully(bArr, 10, G);
                    tVar = new po.h(aVar).e(bArr, i11);
                } else {
                    qVar.advancePeekPosition(G);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        qVar.resetPeekPosition();
        qVar.advancePeekPosition(i10);
        return tVar;
    }
}
