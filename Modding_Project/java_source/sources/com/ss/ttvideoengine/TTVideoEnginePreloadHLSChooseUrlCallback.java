package com.ss.ttvideoengine;

import java.util.List;
/* loaded from: classes6.dex */
public interface TTVideoEnginePreloadHLSChooseUrlCallback {

    /* loaded from: classes6.dex */
    public static class TTVideoEnginePreloadUrlInfo {
        public int preloadSize;
        public String uri;
    }

    List<TTVideoEnginePreloadUrlInfo> chooseUrls(TTVideoEngineMasterPlaylist tTVideoEngineMasterPlaylist);
}
