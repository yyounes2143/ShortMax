package io.bidmachine.media3.exoplayer.audio;

import cn.m0;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
/* compiled from: TrimmingAudioProcessor.java */
/* loaded from: classes8.dex */
final class o extends io.bidmachine.media3.common.audio.b {

    /* renamed from: i  reason: collision with root package name */
    private int f55590i;

    /* renamed from: j  reason: collision with root package name */
    private int f55591j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55592k;

    /* renamed from: l  reason: collision with root package name */
    private int f55593l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f55594m = m0.f3619f;

    /* renamed from: n  reason: collision with root package name */
    private int f55595n;

    /* renamed from: o  reason: collision with root package name */
    private long f55596o;

    @Override // io.bidmachine.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = aVar.f55217c;
        if (i10 != 2 && i10 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        this.f55592k = true;
        if (this.f55590i == 0 && this.f55591j == 0) {
            return AudioProcessor.a.f55214e;
        }
        return aVar;
    }

    @Override // io.bidmachine.media3.common.audio.b
    protected void d() {
        if (this.f55592k) {
            this.f55592k = false;
            int i10 = this.f55591j;
            int i11 = this.f55225b.f55218d;
            this.f55594m = new byte[i10 * i11];
            this.f55593l = this.f55590i * i11;
        }
        this.f55595n = 0;
    }

    @Override // io.bidmachine.media3.common.audio.b
    protected void e() {
        int i10;
        if (this.f55592k) {
            if (this.f55595n > 0) {
                this.f55596o += i10 / this.f55225b.f55218d;
            }
            this.f55595n = 0;
        }
    }

    @Override // io.bidmachine.media3.common.audio.b
    protected void f() {
        this.f55594m = m0.f3619f;
    }

    @Override // io.bidmachine.media3.common.audio.b, io.bidmachine.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i10;
        if (super.isEnded() && (i10 = this.f55595n) > 0) {
            g(i10).put(this.f55594m, 0, this.f55595n).flip();
            this.f55595n = 0;
        }
        return super.getOutput();
    }

    public long h() {
        return this.f55596o;
    }

    public void i() {
        this.f55596o = 0L;
    }

    @Override // io.bidmachine.media3.common.audio.b, io.bidmachine.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        if (super.isEnded() && this.f55595n == 0) {
            return true;
        }
        return false;
    }

    public void j(int i10, int i11) {
        this.f55590i = i10;
        this.f55591j = i11;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i10 = limit - position;
        if (i10 == 0) {
            return;
        }
        int min = Math.min(i10, this.f55593l);
        this.f55596o += min / this.f55225b.f55218d;
        this.f55593l -= min;
        byteBuffer.position(position + min);
        if (this.f55593l > 0) {
            return;
        }
        int i11 = i10 - min;
        int length = (this.f55595n + i11) - this.f55594m.length;
        ByteBuffer g10 = g(length);
        int p10 = m0.p(length, 0, this.f55595n);
        g10.put(this.f55594m, 0, p10);
        int p11 = m0.p(length - p10, 0, i11);
        byteBuffer.limit(byteBuffer.position() + p11);
        g10.put(byteBuffer);
        byteBuffer.limit(limit);
        int i12 = i11 - p11;
        int i13 = this.f55595n - p10;
        this.f55595n = i13;
        byte[] bArr = this.f55594m;
        System.arraycopy(bArr, p10, bArr, 0, i13);
        byteBuffer.get(this.f55594m, this.f55595n, i12);
        this.f55595n += i12;
        g10.flip();
    }
}
