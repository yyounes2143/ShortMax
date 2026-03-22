package com.ss.ttvideoengine.cache;

import com.ss.ttvideoengine.DataLoaderHelper;
/* loaded from: classes6.dex */
public interface CopyCacheListener {
    void onCopyComplete(boolean z10, int i10, String str);

    default void onFileInfo(DataLoaderHelper.DataLoaderCacheInfo dataLoaderCacheInfo) {
    }
}
