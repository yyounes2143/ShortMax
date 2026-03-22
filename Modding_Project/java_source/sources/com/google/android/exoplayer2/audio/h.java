package com.google.android.exoplayer2.audio;

import b7.s0;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.ByteBuffer;
/* compiled from: FloatResamplingAudioProcessor.java */
/* loaded from: classes4.dex */
final class h extends e {

    /* renamed from: i  reason: collision with root package name */
    private static final int f17366i = Float.floatToIntBits(Float.NaN);

    private static void h(int i10, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i10 * 4.656612875245797E-10d));
        if (floatToIntBits == f17366i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.exoplayer2.audio.e
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = aVar.f17213c;
        if (s0.n0(i10)) {
            if (i10 != 4) {
                return new AudioProcessor.a(aVar.f17211a, aVar.f17212b, 4);
            }
            return AudioProcessor.a.f17210e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        ByteBuffer g10;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i10 = limit - position;
        int i11 = this.f17345b.f17213c;
        if (i11 != 536870912) {
            if (i11 == 805306368) {
                g10 = g(i10);
                while (position < limit) {
                    h((byteBuffer.get(position) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((byteBuffer.get(position + 1) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get(position + 2) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get(position + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24), g10);
                    position += 4;
                }
            } else {
                throw new IllegalStateException();
            }
        } else {
            g10 = g((i10 / 3) * 4);
            while (position < limit) {
                h(((byteBuffer.get(position) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get(position + 1) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get(position + 2) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24), g10);
                position += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        g10.flip();
    }
}
