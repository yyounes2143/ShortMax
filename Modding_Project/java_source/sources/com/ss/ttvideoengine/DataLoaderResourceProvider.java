package com.ss.ttvideoengine;
/* loaded from: classes6.dex */
public interface DataLoaderResourceProvider {
    default String getCacheDir() {
        return null;
    }

    String getKey();

    long getPreloadSize();

    String[] getUrls();
}
