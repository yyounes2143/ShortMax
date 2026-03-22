package com.ss.ttvideoengine.download;

import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes6.dex */
public interface IDownloadVidTaskListener {
    String apiString(Map<String, String> map, String str, int i10);

    @Nullable
    String authString(String str, int i10);
}
