package n6;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.io.IOException;
import o5.b0;
/* compiled from: SampleStream.java */
/* loaded from: classes4.dex */
public interface q {
    int a(b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10);

    boolean isReady();

    void maybeThrowError() throws IOException;

    int skipData(long j10);
}
