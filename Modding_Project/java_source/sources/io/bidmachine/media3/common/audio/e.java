package io.bidmachine.media3.common.audio;

import io.bidmachine.media3.common.audio.AudioProcessor;
/* compiled from: ToInt16PcmAudioProcessor.java */
/* loaded from: classes8.dex */
public final class e extends b {
    @Override // io.bidmachine.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = aVar.f55217c;
        if (i10 != 3 && i10 != 2 && i10 != 268435456 && i10 != 21 && i10 != 1342177280 && i10 != 22 && i10 != 1610612736 && i10 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        if (i10 != 2) {
            return new AudioProcessor.a(aVar.f55215a, aVar.f55216b, 2);
        }
        return AudioProcessor.a.f55214e;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e4 A[LOOP:6: B:38:0x00e4->B:39:0x00e6, LOOP_START, PHI: r0 
      PHI: (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:17:0x003e, B:39:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // io.bidmachine.media3.common.audio.AudioProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void queueInput(java.nio.ByteBuffer r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.common.audio.e.queueInput(java.nio.ByteBuffer):void");
    }
}
