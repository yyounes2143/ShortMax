package sn;

import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
/* compiled from: EmptySampleStream.java */
/* loaded from: classes8.dex */
public final class h implements s {
    @Override // sn.s
    public int c(c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        decoderInputBuffer.k(4);
        return -4;
    }

    @Override // sn.s
    public boolean isReady() {
        return true;
    }

    @Override // sn.s
    public int skipData(long j10) {
        return 0;
    }

    @Override // sn.s
    public void maybeThrowError() {
    }
}
