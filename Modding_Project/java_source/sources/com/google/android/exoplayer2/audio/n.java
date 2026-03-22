package com.google.android.exoplayer2.audio;

import b7.s0;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
/* compiled from: TrimmingAudioProcessor.java */
/* loaded from: classes4.dex */
final class n extends e {

    /* renamed from: i  reason: collision with root package name */
    private int f17417i;

    /* renamed from: j  reason: collision with root package name */
    private int f17418j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f17419k;

    /* renamed from: l  reason: collision with root package name */
    private int f17420l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f17421m = s0.f2511f;

    /* renamed from: n  reason: collision with root package name */
    private int f17422n;

    /* renamed from: o  reason: collision with root package name */
    private long f17423o;

    @Override // com.google.android.exoplayer2.audio.e
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f17213c == 2) {
            this.f17419k = true;
            if (this.f17417i == 0 && this.f17418j == 0) {
                return AudioProcessor.a.f17210e;
            }
            return aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void d() {
        if (this.f17419k) {
            this.f17419k = false;
            int i10 = this.f17418j;
            int i11 = this.f17345b.f17214d;
            this.f17421m = new byte[i10 * i11];
            this.f17420l = this.f17417i * i11;
        }
        this.f17422n = 0;
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void e() {
        int i10;
        if (this.f17419k) {
            if (this.f17422n > 0) {
                this.f17423o += i10 / this.f17345b.f17214d;
            }
            this.f17422n = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void f() {
        this.f17421m = s0.f2511f;
    }

    @Override // com.google.android.exoplayer2.audio.e, com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i10;
        if (super.isEnded() && (i10 = this.f17422n) > 0) {
            g(i10).put(this.f17421m, 0, this.f17422n).flip();
            this.f17422n = 0;
        }
        return super.getOutput();
    }

    public long h() {
        return this.f17423o;
    }

    public void i() {
        this.f17423o = 0L;
    }

    @Override // com.google.android.exoplayer2.audio.e, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        if (super.isEnded() && this.f17422n == 0) {
            return true;
        }
        return false;
    }

    public void j(int i10, int i11) {
        this.f17417i = i10;
        this.f17418j = i11;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i10 = limit - position;
        if (i10 == 0) {
            return;
        }
        int min = Math.min(i10, this.f17420l);
        this.f17423o += min / this.f17345b.f17214d;
        this.f17420l -= min;
        byteBuffer.position(position + min);
        if (this.f17420l > 0) {
            return;
        }
        int i11 = i10 - min;
        int length = (this.f17422n + i11) - this.f17421m.length;
        ByteBuffer g10 = g(length);
        int p10 = s0.p(length, 0, this.f17422n);
        g10.put(this.f17421m, 0, p10);
        int p11 = s0.p(length - p10, 0, i11);
        byteBuffer.limit(byteBuffer.position() + p11);
        g10.put(byteBuffer);
        byteBuffer.limit(limit);
        int i12 = i11 - p11;
        int i13 = this.f17422n - p10;
        this.f17422n = i13;
        byte[] bArr = this.f17421m;
        System.arraycopy(bArr, p10, bArr, 0, i13);
        byteBuffer.get(this.f17421m, this.f17422n, i12);
        this.f17422n += i12;
        g10.flip();
    }
}
