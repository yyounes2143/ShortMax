package io.bidmachine.media3.exoplayer.audio;

import cn.m0;
import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
/* compiled from: ToFloatPcmAudioProcessor.java */
/* loaded from: classes8.dex */
final class n extends io.bidmachine.media3.common.audio.b {

    /* renamed from: i  reason: collision with root package name */
    private static final int f55589i = Float.floatToIntBits(Float.NaN);

    private static void h(int i10, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i10 * 4.656612875245797E-10d));
        if (floatToIntBits == f55589i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // io.bidmachine.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = aVar.f55217c;
        if (m0.F0(i10)) {
            if (i10 != 4) {
                return new AudioProcessor.a(aVar.f55215a, aVar.f55216b, 4);
            }
            return AudioProcessor.a.f55214e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        ByteBuffer g10;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i10 = limit - position;
        int i11 = this.f55225b.f55217c;
        if (i11 != 21) {
            if (i11 != 22) {
                if (i11 != 1342177280) {
                    if (i11 == 1610612736) {
                        g10 = g(i10);
                        while (position < limit) {
                            h((byteBuffer.get(position + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((byteBuffer.get(position + 2) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get(position + 1) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get(position) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24), g10);
                            position += 4;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    g10 = g((i10 / 3) * 4);
                    while (position < limit) {
                        h(((byteBuffer.get(position + 2) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get(position + 1) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get(position) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24), g10);
                        position += 3;
                    }
                }
            } else {
                g10 = g(i10);
                while (position < limit) {
                    h((byteBuffer.get(position) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((byteBuffer.get(position + 1) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((byteBuffer.get(position + 2) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((byteBuffer.get(position + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24), g10);
                    position += 4;
                }
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
