package com.ss.ttvideoengine;

import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.utils.Error;
/* loaded from: classes6.dex */
public interface PreloaderVidItemFetchListener {
    void fetchEnd(VideoModel videoModel, Error error);
}
