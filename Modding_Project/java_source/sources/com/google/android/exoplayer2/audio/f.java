package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
/* compiled from: ChannelMappingAudioProcessor.java */
/* loaded from: classes4.dex */
final class f extends e {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private int[] f17352i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private int[] f17353j;

    @Override // com.google.android.exoplayer2.audio.e
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        boolean z10;
        boolean z11;
        int[] iArr = this.f17352i;
        if (iArr == null) {
            return AudioProcessor.a.f17210e;
        }
        if (aVar.f17213c == 2) {
            if (aVar.f17212b != iArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            for (int i10 = 0; i10 < iArr.length; i10++) {
                int i11 = iArr[i10];
                if (i11 < aVar.f17212b) {
                    if (i11 != i10) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    z10 |= z11;
                } else {
                    throw new AudioProcessor.UnhandledAudioFormatException(aVar);
                }
            }
            if (z10) {
                return new AudioProcessor.a(aVar.f17211a, iArr.length, 2);
            }
            return AudioProcessor.a.f17210e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void d() {
        this.f17353j = this.f17352i;
    }

    @Override // com.google.android.exoplayer2.audio.e
    protected void f() {
        this.f17353j = null;
        this.f17352i = null;
    }

    public void h(@Nullable int[] iArr) {
        this.f17352i = iArr;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) b7.a.e(this.f17353j);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer g10 = g(((limit - position) / this.f17345b.f17214d) * this.f17346c.f17214d);
        while (position < limit) {
            for (int i10 : iArr) {
                g10.putShort(byteBuffer.getShort((i10 * 2) + position));
            }
            position += this.f17345b.f17214d;
        }
        byteBuffer.position(limit);
        g10.flip();
    }
}
