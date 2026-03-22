package com.ss.ttvideoengine.strategy.common;

import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.ss.ttvideoengine.InfoWrapper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.VodSettings;
import com.ss.ttvideoengine.VodSettingsKey;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.strategy.StrategySettings;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategyCommon {
    private static final String CLEAR_MDL_CACHE = "clear_mdl_cache";
    private static final String CPP_h265CODEC_OPT = "cpp_h265codec_opt";
    private static final String DEMUX_NONBLOCK_READ = "demux_nonblock_read";
    private static final String ENGINE_LOOPER = "engine_looper";
    private static final String EXO_PARAMS = "exo_params";
    private static final String IO_MANAGER_ENABLE = "io_manager_enable";
    private static final String LOAD_MONITOR_TIME_INTERNAL = "load_monitor_time_internal";
    private static final String MDL_PRECONNECT = "mdl_preconnect";
    private static final String NET_MAX_SAMPLE_COUNT = "net_max_sample_count";
    private static final String NET_SAMPLE_INTERVAL = "net_sample_interval";
    private static final String NET_SPEED_UPDATE_INTERVAL = "net_speed_update_interval";
    private static final String ORIGINAL_QUALITY = "original";
    private static final String OUTLET_DROP_LIMIT = "outlet_drop_limit";
    private static final String PRECISE_CACHE_ENABLE = "precise_cache_enable";
    private static final String SKIP_FIND_STREAM_INFO = "skip_find_stream_info";
    private static final String SOCKET_TRAIN_CENTER = "socket_train_center";
    private static final String TAG = "Strategy Common";
    private int mEnableLogFile;
    private String mExoParams;
    private String mSocketTrainCenter;
    private int mSkipFindStreamInfo = -100;
    private int mEngineLooper = 1;
    private int mClearMdlCache = -100;
    private int mOutletDropLimit = -100;
    private int mCpph265codecOpt = -100;
    private int mDemuxNonblockRead = -100;
    private int mMdlPreconnect = -100;
    private int mLoadMonitorTimeInternal = -100;
    private int mIoManagerEnable = 1;
    private int mPreciseCacheEnable = -100;
    private int mNetSampleInterval = -100;
    private int mNetMaxSampleCount = -100;
    private int mNetSpeedUpdateInterval = -100;

    public StrategyCommon() {
        updateConfig();
    }

    public boolean enableEngineLooper() {
        if (this.mEngineLooper > 0) {
            return true;
        }
        return false;
    }

    public void engineCreate(TTVideoEngineInterface tTVideoEngineInterface) {
        if (tTVideoEngineInterface == null) {
            return;
        }
        if (this.mEnableLogFile > 0) {
            tTVideoEngineInterface.setIntOption(472, 1);
        }
        int i10 = this.mClearMdlCache;
        if (i10 != -100) {
            tTVideoEngineInterface.setIntOption(603, i10);
        }
        int i11 = this.mOutletDropLimit;
        if (i11 != -100) {
            tTVideoEngineInterface.setIntOption(673, i11);
        }
        int i12 = this.mCpph265codecOpt;
        if (i12 != -100) {
            tTVideoEngineInterface.setIntOption(581, i12);
        }
        int i13 = this.mDemuxNonblockRead;
        if (i13 != -100) {
            tTVideoEngineInterface.setIntOption(561, i13);
        }
        int i14 = this.mPreciseCacheEnable;
        if (i14 != -100) {
            tTVideoEngineInterface.setIntOption(703, i14);
        }
        int i15 = this.mNetSampleInterval;
        if (i15 != -100) {
            tTVideoEngineInterface.setIntOption(604, i15);
        }
        int i16 = this.mNetMaxSampleCount;
        if (i16 != -100) {
            tTVideoEngineInterface.setIntOption(605, i16);
        }
        int i17 = this.mNetSpeedUpdateInterval;
        if (i17 != -100) {
            tTVideoEngineInterface.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_NET_SPEED_UPDATE_INTERVAL, i17);
        }
        if (!TextUtils.isEmpty(this.mExoParams)) {
            tTVideoEngineInterface.setStringOption(5000, this.mExoParams);
        }
        int vodInt = VodSettings.getVodInt(VodSettingsKey.KEY_MEDIACODEC_ASYNC_MODE_ENABLE, -1);
        if (vodInt != -1) {
            tTVideoEngineInterface.setIntOption(955, vodInt);
        }
        int vodInt2 = VodSettings.getVodInt(VodSettingsKey.KEY_MEDIACODEC_FIX_MEMORY_COPY_CRASH_ENABLE, -1);
        if (vodInt2 != -1) {
            tTVideoEngineInterface.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_FIX_CODEC_MEMCPY_CRASHV2, vodInt2);
        }
    }

    public void mdlStart(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) {
        TTVideoEngineLog.d(TAG, "set common option mdl prconnect:" + this.mMdlPreconnect + ", loadMonitorTimeInternal:" + this.mLoadMonitorTimeInternal + ", mSocketTrainCenter:" + this.mSocketTrainCenter + ", ioManagerEnable:" + this.mIoManagerEnable);
        aVMDLDataLoaderConfigure.mEnableExternDNS = 1;
        aVMDLDataLoaderConfigure.mEnableSocketReuse = 1;
        int i10 = this.mMdlPreconnect;
        if (i10 != -100) {
            aVMDLDataLoaderConfigure.mEnablePreconnect = i10;
        }
        if (!TextUtils.isEmpty(this.mSocketTrainCenter)) {
            aVMDLDataLoaderConfigure.mSocketTraingCenterConfigStr = this.mSocketTrainCenter;
        }
        int i11 = this.mLoadMonitorTimeInternal;
        if (i11 != -100) {
            aVMDLDataLoaderConfigure.mMonitorTimeInternal = i11;
        }
        int i12 = this.mIoManagerEnable;
        if (i12 != -100) {
            TTVideoEngine.setIntValue(1150, i12);
        }
        aVMDLDataLoaderConfigure.mEnableUseOriginalUrl = VodSettings.getVodInt(VodSettingsKey.KEY_MDL_ENABLE_USE_ORIGINAL_URL, 1);
    }

    public void setCodecType(TTVideoEngineInterface tTVideoEngineInterface, String str) {
        if (tTVideoEngineInterface != null) {
            TTVideoEngineLog.d(TAG, "set codec:" + str + ", engine:" + tTVideoEngineInterface);
            if (TextUtils.equals(str, "h265")) {
                tTVideoEngineInterface.setIntOption(7, InfoWrapper.geth265HardwareEnable());
                tTVideoEngineInterface.setAsyncInit(true, 1);
            } else if (TextUtils.equals(str, "h264")) {
                tTVideoEngineInterface.setIntOption(7, InfoWrapper.getH264HardwareEnable());
                tTVideoEngineInterface.setAsyncInit(true, 0);
            }
        }
    }

    public void setVideoInfo(TTVideoEngineInterface tTVideoEngineInterface, VideoInfo videoInfo) {
        if (tTVideoEngineInterface == null || videoInfo == null || TextUtils.equals(videoInfo.getValueStr(18), ORIGINAL_QUALITY)) {
            return;
        }
        String valueStr = videoInfo.getValueStr(6);
        if (TextUtils.equals(valueStr, TTVideoEngineInterface.FORMAT_TYPE_MP4) || TextUtils.equals(valueStr, "dash")) {
            tTVideoEngineInterface.setIntOption(204, this.mSkipFindStreamInfo);
        }
    }

    public void updateConfig() {
        JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject("alog_config");
        if (vodJsonObject != null) {
            this.mEnableLogFile = vodJsonObject.optInt("enable_log_file", 0);
        }
        JSONObject common = StrategySettings.getInstance().getCommon();
        TTVideoEngineLog.d(TAG, "updateConfig " + common);
        if (common == null) {
            return;
        }
        this.mSkipFindStreamInfo = common.optInt(SKIP_FIND_STREAM_INFO, -100);
        this.mEngineLooper = common.optInt("engine_looper", 1);
        this.mMdlPreconnect = common.optInt(MDL_PRECONNECT, -100);
        this.mClearMdlCache = common.optInt("clear_mdl_cache", -100);
        this.mOutletDropLimit = common.optInt(OUTLET_DROP_LIMIT, -100);
        this.mCpph265codecOpt = common.optInt(CPP_h265CODEC_OPT, -100);
        this.mDemuxNonblockRead = common.optInt("demux_nonblock_read", -100);
        this.mSocketTrainCenter = common.optString(SOCKET_TRAIN_CENTER, "");
        this.mLoadMonitorTimeInternal = common.optInt(LOAD_MONITOR_TIME_INTERNAL, -100);
        this.mIoManagerEnable = common.optInt(IO_MANAGER_ENABLE, 1);
        this.mPreciseCacheEnable = common.optInt(PRECISE_CACHE_ENABLE, -100);
        this.mNetSampleInterval = common.optInt(NET_SAMPLE_INTERVAL, -100);
        this.mNetMaxSampleCount = common.optInt(NET_MAX_SAMPLE_COUNT, -100);
        this.mNetSpeedUpdateInterval = common.optInt(NET_SPEED_UPDATE_INTERVAL, -100);
        this.mExoParams = common.optString(EXO_PARAMS, "");
    }

    public void start() {
    }

    public void stop() {
    }
}
