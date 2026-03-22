package sn;

import gn.c0;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import java.io.IOException;
/* compiled from: SampleStream.java */
/* loaded from: classes8.dex */
public interface s {
    int c(c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10);

    boolean isReady();

    void maybeThrowError() throws IOException;

    int skipData(long j10);
}
