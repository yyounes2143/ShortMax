package com.ss.ttvideoengine;

import com.ss.ttvideoengine.model.VideoInfo;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public interface PreloaderVidItemListener {
    String apiString(Map<String, String> map, String str, int i10);

    String authString(String str, int i10);

    void onUsingUrlInfos(List<VideoInfo> list);
}
