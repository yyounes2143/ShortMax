package n6;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import o5.b0;
/* compiled from: EmptySampleStream.java */
/* loaded from: classes4.dex */
public final class g implements q {
    @Override // n6.q
    public int a(b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        decoderInputBuffer.k(4);
        return -4;
    }

    @Override // n6.q
    public boolean isReady() {
        return true;
    }

    @Override // n6.q
    public int skipData(long j10) {
        return 0;
    }

    @Override // n6.q
    public void maybeThrowError() {
    }
}
