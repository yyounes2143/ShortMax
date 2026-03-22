package com.ss.ttvideoengine;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.model.VideoInfo;
/* loaded from: classes6.dex */
public interface CacheFilePathListener {
    @NonNull
    String cacheFilePath(String str, VideoInfo videoInfo);
}
