package t5;

import androidx.annotation.Nullable;
import b7.g0;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import k6.b;
/* compiled from: Id3Peeker.java */
/* loaded from: classes4.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final g0 f67199a = new g0(10);

    @Nullable
    public Metadata a(l lVar, @Nullable b.a aVar) throws IOException {
        Metadata metadata = null;
        int i10 = 0;
        while (true) {
            try {
                lVar.peekFully(this.f67199a.d(), 0, 10);
                this.f67199a.P(0);
                if (this.f67199a.G() != 4801587) {
                    break;
                }
                this.f67199a.Q(3);
                int C = this.f67199a.C();
                int i11 = C + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f67199a.d(), 0, bArr, 0, 10);
                    lVar.peekFully(bArr, 10, C);
                    metadata = new k6.b(aVar).e(bArr, i11);
                } else {
                    lVar.advancePeekPosition(C);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        lVar.resetPeekPosition();
        lVar.advancePeekPosition(i10);
        return metadata;
    }
}
