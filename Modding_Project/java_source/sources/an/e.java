package an;

import io.bidmachine.media3.common.audio.AudioProcessor;
import zm.v;
/* compiled from: AudioProcessorChain.java */
/* loaded from: classes8.dex */
public interface e {
    boolean a(boolean z10);

    v b(v vVar);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j10);

    long getSkippedOutputFrameCount();
}
