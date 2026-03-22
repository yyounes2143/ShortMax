package fn;

import androidx.annotation.Nullable;
import io.bidmachine.media3.decoder.DecoderException;
/* compiled from: Decoder.java */
/* loaded from: classes8.dex */
public interface d<I, O, E extends DecoderException> {
    void a(long j10);

    @Nullable
    I dequeueInputBuffer() throws DecoderException;

    @Nullable
    O dequeueOutputBuffer() throws DecoderException;

    void flush();

    void queueInputBuffer(I i10) throws DecoderException;

    void release();
}
