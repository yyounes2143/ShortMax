package com.ss.ttvideoengine.selector;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.model.IVideoInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.selector.shift.SpeedShiftConfig;
import com.ss.ttvideoengine.selector.shift.SpeedShiftSelector;
import java.util.List;
/* loaded from: classes6.dex */
public class BestResolution {
    public static Resolution findAwemeShiftResolution(IVideoModel iVideoModel, Resolution resolution, double d10, SpeedShiftConfig speedShiftConfig) {
        IVideoInfo videoInfo;
        if (iVideoModel != null && resolution != null && speedShiftConfig != null && (videoInfo = new SpeedShiftSelector(speedShiftConfig).select(iVideoModel, new SpeedShiftSelector.Params().speed(d10).build()).getVideoInfo()) != null) {
            return videoInfo.getResolution();
        }
        return resolution;
    }

    @NonNull
    public static Resolution findByNetLevel(IVideoModel iVideoModel, Resolution resolution) {
        if (iVideoModel != null && resolution != null) {
            if (iVideoModel instanceof VideoModel) {
                ((VideoModel) iVideoModel).setVideoRefStr(245, "{\"select_resolution\":[\"net_target_bitrate\"]}");
            }
            List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
            if (videoInfoList != null && videoInfoList.size() != 0) {
                double lastTargetBitrate = PortraitNetworkScore.getInstance().getLastTargetBitrate();
                if (lastTargetBitrate <= 0.0d) {
                    return resolution;
                }
                double d10 = 3.4028234663852886E38d;
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null) {
                        int i10 = videoInfo.mBitrate;
                        if (i10 <= lastTargetBitrate && lastTargetBitrate - i10 < d10) {
                            d10 = lastTargetBitrate - i10;
                            resolution = videoInfo.getResolution();
                        }
                    }
                }
            }
            return resolution;
        }
        return Resolution.Standard;
    }

    public static Resolution findDefaultResolution(IVideoModel iVideoModel, Resolution resolution) {
        int abs;
        if (iVideoModel != null && resolution != null) {
            int length = Resolution.getAllResolutions().length;
            Resolution[] supportResolutions = iVideoModel.getSupportResolutions();
            if (supportResolutions != null && supportResolutions.length != 0) {
                Resolution resolution2 = resolution;
                for (Resolution resolution3 : supportResolutions) {
                    if (resolution3 != null && (abs = Math.abs(resolution3.ordinal() - resolution.ordinal())) < length) {
                        resolution2 = resolution3;
                        if (abs == 0) {
                            break;
                        }
                        length = abs;
                    }
                }
                return resolution2;
            }
            return resolution;
        }
        return Resolution.Standard;
    }

    public static VideoInfo findMaxCacheInfo(IVideoModel iVideoModel, int i10) {
        boolean z10;
        VideoInfo videoInfo = null;
        if (iVideoModel == null) {
            return null;
        }
        if (i10 != VideoRef.TYPE_VIDEO && i10 != VideoRef.TYPE_AUDIO) {
            z10 = false;
        } else {
            z10 = true;
        }
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (videoInfoList != null && !videoInfoList.isEmpty()) {
            long j10 = 0;
            for (VideoInfo videoInfo2 : videoInfoList) {
                if (!z10 || videoInfo2.getMediatype() == i10) {
                    long cacheFileSize = DataLoaderHelper.getDataLoader().getCacheFileSize(videoInfo2.getValueStr(15));
                    if (cacheFileSize > j10) {
                        videoInfo = videoInfo2;
                        j10 = cacheFileSize;
                    }
                }
            }
        }
        return videoInfo;
    }

    public static Resolution findMaxCacheResolution(IVideoModel iVideoModel, Resolution resolution) {
        if (iVideoModel != null && resolution != null) {
            Resolution[] supportResolutions = iVideoModel.getSupportResolutions();
            if (supportResolutions != null && supportResolutions.length != 0) {
                long j10 = 0;
                for (Resolution resolution2 : supportResolutions) {
                    long cacheFileSize = TTVideoEngine.getCacheFileSize(iVideoModel, resolution2);
                    if (cacheFileSize > j10) {
                        resolution = resolution2;
                        j10 = cacheFileSize;
                    }
                }
            }
            return resolution;
        }
        return Resolution.Standard;
    }

    public static Resolution findMaxQualityResolution(IVideoModel iVideoModel, Resolution resolution) {
        if (iVideoModel != null && resolution != null) {
            Resolution[] supportResolutions = iVideoModel.getSupportResolutions();
            if (supportResolutions != null && supportResolutions.length != 0) {
                for (Resolution resolution2 : supportResolutions) {
                    if (TTVideoEngine.getCacheFileSize(iVideoModel, resolution2) > 0 && resolution2.ordinal() > resolution.ordinal()) {
                        resolution = resolution2;
                    }
                }
            }
            return resolution;
        }
        return Resolution.Standard;
    }
}
