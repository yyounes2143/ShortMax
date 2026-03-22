package io.bidmachine.media3.exoplayer.audio;

import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: ChannelMappingAudioProcessor.java */
/* loaded from: classes8.dex */
final class h extends io.bidmachine.media3.common.audio.b {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private int[] f55569i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private int[] f55570j;

    @Override // io.bidmachine.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        boolean z10;
        boolean z11;
        int[] iArr = this.f55569i;
        if (iArr == null) {
            return AudioProcessor.a.f55214e;
        }
        int i10 = aVar.f55217c;
        if (i10 != 2 && i10 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        if (aVar.f55216b != iArr.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 < aVar.f55216b) {
                if (i12 != i11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                z10 |= z11;
            } else {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", aVar);
            }
        }
        if (z10) {
            return new AudioProcessor.a(aVar.f55215a, iArr.length, aVar.f55217c);
        }
        return AudioProcessor.a.f55214e;
    }

    @Override // io.bidmachine.media3.common.audio.b
    protected void d() {
        this.f55570j = this.f55569i;
    }

    @Override // io.bidmachine.media3.common.audio.b
    protected void f() {
        this.f55570j = null;
        this.f55569i = null;
    }

    public void h(@Nullable int[] iArr) {
        this.f55569i = iArr;
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) cn.a.e(this.f55570j);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer g10 = g(((limit - position) / this.f55225b.f55218d) * this.f55226c.f55218d);
        while (position < limit) {
            for (int i10 : iArr) {
                int Q = (m0.Q(this.f55225b.f55217c) * i10) + position;
                int i11 = this.f55225b.f55217c;
                if (i11 != 2) {
                    if (i11 == 4) {
                        g10.putFloat(byteBuffer.getFloat(Q));
                    } else {
                        throw new IllegalStateException("Unexpected encoding: " + this.f55225b.f55217c);
                    }
                } else {
                    g10.putShort(byteBuffer.getShort(Q));
                }
            }
            position += this.f55225b.f55218d;
        }
        byteBuffer.position(limit);
        g10.flip();
    }
}
