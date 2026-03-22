package tn;

import androidx.annotation.Nullable;
import cn.m0;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: DataChunk.java */
/* loaded from: classes8.dex */
public abstract class k extends e {

    /* renamed from: j  reason: collision with root package name */
    private byte[] f67507j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f67508k;

    public k(en.d dVar, en.g gVar, int i10, io.bidmachine.media3.common.a aVar, int i11, @Nullable Object obj, @Nullable byte[] bArr) {
        super(dVar, gVar, i10, aVar, i11, obj, -9223372036854775807L, -9223372036854775807L);
        k kVar;
        byte[] bArr2;
        if (bArr == null) {
            bArr2 = m0.f3619f;
            kVar = this;
        } else {
            kVar = this;
            bArr2 = bArr;
        }
        kVar.f67507j = bArr2;
    }

    private void g(int i10) {
        byte[] bArr = this.f67507j;
        if (bArr.length < i10 + 16384) {
            this.f67507j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public final void cancelLoad() {
        this.f67508k = true;
    }

    protected abstract void e(byte[] bArr, int i10) throws IOException;

    public byte[] f() {
        return this.f67507j;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public final void load() throws IOException {
        try {
            this.f67468i.b(this.f67461b);
            int i10 = 0;
            int i11 = 0;
            while (i10 != -1 && !this.f67508k) {
                g(i11);
                i10 = this.f67468i.read(this.f67507j, i11, 16384);
                if (i10 != -1) {
                    i11 += i10;
                }
            }
            if (!this.f67508k) {
                e(this.f67507j, i11);
            }
            en.f.a(this.f67468i);
        } catch (Throwable th2) {
            en.f.a(this.f67468i);
            throw th2;
        }
    }
}
