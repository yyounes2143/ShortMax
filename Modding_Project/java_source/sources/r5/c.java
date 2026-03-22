package r5;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
/* compiled from: CryptoInfo.java */
/* loaded from: classes4.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public byte[] f65561a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public byte[] f65562b;

    /* renamed from: c  reason: collision with root package name */
    public int f65563c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public int[] f65564d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public int[] f65565e;

    /* renamed from: f  reason: collision with root package name */
    public int f65566f;

    /* renamed from: g  reason: collision with root package name */
    public int f65567g;

    /* renamed from: h  reason: collision with root package name */
    public int f65568h;

    /* renamed from: i  reason: collision with root package name */
    private final MediaCodec.CryptoInfo f65569i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final b f65570j;

    /* compiled from: CryptoInfo.java */
    @RequiresApi(24)
    /* loaded from: classes4.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final MediaCodec.CryptoInfo f65571a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f65572b;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i10, int i11) {
            this.f65572b.set(i10, i11);
            this.f65571a.setPattern(this.f65572b);
        }

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f65571a = cryptoInfo;
            this.f65572b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }
    }

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f65569i = cryptoInfo;
        this.f65570j = s0.f2506a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f65569i;
    }

    public void b(int i10) {
        if (i10 == 0) {
            return;
        }
        if (this.f65564d == null) {
            int[] iArr = new int[1];
            this.f65564d = iArr;
            this.f65569i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f65564d;
        iArr2[0] = iArr2[0] + i10;
    }

    public void c(int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        this.f65566f = i10;
        this.f65564d = iArr;
        this.f65565e = iArr2;
        this.f65562b = bArr;
        this.f65561a = bArr2;
        this.f65563c = i11;
        this.f65567g = i12;
        this.f65568h = i13;
        MediaCodec.CryptoInfo cryptoInfo = this.f65569i;
        cryptoInfo.numSubSamples = i10;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i11;
        if (s0.f2506a >= 24) {
            ((b) b7.a.e(this.f65570j)).b(i12, i13);
        }
    }
}
