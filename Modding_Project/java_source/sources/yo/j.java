package yo;

import androidx.annotation.Nullable;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
import java.nio.ByteBuffer;
/* compiled from: SimpleSubtitleDecoder.java */
/* loaded from: classes8.dex */
public abstract class j extends fn.f<o, p, SubtitleDecoderException> implements l {

    /* renamed from: o  reason: collision with root package name */
    private final String f71080o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleSubtitleDecoder.java */
    /* loaded from: classes8.dex */
    public class a extends p {
        a() {
        }

        @Override // fn.e
        public void l() {
            j.this.p(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(String str) {
        super(new o[2], new p[2]);
        this.f71080o = str;
        s(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    /* renamed from: u */
    public final o e() {
        return new o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    /* renamed from: v */
    public final p f() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    /* renamed from: w */
    public final SubtitleDecoderException g(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // fn.f
    @Nullable
    /* renamed from: x */
    public final SubtitleDecoderException h(o oVar, p pVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(oVar.f55345d);
            pVar.m(oVar.f55347f, y(byteBuffer.array(), byteBuffer.limit(), z10), oVar.f71096j);
            pVar.f51843d = false;
            return null;
        } catch (SubtitleDecoderException e10) {
            return e10;
        }
    }

    protected abstract k y(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException;

    @Override // yo.l
    public void setPositionUs(long j10) {
    }
}
