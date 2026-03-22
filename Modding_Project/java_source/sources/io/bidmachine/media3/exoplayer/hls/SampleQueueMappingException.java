package io.bidmachine.media3.exoplayer.hls;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes8.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(@Nullable String str) {
        super("Unable to bind a sample queue to TrackGroup with MIME type " + str + ".");
    }
}
