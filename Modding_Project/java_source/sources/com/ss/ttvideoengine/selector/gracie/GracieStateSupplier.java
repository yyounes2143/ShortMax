package com.ss.ttvideoengine.selector.gracie;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.abrmodule.ABRBufferInfo;
import com.bytedance.vcloud.abrmodule.IABRModuleSpeedRecord;
import com.bytedance.vcloud.abrmodule.IBufferInfo;
import com.bytedance.vcloud.abrmodule.IPlayStateSupplier;
import com.bytedance.vcloud.abrmodule.ISegmentInfo;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.MediaBitrateFitterInfo;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes6.dex */
class GracieStateSupplier implements IPlayStateSupplier {
    @NonNull
    IVideoModel mVideoModel;

    private GracieStateSupplier(@NonNull IVideoModel iVideoModel) {
        this.mVideoModel = iVideoModel;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public Map<String, IBufferInfo> getAudioBufferInfo() {
        HashMap hashMap = new HashMap();
        List<VideoInfo> videoInfoList = this.mVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && videoInfo.getMediatype() == VideoRef.TYPE_AUDIO) {
                    ABRBufferInfo aBRBufferInfo = new ABRBufferInfo();
                    String valueStr = videoInfo.getValueStr(15);
                    aBRBufferInfo.setStreamId(valueStr);
                    aBRBufferInfo.setFileAvailSize(TTVideoEngine.getCacheFileSize(valueStr));
                    MediaBitrateFitterInfo bitrateFitterInfo = videoInfo.getBitrateFitterInfo();
                    if (bitrateFitterInfo != null) {
                        aBRBufferInfo.setHeadSize(bitrateFitterInfo.getHeaderSize());
                    }
                    hashMap.put("" + videoInfo.getValueInt(3), aBRBufferInfo);
                }
            }
        }
        return hashMap;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public float getAverageDownloadSpeed(int i10, int i11, boolean z10) {
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
        if (iSpeedPredictor != null) {
            return iSpeedPredictor.getAverageDownloadSpeed(i10, i11, z10);
        }
        return -1.0f;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getCurrentDownloadAudioBitrate() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getCurrentDownloadAudioSegmentIndex() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getCurrentDownloadVideoBitrate() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getCurrentDownloadVideoSegmentIndex() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getCurrentPlaybackTime() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public float getDownloadSpeed() {
        Map<String, String> downloadSpeed;
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
        if (iSpeedPredictor != null && (downloadSpeed = iSpeedPredictor.getDownloadSpeed(VideoRef.TYPE_VIDEO)) != null && downloadSpeed.get("download_speed") != null) {
            return Float.parseFloat(downloadSpeed.get("download_speed"));
        }
        return -1.0f;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getLoaderType() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getMaxCacheAudioTime() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getMaxCacheVideoTime() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public float getNetworkSpeed() {
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
        if (iSpeedPredictor != null) {
            return iSpeedPredictor.getPredictSpeed(0);
        }
        return -1.0f;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getNetworkState() {
        return DataLoaderHelper.getDataLoader().getIntValue(1008);
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public float getPlaySpeed() {
        return 1.0f;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getPlayerAudioCacheTime() {
        return -1;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public int getPlayerVideoCacheTime() {
        return 0;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    @Nullable
    public List<? extends ISegmentInfo> getSegmentInfoList(int i10, int i11) {
        return null;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public float getSpeedConfidence() {
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
        if (iSpeedPredictor != null) {
            return iSpeedPredictor.getLastPredictConfidence();
        }
        return -1.0f;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public Queue<IABRModuleSpeedRecord> getTimelineNetworkSpeed() {
        return null;
    }

    @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
    public Map<String, IBufferInfo> getVideoBufferInfo() {
        HashMap hashMap = new HashMap();
        List<VideoInfo> videoInfoList = this.mVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                    ABRBufferInfo aBRBufferInfo = new ABRBufferInfo();
                    String valueStr = videoInfo.getValueStr(15);
                    aBRBufferInfo.setStreamId(valueStr);
                    aBRBufferInfo.setFileAvailSize(TTVideoEngine.getCacheFileSize(valueStr));
                    MediaBitrateFitterInfo bitrateFitterInfo = videoInfo.getBitrateFitterInfo();
                    if (bitrateFitterInfo != null) {
                        aBRBufferInfo.setHeadSize(bitrateFitterInfo.getHeaderSize());
                    }
                    hashMap.put("" + videoInfo.getValueInt(3), aBRBufferInfo);
                }
            }
        }
        return hashMap;
    }
}
