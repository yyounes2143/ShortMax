package com.ss.ttvideoengine.strategy.preload;

import com.ss.ttvideoengine.PreloaderURLItem;
import com.ss.ttvideoengine.PreloaderVidItem;
import com.ss.ttvideoengine.PreloaderVideoModelItem;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.VidPlayAuthTokenSource;
import com.ss.ttvideoengine.source.VideoModelSource;
/* loaded from: classes6.dex */
public interface PreloadTaskFactory {
    default PreloaderURLItem createUrlItem(DirectUrlSource directUrlSource, long j10) {
        return new PreloaderURLItem(directUrlSource, j10);
    }

    default PreloaderVidItem createVidItem(VidPlayAuthTokenSource vidPlayAuthTokenSource, long j10) {
        return new PreloaderVidItem(vidPlayAuthTokenSource, j10);
    }

    default PreloaderVideoModelItem createVideoModelItem(VideoModelSource videoModelSource, long j10) {
        return new PreloaderVideoModelItem(videoModelSource, j10);
    }
}
