package com.bytedance.vcloud.abrmodule;

import java.util.List;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes3.dex */
public interface IPlayStateSupplier {
    Map<String, IBufferInfo> getAudioBufferInfo();

    float getAverageDownloadSpeed(int i10, int i11, boolean z10);

    int getCurrentDownloadAudioBitrate();

    int getCurrentDownloadAudioSegmentIndex();

    int getCurrentDownloadVideoBitrate();

    int getCurrentDownloadVideoSegmentIndex();

    int getCurrentPlaybackTime();

    float getDownloadSpeed();

    int getLoaderType();

    int getMaxCacheAudioTime();

    int getMaxCacheVideoTime();

    float getNetworkSpeed();

    int getNetworkState();

    float getPlaySpeed();

    int getPlayerAudioCacheTime();

    int getPlayerVideoCacheTime();

    List<? extends ISegmentInfo> getSegmentInfoList(int i10, int i11);

    float getSpeedConfidence();

    Queue<IABRModuleSpeedRecord> getTimelineNetworkSpeed();

    Map<String, IBufferInfo> getVideoBufferInfo();
}
