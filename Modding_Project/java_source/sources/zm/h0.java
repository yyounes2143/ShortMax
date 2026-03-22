package zm;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.VideoFrameProcessingException;
/* compiled from: VideoGraph.java */
/* loaded from: classes8.dex */
public interface h0 {

    /* compiled from: VideoGraph.java */
    /* loaded from: classes8.dex */
    public interface a {
    }

    g0 a(int i10);

    void b(@Nullable z zVar);

    void d(@IntRange(from = 0) int i10) throws VideoFrameProcessingException;

    void initialize() throws VideoFrameProcessingException;

    void release();
}
