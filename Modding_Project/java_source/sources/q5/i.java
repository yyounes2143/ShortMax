package q5;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.k1;
/* compiled from: AudioProcessorChain.java */
/* loaded from: classes4.dex */
public interface i {
    boolean a(boolean z10);

    k1 b(k1 k1Var);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j10);

    long getSkippedOutputFrameCount();
}
