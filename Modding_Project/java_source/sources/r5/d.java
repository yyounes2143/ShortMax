package r5;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;
/* compiled from: Decoder.java */
/* loaded from: classes4.dex */
public interface d<I, O, E extends DecoderException> {
    @Nullable
    I dequeueInputBuffer() throws DecoderException;

    @Nullable
    O dequeueOutputBuffer() throws DecoderException;

    void flush();

    void queueInputBuffer(I i10) throws DecoderException;

    void release();
}
