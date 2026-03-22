package p6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;
/* compiled from: SimpleSubtitleDecoder.java */
/* loaded from: classes4.dex */
public abstract class h extends r5.h<m, n, SubtitleDecoderException> implements j {

    /* renamed from: n  reason: collision with root package name */
    private final String f64781n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleSubtitleDecoder.java */
    /* loaded from: classes4.dex */
    public class a extends n {
        a() {
        }

        @Override // r5.f
        public void l() {
            h.this.n(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(String str) {
        super(new m[2], new n[2]);
        this.f64781n = str;
        q(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r5.h
    /* renamed from: s */
    public final m c() {
        return new m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r5.h
    /* renamed from: t */
    public final n d() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r5.h
    /* renamed from: u */
    public final SubtitleDecoderException e(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r5.h
    @Nullable
    /* renamed from: v */
    public final SubtitleDecoderException f(m mVar, n nVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) b7.a.e(mVar.f17473c);
            nVar.m(mVar.f17475e, w(byteBuffer.array(), byteBuffer.limit(), z10), mVar.f64795i);
            nVar.c(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e10) {
            return e10;
        }
    }

    protected abstract i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException;

    @Override // p6.j
    public void setPositionUs(long j10) {
    }
}
