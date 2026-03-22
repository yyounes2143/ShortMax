package on;

import androidx.annotation.Nullable;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.image.ImageDecoderException;
import on.a;
/* compiled from: ImageDecoder.java */
/* loaded from: classes8.dex */
public interface c extends fn.d<DecoderInputBuffer, d, ImageDecoderException> {

    /* compiled from: ImageDecoder.java */
    /* loaded from: classes8.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f64310a = new a.c();

        int a(io.bidmachine.media3.common.a aVar);

        c b();
    }

    void b(DecoderInputBuffer decoderInputBuffer) throws ImageDecoderException;

    @Override // fn.d
    @Nullable
    d dequeueOutputBuffer() throws ImageDecoderException;
}
