package on;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import fn.f;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.image.ImageDecoderException;
import java.io.IOException;
import java.nio.ByteBuffer;
import on.c;
import zm.u;
/* compiled from: BitmapFactoryImageDecoder.java */
/* loaded from: classes8.dex */
public final class a extends f<DecoderInputBuffer, d, ImageDecoderException> implements on.c {

    /* renamed from: o  reason: collision with root package name */
    private final b f64307o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapFactoryImageDecoder.java */
    /* renamed from: on.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0888a extends d {
        C0888a() {
        }

        @Override // fn.e
        public void l() {
            a.this.p(this);
        }
    }

    /* compiled from: BitmapFactoryImageDecoder.java */
    @VisibleForTesting(otherwise = 2)
    /* loaded from: classes8.dex */
    public interface b {
        Bitmap a(byte[] bArr, int i10) throws ImageDecoderException;
    }

    /* compiled from: BitmapFactoryImageDecoder.java */
    /* loaded from: classes8.dex */
    public static final class c implements c.a {

        /* renamed from: b  reason: collision with root package name */
        private final b f64309b = new b() { // from class: on.b
            @Override // on.a.b
            public final Bitmap a(byte[] bArr, int i10) {
                Bitmap t10;
                t10 = a.t(bArr, i10);
                return t10;
            }
        };

        @Override // on.c.a
        public int a(io.bidmachine.media3.common.a aVar) {
            String str = aVar.f55174o;
            if (str != null && u.q(str)) {
                if (m0.E0(aVar.f55174o)) {
                    return i2.k(4);
                }
                return i2.k(1);
            }
            return i2.k(0);
        }

        @Override // on.c.a
        /* renamed from: d */
        public a b() {
            return new a(this.f64309b, null);
        }
    }

    /* synthetic */ a(b bVar, C0888a c0888a) {
        this(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Bitmap t(byte[] bArr, int i10) throws ImageDecoderException {
        return x(bArr, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap x(byte[] bArr, int i10) throws ImageDecoderException {
        try {
            return en.b.a(bArr, i10, null, -1);
        } catch (ParserException e10) {
            throw new ImageDecoderException("Could not decode image data with BitmapFactory. (data.length = " + bArr.length + ", input length = " + i10 + ")", e10);
        } catch (IOException e11) {
            throw new ImageDecoderException(e11);
        }
    }

    @Override // fn.f, fn.d
    @Nullable
    public /* bridge */ /* synthetic */ d dequeueOutputBuffer() throws ImageDecoderException {
        return (d) super.dequeueOutputBuffer();
    }

    @Override // fn.f
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    /* renamed from: v */
    public d f() {
        return new C0888a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    /* renamed from: w */
    public ImageDecoderException g(Throwable th2) {
        return new ImageDecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    @Nullable
    /* renamed from: y */
    public ImageDecoderException h(DecoderInputBuffer decoderInputBuffer, d dVar, boolean z10) {
        boolean z11;
        try {
            ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(decoderInputBuffer.f55345d);
            cn.a.g(byteBuffer.hasArray());
            if (byteBuffer.arrayOffset() == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.a(z11);
            dVar.f64311e = this.f64307o.a(byteBuffer.array(), byteBuffer.remaining());
            dVar.f51841b = decoderInputBuffer.f55347f;
            return null;
        } catch (ImageDecoderException e10) {
            return e10;
        }
    }

    private a(b bVar) {
        super(new DecoderInputBuffer[1], new d[1]);
        this.f64307o = bVar;
    }
}
