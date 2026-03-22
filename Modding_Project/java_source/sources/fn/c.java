package fn;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
/* compiled from: CryptoInfo.java */
/* loaded from: classes8.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public byte[] f51829a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public byte[] f51830b;

    /* renamed from: c  reason: collision with root package name */
    public int f51831c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public int[] f51832d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public int[] f51833e;

    /* renamed from: f  reason: collision with root package name */
    public int f51834f;

    /* renamed from: g  reason: collision with root package name */
    public int f51835g;

    /* renamed from: h  reason: collision with root package name */
    public int f51836h;

    /* renamed from: i  reason: collision with root package name */
    private final MediaCodec.CryptoInfo f51837i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final b f51838j;

    /* compiled from: CryptoInfo.java */
    @RequiresApi(24)
    /* loaded from: classes8.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final MediaCodec.CryptoInfo f51839a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f51840b;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i10, int i11) {
            this.f51840b.set(i10, i11);
            this.f51839a.setPattern(this.f51840b);
        }

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f51839a = cryptoInfo;
            this.f51840b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f51837i = cryptoInfo;
        this.f51838j = m0.f3614a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f51837i;
    }

    public void b(int i10) {
        if (i10 == 0) {
            return;
        }
        if (this.f51832d == null) {
            int[] iArr = new int[1];
            this.f51832d = iArr;
            this.f51837i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f51832d;
        iArr2[0] = iArr2[0] + i10;
    }

    public void c(int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        this.f51834f = i10;
        this.f51832d = iArr;
        this.f51833e = iArr2;
        this.f51830b = bArr;
        this.f51829a = bArr2;
        this.f51831c = i11;
        this.f51835g = i12;
        this.f51836h = i13;
        MediaCodec.CryptoInfo cryptoInfo = this.f51837i;
        cryptoInfo.numSubSamples = i10;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i11;
        if (m0.f3614a >= 24) {
            ((b) cn.a.e(this.f51838j)).b(i12, i13);
        }
    }
}
