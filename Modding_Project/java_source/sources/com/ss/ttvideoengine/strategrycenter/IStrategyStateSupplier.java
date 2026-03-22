package com.ss.ttvideoengine.strategrycenter;

import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes6.dex */
public interface IStrategyStateSupplier {
    public static final String KEY_INFO_COMMENT = "comment";
    public static final String KEY_INFO_LIKE = "like";
    public static final String KEY_INFO_SHARE = "share";
    public static final String KEY_STREAM_AUDIO = "audio";
    public static final String KEY_STREAM_VIDEO = "video";
    public static final int SELECT_BITRATE_TYPE_PLAY = 1;
    public static final int SELECT_BITRATE_TYPE_PRELOAD = 2;

    double getNetworkSpeed();

    Map<String, Object> mediaInfo(String str);

    @Nullable
    default Map<String, Integer> selectBitrate(StrategyMediaParam strategyMediaParam) {
        return null;
    }

    Map<String, Integer> selectBitrate(String str, int i10);
}
