package com.ss.ttvideoengine;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictorListener;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictorMLConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.LoaderListener;
import com.ss.texturerender.TextureRenderManager;
import com.ss.texturerender.VideoSurface;
import com.ss.ttm.player.AVThreadPool;
import com.ss.ttm.player.AudioProcessor;
import com.ss.ttm.player.BufferProcessCallback;
import com.ss.ttm.player.ILibraryLoader;
import com.ss.ttm.player.IMediaDataSource;
import com.ss.ttm.player.LoadControl;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttm.player.TraitObject;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineMonitor;
import com.ss.ttvideoengine.cache.CopyCacheItem;
import com.ss.ttvideoengine.database.IKVStorageProvider;
import com.ss.ttvideoengine.drm.DrmUtils;
import com.ss.ttvideoengine.httpdns.ByteDanceHttpDnsDepend;
import com.ss.ttvideoengine.httpdns.BytedanceHTTPDNSParser;
import com.ss.ttvideoengine.info.DeviceInfoVE;
import com.ss.ttvideoengine.info.HARInfo;
import com.ss.ttvideoengine.info.networkRTTLevelListener;
import com.ss.ttvideoengine.log.AppLogEngineUploader;
import com.ss.ttvideoengine.log.AppLogTOBVer2;
import com.ss.ttvideoengine.log.EventLoggerSource;
import com.ss.ttvideoengine.log.EventSaver;
import com.ss.ttvideoengine.log.ExternVideoLoggerListener;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.log.IVideoEventUploader;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.log.VideoEventBase;
import com.ss.ttvideoengine.log.VideoEventLoggerV2;
import com.ss.ttvideoengine.log.VideoEventManager;
import com.ss.ttvideoengine.metrics.IMediaMetrics;
import com.ss.ttvideoengine.model.DubbedInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.SubInfo;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.net.HTTPDNS;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.playermetrcis.ThreadCPU;
import com.ss.ttvideoengine.portrait.PortraitEngine;
import com.ss.ttvideoengine.preload.PreloadMedia;
import com.ss.ttvideoengine.preload.PreloadModelMedia;
import com.ss.ttvideoengine.preload.PreloadTaskConfig;
import com.ss.ttvideoengine.preload.PreloadURLMedia;
import com.ss.ttvideoengine.preloader.TTAVPreloaderItem;
import com.ss.ttvideoengine.selector.BestResolution;
import com.ss.ttvideoengine.selector.shift.SpeedShiftConfig;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.selector.strategy.IGearStrategyListener;
import com.ss.ttvideoengine.setting.ISettingsListener;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.strategrycenter.IPortraitService;
import com.ss.ttvideoengine.strategrycenter.IStrategyEventListener;
import com.ss.ttvideoengine.strategrycenter.IStrategyStateSupplier;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.strategrycenter.StrategyKeys;
import com.ss.ttvideoengine.strategy.EngineStrategyListener;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.FormatProvider;
import com.ss.ttvideoengine.utils.Inspector;
import com.ss.ttvideoengine.utils.SessionIDGenerator;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.io.FileDescriptor;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.OkHttpClient;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTVideoEngine implements TTVideoEngineInterface {
    private static boolean HTTP_DNS_FIRST = false;
    private static final String OWN_PLAYER_LOADER_CLASS = "com.ss.ttm.player.TTPlayerLibLoader";
    private static final String SDK_VERSION = "1.10.172.340-jzdrm-premium";
    private static final String TAG = "TTVideoEngine";
    private static boolean mFallbackUseExoPlayer = false;
    private static boolean mForceUseLitePlayer = false;
    private static boolean mForceUsePluginPlayer = false;
    private static HARInfo mHARInfo = null;
    static int sABRAlgorithmType = 0;
    static int sABRSpeedPredictInputType = 0;
    public static boolean sBuryDataOptimize = false;
    public static boolean sColdStartOptimize = false;
    static int sConfigCenterCheckDiff = 0;
    private static int[] sDNSType = null;
    static float sDeviceScore = 0.0f;
    static int sEnableEncryptBuryData = 0;
    static int sEnableGloablMuteFeature = 0;
    public static boolean sEngineCrosstalkCheck = true;
    static int sGlobalMute = 0;
    static int sIsReportTestSpeedInfo = 0;
    static int sNetSpeedAbrPredictType = 0;
    private static int sPlayerOutputLog = 0;
    private static int sRefactorFlag = 0;
    static int sReportSpeedInfoMaxWindowSize = 100;
    static int sTestSpeedInterval = 0;
    static int sTestSpeedSampleInterval = 500;
    static int sUseConfigCenter;
    private final String mLogcatTag;
    private final TTVideoEngineInterface mVideoEngine;
    private static String[] mQualityInfos = new String[0];
    static List<VideoEngineStateListener> sEngineStateListeners = new ArrayList();

    public TTVideoEngine(Context context) {
        this(context, 0);
    }

    public static void addEngineStateListener(VideoEngineStateListener videoEngineStateListener) {
        if (videoEngineStateListener != null) {
            sEngineStateListeners.add(videoEngineStateListener);
        }
    }

    public static void addListener(ISettingsListener iSettingsListener) {
        SettingsHelper.helper().addListener(iSettingsListener);
    }

    public static void addPreloadMedias(List<PreloadMedia> list, String str) {
        DataLoaderHelper.getDataLoader().addPreloadMedias(list, str);
    }

    public static void addPreloadModelMedia(PreloadModelMedia preloadModelMedia) {
        DataLoaderHelper.getDataLoader().addPreloadModelMedia(preloadModelMedia);
    }

    public static void addPreloadURLMedia(PreloadURLMedia preloadURLMedia) {
        DataLoaderHelper.getDataLoader().addPreloadUrlMedia(preloadURLMedia);
    }

    public static void addPriorityPreloadTask(PreloadModelMedia preloadModelMedia) {
        DataLoaderHelper.getDataLoader().addPriorityPreloadTask(preloadModelMedia);
    }

    public static void addStrategySources(List<StrategySource> list) {
        StrategyManager.instance().addStrategySources(list);
    }

    public static void addTask(String str, PreloaderVidItem preloaderVidItem) {
        DataLoaderHelper.getDataLoader().addTask(str, preloaderVidItem);
    }

    public static void businessEvent(int i10, int i11) {
        StrategyHelper.helper().getCenter().businessEvent(i10, i11);
    }

    public static void cancelAllPreloadTasks() {
        TTVideoEngineLog.d(TAG, "<preload> cancel all preload task outside");
        DataLoaderHelper.getDataLoader().cancelAllTasks();
    }

    public static void cancelAllWaitReqs() {
        DataLoaderHelper.getDataLoader().cancelAllWaitReqs();
    }

    public static void cancelPreloadTask(String str) {
        DataLoaderHelper.getDataLoader().cancelTask(str);
    }

    public static void cancelPreloadTaskByFilePath(String str) {
        DataLoaderHelper.getDataLoader().cancelTaskByFilePath(str);
    }

    public static void cancelPreloadTaskByVideoId(String str) {
        DataLoaderHelper.getDataLoader().cancelTaskByVideoId(str);
    }

    public static void cleanCacheDir(long j10) {
        DataLoaderHelper.getDataLoader().cleanCacheDir(j10);
    }

    public static void cleanSpecifiedCacheDir(String str, int i10) {
        DataLoaderHelper.getDataLoader().cleanSpecifiedCacheDir(str, i10);
    }

    public static void clearAllCaches() {
        DataLoaderHelper.getDataLoader().clearAllCaches();
    }

    public static void clearAllStrategy() {
        StrategyManager.instance().clearAll();
    }

    public static void closeDataLoader() {
        DataLoaderHelper.getDataLoader().close();
    }

    public static String computeMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception unused) {
            return str;
        }
    }

    public static void configBoeSuffix(String str) {
        TTHelper.configBoeSuffix(str);
    }

    public static void copyDataLoaderCache(CopyCacheItem copyCacheItem) {
        DataLoaderHelper.getDataLoader().copyCache(copyCacheItem);
    }

    private static TTVideoEngineInterface createEngine(Context context, int i10, Map map, TTVideoEngine tTVideoEngine) {
        return new TTVideoEngineImpl(context, i10, map, tTVideoEngine);
    }

    public static boolean dataLoaderIsRunning() {
        return DataLoaderHelper.getDataLoader().isRunning();
    }

    public static void disableAutoTrim(String str) {
        DataLoaderHelper.getDataLoader().disableAutoTrim(str);
    }

    public static void enableAutoTrim(String str) {
        DataLoaderHelper.getDataLoader().enableAutoTrim(str);
    }

    public static void enableEngineStrategy(int i10, int i11) {
        StrategyManager.instance().enable(i10, i11);
    }

    public static void enableTLSv1_2(boolean z10) {
        TTHTTPNetwork.enableTLSv1_2(z10);
    }

    public static String encryptTimestamp(Context context, long j10) {
        return JniUtils.encryptTimestamp(String.valueOf(j10), getEngineUniqueId(context));
    }

    public static Resolution findBestResolution(VideoModel videoModel, int i10) {
        return findBestResolution(videoModel, Resolution.Standard, i10, null);
    }

    public static List<Resolution> findCachedResolutionList(VideoModel videoModel, @Nullable Map<Integer, String> map) {
        int i10;
        ArrayList arrayList = new ArrayList();
        if (videoModel == null) {
            return arrayList;
        }
        Resolution[] supportResolutions = videoModel.getSupportResolutions();
        if (supportResolutions != null && supportResolutions.length >= 1) {
            String videoRefStr = videoModel.getVideoRefStr(7);
            if (TextUtils.isEmpty(videoRefStr) && videoRefStr.equals("audio")) {
                i10 = VideoRef.TYPE_AUDIO;
            } else {
                i10 = VideoRef.TYPE_VIDEO;
            }
            Resolution resolution = supportResolutions[0];
            for (Resolution resolution2 : supportResolutions) {
                VideoInfo videoInfo = videoModel.getVideoInfo(resolution2, i10, map, false);
                if (videoInfo != null && DataLoaderHelper.getDataLoader().getCacheFileSize(videoInfo.getValueStr(15)) > 0 && videoInfo.getResolution() != null) {
                    arrayList.add(videoInfo.getResolution());
                }
            }
        }
        return arrayList;
    }

    public static Resolution findDefaultResolution(VideoModel videoModel, Resolution resolution) {
        return BestResolution.findDefaultResolution(videoModel, resolution);
    }

    @Nullable
    public static VideoInfo findMaxCacheInfo(IVideoModel iVideoModel) {
        return BestResolution.findMaxCacheInfo(iVideoModel, -1);
    }

    public static Resolution findMaxCacheResolution(VideoModel videoModel, Resolution resolution) {
        return BestResolution.findMaxCacheResolution(videoModel, resolution);
    }

    public static Resolution findMaxQualityResolution(VideoModel videoModel, Resolution resolution) {
        return BestResolution.findMaxQualityResolution(videoModel, resolution);
    }

    public static void focusEngine(TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine == null) {
            return;
        }
        TTVideoEngineLog.i(TAG, "[strategy] focus engine" + tTVideoEngine.getVideoID());
        focusMedia(tTVideoEngine.getVideoID(), 1);
    }

    public static void focusMedia(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.i(TAG, "[strategy] focus media . videoId is null");
        } else {
            DataLoaderHelper.getDataLoader().focusMedia(str, i10);
        }
    }

    public static void forceRemoveCacheFile(String str) {
        DataLoaderHelper.getDataLoader().forceRemoveCacheFile(str);
    }

    public static String[] getAllQualityInfos() {
        return mQualityInfos;
    }

    @Nullable
    public static String getAppSessionID() {
        if (!TextUtils.isEmpty(VideoEventBase.appSessionId)) {
            return VideoEventBase.appSessionId;
        }
        return null;
    }

    @Nullable
    public static JSONObject getBizPortraitJson() {
        return SettingsHelper.helper().getJsonObject(SettingsHelper.MODULE_BIZ_PORTRAIT);
    }

    public static long getCacheFileSize(String str) {
        return DataLoaderHelper.getDataLoader().getCacheSize(str);
    }

    public static long getCacheFileSizeByFilePath(String str) {
        return DataLoaderHelper.getDataLoader().getCacheSizeByFilePath(str);
    }

    public static DataLoaderHelper.DataLoaderCacheInfo getCacheInfo(String str) {
        return DataLoaderHelper.getDataLoader().getCacheInfo(str);
    }

    public static DataLoaderHelper.DataLoaderCacheInfo getCacheInfoByFilePath(String str) {
        return DataLoaderHelper.getDataLoader().getCacheInfoByFilePath(str);
    }

    public static long getContinueCacheSize(String str, int i10, long j10) {
        return DataLoaderHelper.getDataLoader().getContinueCacheSize(str, i10, j10);
    }

    public static int[] getDNSType() {
        return sDNSType;
    }

    public static String getDeviceID() {
        return InfoWrapper.getDeviceID();
    }

    @NonNull
    public static String getEngineUniqueId(Context context) {
        return DrmUtils.getEngineUniqueId(context);
    }

    public static String getEngineVersion() {
        return "1.10.172.340-jzdrm-premium";
    }

    @Deprecated
    public static GearStrategyConfig getGearStrategyConfig() {
        return GearStrategy.getGlobalConfig();
    }

    public static HARInfo getHARInfo() {
        return mHARInfo;
    }

    public static long getIoWriteError(String str) {
        return DataLoaderHelper.getDataLoader().getIoWriteError(str);
    }

    public static long getMissReason(int i10, String str, String str2, String str3) {
        return DataLoaderHelper.getDataLoader().getMissReason(i10, str, str2, str3);
    }

    public static float getNetworkSpeedFromPredictor() {
        if (StrategyHelper.helper().moduleSwitch(803) != 0) {
            float networkSpeed = StrategyHelper.helper().getNetworkSpeed();
            TTVideoEngineLog.i(TAG, " get network speed from vod strategy. info = " + networkSpeed);
            return networkSpeed;
        }
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetSpeedPredictor;
        if (iSpeedPredictor != null) {
            float predictSpeed = iSpeedPredictor.getPredictSpeed();
            String format = new DecimalFormat("#.000000000").format(predictSpeed);
            TTVideoEngineLog.d(TAG, "[IESSpeedPredictor] get network speed:" + format);
            return predictSpeed;
        }
        return -1.0f;
    }

    @NonNull
    public static Map<String, String> getPlayerAbility(int i10) {
        HashMap hashMap = new HashMap();
        if (i10 == 5 || i10 == 2) {
            hashMap.put("unsupport_h266", "true");
            hashMap.put("unsupport_dash", "true");
        }
        return hashMap;
    }

    public static int getPlayerOutputLog() {
        return sPlayerOutputLog;
    }

    @Nullable
    public static TTVideoEngine getPreRenderEngine(StrategySource strategySource) {
        return StrategyManager.instance().getPreRenderEngine(strategySource);
    }

    public static int getProbeIntervalMS() {
        return DataLoaderHelper.getDataLoader().getProbeIntervalMS();
    }

    public static int getProbeType() {
        return DataLoaderHelper.getDataLoader().getProbeType();
    }

    public static int getSpeedPredictorInputType() {
        return sABRSpeedPredictInputType;
    }

    public static String getStringValue(int i10) {
        return DataLoaderHelper.getDataLoader().getStringValue(i10);
    }

    @Nullable
    public static JSONObject getVodPreloadLabel(String str) {
        return SettingsHelper.helper().getVodJsonObject(str);
    }

    @Deprecated
    public static boolean isExpiredIpEnable() {
        return false;
    }

    public static boolean isFallbackUseExoPlayer() {
        return mFallbackUseExoPlayer;
    }

    public static boolean isForceUseLitePlayer() {
        return mForceUseLitePlayer;
    }

    public static boolean isForceUsePluginPlayer() {
        return mForceUsePluginPlayer;
    }

    public static boolean isHttpDnsFirst() {
        return HTTP_DNS_FIRST;
    }

    public static boolean isStrategyCenterRunning() {
        return StrategyHelper.helper().isRunning();
    }

    @Deprecated
    public static boolean isUsingTTNETHttpDns() {
        return false;
    }

    @Deprecated
    public static void onPause() {
        TTVideoEngineLog.d(TAG, "onPause");
    }

    @Deprecated
    public static void onResume() {
        TTVideoEngineLog.d(TAG, "onResume");
    }

    public static void onlyUseMediaLoader(boolean z10) {
        EngineGlobalConfig.getInstance().onlyUseMediaLoader(z10);
    }

    public static void openBytedanceHTTPDNS(ByteDanceHttpDnsDepend byteDanceHttpDnsDepend) {
        EngineGlobalConfig.getInstance().setDnsCustomType(new BytedanceHTTPDNSParser(byteDanceHttpDnsDepend).start());
    }

    public static float playTaskProgress() {
        return DataLoaderHelper.getDataLoader().playTaskProgress();
    }

    public static void preConnect(String str) {
        DataLoaderHelper.getDataLoader().preConnect(str);
    }

    public static String proxyUrl(String str, String str2, String[] strArr, Resolution resolution, String str3) {
        return DataLoaderHelper.getDataLoader().proxyUrl(str, str2, strArr, resolution, str3);
    }

    public static long quickGetCacheFileSize(String str) {
        long tryQuickGetCacheFileSize = DataLoaderHelper.getDataLoader().tryQuickGetCacheFileSize(str);
        if (tryQuickGetCacheFileSize == 0) {
            return DataLoaderHelper.getDataLoader().getCacheSize(str);
        }
        return tryQuickGetCacheFileSize;
    }

    public static void releaseStartAndSelectGearSpeedPredictor() {
        if (StrategyHelper.helper().moduleSwitch(803) != 0) {
            TTVideoEngineLog.i(TAG, "releaseStartAndSelectGearSpeedPredictor, vod strategy speed predictor");
        } else {
            StrategyCenter.closeNewStartAndSelectGearSpeedPredictor();
        }
    }

    public static synchronized void releaseTextureRender() {
        synchronized (TTVideoEngine.class) {
            try {
                TextureRenderManager.getManager().release();
            } catch (NullPointerException unused) {
            }
        }
    }

    public static void removeAllPreloadMedia(String str, int i10) {
        DataLoaderHelper.getDataLoader().removeAllPreloadMedia(str, i10);
    }

    public static void removeCacheFile(String str) {
        DataLoaderHelper.getDataLoader().removeCacheFile(str);
    }

    public static void removeEngineStateListener(VideoEngineStateListener videoEngineStateListener) {
        sEngineStateListeners.remove(videoEngineStateListener);
    }

    public static void removeMedia(String str, String str2) {
        DataLoaderHelper.getDataLoader().removeMedia(str, str2);
    }

    @Nullable
    public static TTVideoEngine removePreRenderEngine(String str) {
        return StrategyManager.instance().removePreRenderEngine(str);
    }

    public static void removePreloadMedia(PreloadMedia preloadMedia, String str) {
        DataLoaderHelper.getDataLoader().removePreloadMedia(preloadMedia, str);
    }

    public static void removePriorityPreloadTask(String str) {
        DataLoaderHelper.getDataLoader().removePriorityPreloadTask(str);
    }

    public static void saveAllPlayEvent(Context context) {
        if (context == null) {
            return;
        }
        EventSaver.getInstance(context).saveAllPlayEvent();
    }

    public static void setAlgorithmJson(int i10, String str) {
        TTVideoEngineLog.d(TAG, "[strategy] setAlgorithmJson key=" + i10 + " jsonString" + str);
        StrategyHelper.helper().setAlgorithmJson(i10, str);
    }

    public static void setAllQualityInfos(String[] strArr) {
        mQualityInfos = strArr;
    }

    public static void setAppInfo(Context context, Map map) {
        if (map != null && map.size() > 0) {
            try {
                TTVideoEngineLog.d(TAG, "setAppInfo:" + map.toString());
                BaseAppInfo.mContext = context;
                BaseAppInfo.mAppID = TTHelper.parseInt(map.get("appid"));
                BaseAppInfo.mAppName = (String) map.get("appname");
                BaseAppInfo.mAppChannel = (String) map.get("appchannel");
                BaseAppInfo.mAppVersion = (String) map.get("appversion");
                if (map.containsKey("screen_height")) {
                    BaseAppInfo.mScreenHeight = ((Integer) map.get("screen_height")).intValue();
                }
                if (map.containsKey("screen_width")) {
                    BaseAppInfo.mScreenWidth = ((Integer) map.get("screen_width")).intValue();
                }
                JniUtils.loadLibrary();
                BaseAppInfo.mRegion = (String) map.get(TtmlNode.TAG_REGION);
                BaseAppInfo.mDeviceId = AppLogTOBVer2.getDeviceID();
                EngineAdapter.initDefaultEventUploader();
                StrategyHelper.helper().configAppInfo(BaseAppInfo.toJsonString(), map);
                EngineAdapter.initSettings(context);
                setIntValue(1127, 1);
                if (TextUtils.isEmpty(VideoEventBase.appSessionId)) {
                    VideoEventBase.appSessionId = SessionIDGenerator.generateSessionID(BaseAppInfo.mDeviceId);
                }
            } catch (Exception e10) {
                TTVideoEngineLog.d(TAG, e10.toString());
            }
        }
    }

    public static void setApplicationContext(Context context) {
        DataLoaderHelper.getDataLoader().setContext(context);
    }

    public static void setClassLoader(ClassLoader classLoader) {
        DataLoaderHelper.getDataLoader().setClassLoader(classLoader);
    }

    public static void setDNSType(int i10, int i11) {
        sDNSType = new int[]{i10, i11};
        TTVideoEngineLog.i(TAG, "setDNSType main:" + i10 + " backup:" + i11);
    }

    public static void setDataLoaderListener(DataLoaderListener dataLoaderListener) {
        DataLoaderHelper.getDataLoader().setListener(dataLoaderListener);
    }

    @Deprecated
    public static void setDataLoaderNetworkClient(TTVNetClient tTVNetClient) {
        DataLoaderHelper.getDataLoader().setNetworkClient(tTVNetClient);
    }

    public static void setDefaultABRAlgorithm(int i10) {
        sABRAlgorithmType = i10;
    }

    public static void setDeviceInfo(DeviceInfoVE deviceInfoVE) {
        if (deviceInfoVE == null) {
            return;
        }
        TTVideoEngineLog.d(TAG, "DeviceInfoVE.overAllScore: " + DeviceInfoVE.overAllScore);
    }

    public static void setEngineStrategyListener(EngineStrategyListener engineStrategyListener) {
        StrategyManager.instance().setListener(engineStrategyListener);
    }

    public static void setFallbackUseExoPlayer(boolean z10) {
        mFallbackUseExoPlayer = z10;
    }

    public static void setFloatValue(int i10, float f10) {
        TTVideoEngineLog.i(TAG, "TTVideoEngine.setFloatValue key=" + i10 + " value=" + f10);
        if (i10 != 738) {
            if (i10 == 739) {
                businessEvent(1004, Float.toString(f10));
            }
        } else if (f10 != Float.NaN && f10 > 0.0f) {
            sDeviceScore = f10;
            PortraitEngine.getInstance().setLabel(PortraitEngine.LABEL_DEVICE_SCORE, Float.valueOf(f10));
            DataLoaderHelper.getDataLoader().setIntValue(123, (int) (f10 * 10.0f));
        }
    }

    public static void setForceUseLitePlayer(boolean z10) {
        mForceUseLitePlayer = z10;
    }

    public static void setForceUsePluginPlayer(boolean z10) {
        mForceUsePluginPlayer = z10;
    }

    public static void setFormatProvider(FormatProvider formatProvider) {
        FormatProvider.FormatProviderHolder.set(formatProvider);
    }

    @Deprecated
    public static void setGearStrategyConfig(GearStrategyConfig gearStrategyConfig) {
        TTVideoEngineLog.i(TAG, "[GearStrategy]setGearStrategyConfig config=" + gearStrategyConfig);
        GearStrategy.setGlobalConfig(gearStrategyConfig);
    }

    public static void setGlobalNetworkClient(TTVNetClient tTVNetClient) {
        TTVideoEngineConfig.gNetClient = tTVNetClient;
    }

    public static void setHARInfo(HARInfo hARInfo) {
        if (hARInfo == null) {
            TTVideoEngineLog.i(TAG, "setHARInfo harInfo is null");
            return;
        }
        TTVideoEngineLog.i(TAG, String.format("setHARInfo status=%d score=%d", Integer.valueOf(hARInfo.getHARStatus()), Integer.valueOf(hARInfo.getHARScore())));
        mHARInfo = hARInfo;
    }

    public static void setHTTPDNSFirst(boolean z10) {
        HTTP_DNS_FIRST = z10;
    }

    public static void setIntValue(int i10, int i11) {
        TTVideoEngineLog.i(TAG, "TTVideoEngine.setIntValue key=" + i10 + " value=" + i11);
        if (i10 == 672) {
            TTVideoEngineLog.i(TAG, "do set static render type, value = " + i11);
            EngineGlobalConfig.getInstance().setRenderType(i11);
        } else if (i10 == 674) {
            TTVideoEngineLog.i(TAG, "enable https for fetch");
            TTVideoEngineUtils.sEnableHTTPSForFetch = i11;
        } else {
            boolean z10 = false;
            if (i10 == 112) {
                if (i11 > 0) {
                    sABRSpeedPredictInputType = 2;
                    DataLoaderHelper.getDataLoader().setIntValue(112, i11);
                    return;
                }
                sABRSpeedPredictInputType = 1;
                DataLoaderHelper.getDataLoader().setIntValue(112, 0);
            } else if (i10 == 676) {
                StrategyCenter.setSpeedQueueSize(i11);
                businessEvent(1002, i11);
            } else if (i10 == 702) {
                EngineGlobalConfig.getInstance().setOutputLogLevel(i11);
                TTVideoEngineLog.d(TAG, "set log level:" + i11);
            } else if (i10 == 1303) {
                EngineGlobalConfig.getInstance().setOutputLogLevelPercise(i11);
                TTVideoEngineLog.d(TAG, "set log level percise:" + i11);
            } else if (i10 == 684) {
                sRefactorFlag = i11;
            } else if (i10 == 960) {
                sEnableGloablMuteFeature = i11;
                MediaPlayerWrapper.setGlobalIntOptionForKey(1015, i11);
            } else if (i10 == 961) {
                sGlobalMute = i11;
                MediaPlayerWrapper.setGlobalIntOptionForKey(1016, i11);
            } else if (i10 == 973) {
                MediaPlayerWrapper.setGlobalIntOptionForKey(MediaPlayer.MEDIA_PLAYER_OPTION_GS_AUDIOTRACK_POOL_SIZE, i11);
            } else if (i10 == 689) {
                TTVideoEngineLog.i(TAG, "do set static enable cpp opt bvc1, value = " + i11);
                EngineGlobalConfig.getInstance().setEnableCPPh265CodecOpt(i11);
            } else if (i10 == 719) {
                EngineGlobalConfig.getInstance().setEnableBmf(i11);
                TTVideoEngineLog.d(TAG, "enable bmf" + i11);
            } else if (i10 == 720) {
                EngineGlobalConfig.getInstance().setEnableUseRealBitrate(i11);
                TTVideoEngineLog.d(TAG, "set use realbitrate:" + i11);
            } else if (i10 == 737) {
                EngineGlobalConfig.getInstance().setLazyLoadVideodec(i11);
                TTVideoEngineLog.d(TAG, "set lazy load videodec:" + i11);
            } else if (i10 == 750) {
                sUseConfigCenter = i11;
            } else if (i10 == 749) {
                sConfigCenterCheckDiff = i11;
            } else if (i10 == 964) {
                sEnableEncryptBuryData = i11;
            } else if (i10 == 34) {
                EngineGlobalConfig.getInstance().setEnablePcdnAuto(i11);
                DataLoaderHelper.getDataLoader().setIntValue(i10, i11);
                TTVideoEngineLog.d(TAG, "set enablePcdnAuto:" + i11);
            } else if (i10 == 965) {
                if (i11 == 1) {
                    z10 = true;
                }
                VideoEventLoggerV2.sEnableContentDataReport = z10;
            } else if (i10 == 4027) {
                EngineGlobalConfig.getInstance().setEnableSelectStringMapMethod(i11);
            } else if (i10 == 4026) {
                EngineGlobalConfig.getInstance().setEnableSelectUseObject(i11);
            } else if (i10 == 966) {
                if (i11 > 0) {
                    z10 = true;
                }
                EngineThreadPool.setOptimizeLock(z10);
            } else if (i10 == 967) {
                if (i11 > 0) {
                    z10 = true;
                }
                EngineThreadPool.setOptimizeEnabled(z10);
            } else if (i10 == 968) {
                if (i11 == 1) {
                    z10 = true;
                }
                sBuryDataOptimize = z10;
            } else if (i10 == 969) {
                if (i11 == 1) {
                    z10 = true;
                }
                sEngineCrosstalkCheck = z10;
            } else if (i10 == 751) {
                EngineGlobalConfig.getInstance().dataLoaderHelperLockType = i11;
                DataLoaderHelper.getDataLoader().updateLockType(i11);
            } else if (i10 == 752) {
                EngineGlobalConfig.getInstance().enableMdlLockOptimizeV2 = i11;
            } else if (i10 == 970) {
                if (i11 == 1) {
                    z10 = true;
                }
                sColdStartOptimize = z10;
                if (z10) {
                    sBuryDataOptimize = true;
                }
            } else if (i10 == 971) {
                if (i11 == 1) {
                    z10 = true;
                }
                ThreadCPU.sCpuRefreshFix = z10;
                TTVideoEngineLog.d(TAG, "TTVideoEngine.sCpuRefreshFix key=" + z10);
            } else if (i10 == 972) {
                if (i11 == 1) {
                    z10 = true;
                }
                ThreadCPU.sUseNativeThread = z10;
                TTVideoEngineLog.d(TAG, "TTVideoEngine.sUseNativeThread key=" + z10);
            } else {
                DataLoaderHelper.getDataLoader().setIntValue(i10, i11);
                StrategyKeys.setIntValue(i10, i11);
                StrategyHelper.helper().setIntValue(i10, i11);
            }
        }
    }

    public static void setIntValueSync(int i10, int i11) {
        DataLoaderHelper.getDataLoader().setIntValueSync(i10, i11);
    }

    public static void setKVStorageProvider(IKVStorageProvider iKVStorageProvider) {
        StrategyHelper.helper().setKVStorageProvider(iKVStorageProvider);
    }

    public static void setLoaderEventListener(LoaderListener loaderListener) {
        DataLoaderHelper.getDataLoader().setLoaderEventListener(loaderListener);
    }

    public static void setLongValue(int i10, long j10) {
        if (i10 == 217) {
            EngineGlobalConfig.getInstance().setALogWriteAddr(j10);
        } else if (i10 == 745) {
            EngineGlobalConfig.getInstance().setEngineOptimizeFlag(j10);
        } else {
            DataLoaderHelper.getDataLoader().setLongValue(i10, j10);
        }
    }

    public static void setNativeThreadInterface(NativeThreadInterface nativeThreadInterface) {
        ThreadCPU.gNativeThreadInterface = nativeThreadInterface;
    }

    public static void setNetworkRTTLevelListener(networkRTTLevelListener networkrttlevellistener) {
        PortraitNetworkScore.getInstance().setNetworkRTTLevelListener(networkrttlevellistener);
    }

    public static void setOkhttpCliet(OkHttpClient okHttpClient) {
        AVMDLDataLoader.setOkhttpClient(okHttpClient);
    }

    public static void setPlayTaskProgress(float f10) {
        DataLoaderHelper.getDataLoader().setPlayTaskProgress(f10);
    }

    public static synchronized void setPlayerLibraryLoader(ILibraryLoader iLibraryLoader) {
        synchronized (TTVideoEngine.class) {
            try {
                Class<?> clzUsingPluginLoader = TTHelper.getClzUsingPluginLoader(200, OWN_PLAYER_LOADER_CLASS);
                Method declaredMethod = clzUsingPluginLoader.getDeclaredMethod("setLibraryLoader", ILibraryLoader.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(clzUsingPluginLoader, iLibraryLoader);
            } finally {
            }
        }
    }

    public static void setPlayerOutputLog(int i10) {
        sPlayerOutputLog = i10;
    }

    public static void setPlayerThreadPoolExecutor(ExecutorService executorService) {
        TTVideoEngineLog.i(TAG, "set player threadpool");
        AVThreadPool.setExecutorInstance(executorService);
    }

    public static void setPortraitService(IPortraitService iPortraitService) {
        StrategyHelper.helper().setPortraitService(iPortraitService);
    }

    public static void setPredictorDataLoaderListener() {
        if (StrategyHelper.helper().moduleSwitch(803) != 0) {
            TTVideoEngineLog.i(TAG, "setPredictorDataLoaderListener, vod strategy speed predictor");
        } else {
            DataLoaderHelper.getDataLoader().addListener(DataLoaderListener2ForStrategyCenter.sInstance);
        }
    }

    public static void setPreloadChooseUrlCallback(TTVideoEnginePreloadHLSChooseUrlCallback tTVideoEnginePreloadHLSChooseUrlCallback) {
        TTVideoEngineAdapter.setPreloadChooseUrlCallback(tTVideoEnginePreloadHLSChooseUrlCallback);
    }

    public static void setPreloadTaskConfigs(List<PreloadTaskConfig> list) {
        DataLoaderHelper.getDataLoader().setTaskConfigs(list);
    }

    public static void setProbeIntervalMS(int i10) {
        DataLoaderHelper.getDataLoader().setProbeIntervalMS(i10);
    }

    public static void setProbeType(int i10) {
        DataLoaderHelper.getDataLoader().setProbeType(i10);
    }

    public static void setProtectCacheDirsAvoidClear(String[] strArr) {
        DataLoaderHelper.getDataLoader().setProtectCacheDirsAvoidClear(strArr);
    }

    public static void setReportLogByEngine(boolean z10, Context context) {
        TTVideoEngineLog.i(TAG, "setReportLogByEngine " + z10);
        if (context == null) {
            TTVideoEngineLog.e(TAG, "setReportLogByEngine context is null");
        } else {
            AppLogEngineUploader.getInstance().setReportLogByEngine(z10, context.getApplicationContext());
        }
    }

    public static void setSpeedPredictorListener(ISpeedPredictorListener iSpeedPredictorListener) {
        StrategyCenter.setSpeedPredictorListener(iSpeedPredictorListener);
    }

    public static void setSpeedPredictorMlConfig(ISpeedPredictorMLConfig iSpeedPredictorMLConfig) {
        StrategyCenter.setSpeedPredictorMlConfig(iSpeedPredictorMLConfig);
    }

    public static void setStrategyEventListener(IStrategyEventListener iStrategyEventListener) {
        StrategyHelper.helper().setEventListener(iStrategyEventListener);
    }

    public static void setStrategySources(List<StrategySource> list) {
        StrategyManager.instance().setStrategySources(list);
    }

    public static void setStrategyStateSupplier(IStrategyStateSupplier iStrategyStateSupplier) {
        StrategyHelper.helper().setSupplier(iStrategyStateSupplier);
    }

    public static void setStringValue(int i10, String str) {
        if (i10 > 50000 && i10 <= 59999) {
            StrategyHelper.helper().setStringValue(i10, str);
        }
        SettingsHelper.helper().setRegionHost(i10, str);
        DataLoaderHelper.getDataLoader().setStringValue(i10, str);
        if (i10 == 122) {
            Inspector.share().setHost(str);
        }
    }

    public static void setStringValueSync(int i10, String str) {
        DataLoaderHelper.getDataLoader().setStringValueSync(i10, str);
    }

    public static void setTTDNSServerHost(String str) {
        HTTPDNS.setTTDNSServerHost(str);
    }

    public static void setThreadPoolExecutor(ThreadPoolExecutor threadPoolExecutor) {
        TTVideoEngineLog.i(TAG, "set threadpool");
        EngineThreadPool.setExecutorInstance(threadPoolExecutor);
    }

    public static void setVideoEventUploader(IVideoEventUploader iVideoEventUploader) {
        VideoEventManager.instance.setUploader(iVideoEventUploader);
    }

    public static void setVodSettingsNetClient(TTVNetClient tTVNetClient) {
        SettingsHelper.helper().setNetClient(tTVNetClient);
    }

    public static void setupNewSpeedPredictorConfigInfo(Map map) {
        StrategyCenter.setConfigInfo(map);
    }

    public static void setupSpeedPredictorInputType(int i10) {
        sABRSpeedPredictInputType = i10;
        if (i10 == 2) {
            DataLoaderHelper.getDataLoader().setIntValue(112, 500);
        } else {
            DataLoaderHelper.getDataLoader().setIntValue(112, 0);
        }
    }

    public static void startDataLoader(Context context) throws Exception {
        DataLoaderHelper.getDataLoader().setContext(context);
        try {
            DataLoaderHelper.getDataLoader().start();
            TTVideoEngineLog.d(TAG, "DataLoader Start");
        } catch (Exception e10) {
            TTVideoEngineLog.d(TAG, "DataLoader Start Fail");
            throw e10;
        }
    }

    public static void startIESSpeedPredictor(int i10) {
        if (!FeatureManager.hasPermission(FeatureManager.NET_SPEED)) {
            return;
        }
        if (StrategyHelper.helper().moduleSwitch(803) != 0) {
            TTVideoEngineLog.i(TAG, "startIESSpeedPredictor, vod strategy speed predictor");
        } else if (StrategyCenter.sNetSpeedPredictor != null) {
        } else {
            StrategyCenter.createSpeedPredictor(i10);
            setPredictorDataLoaderListener();
        }
    }

    public static void startSpeedPredictor(int i10, int i11) {
        startSpeedPredictor(i10, i11, 0, 0);
    }

    public static void startStartAndSelectGearSpeedPredictor(int i10) {
        if (StrategyHelper.helper().moduleSwitch(803) != 0) {
            TTVideoEngineLog.i(TAG, "startStartAndSelectGearSpeedPredictor ,vod strategy speed predictor");
        } else if (StrategyCenter.sNetSpeedPredictor != null) {
        } else {
            StrategyCenter.createNewStartAndSelectGearSpeedPredictor(i10);
            setPredictorDataLoaderListener();
        }
    }

    public static void switchToCellularNetwork() {
        DataLoaderHelper.getDataLoader().switchToCellularNetwork();
    }

    public static void switchToDefaultNetwork() {
        DataLoaderHelper.getDataLoader().switchToDefaultNetwork();
    }

    public static long tryQuickQueryCacheFileSize(String str) {
        return DataLoaderHelper.getDataLoader().quickQueryCacheFileSize(str);
    }

    public static void uploadSavedEvent(Context context) {
        EventSaver.getInstance(context).uploadIfExits(true);
    }

    public static int writeDataToFile(String str, long j10, long j11, int i10, byte[] bArr) {
        return DataLoaderHelper.getDataLoader().writeDataToFile(str, j10, j11, i10, bArr);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void addVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mVideoEngine.addVideoEngineCallback(videoEngineCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void asyncInitSR(boolean z10) {
        this.mVideoEngine.asyncInitSR(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean clearSurface(Surface surface, boolean z10) {
        return this.mVideoEngine.clearSurface(surface, z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void clearTextureRef() {
        this.mVideoEngine.clearTextureRef();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void configParams(Resolution resolution, Map<Integer, String> map) {
        this.mVideoEngine.configParams(resolution, map);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void configResolution(Resolution resolution) {
        this.mVideoEngine.configResolution(resolution);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public synchronized void createPlayer() {
        this.mVideoEngine.createPlayer();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void createPlayerAsync() {
        this.mVideoEngine.createPlayerAsync();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public ArrayList<HashMap<String, Object>> crosstalkHappen(ArrayList<TTVideoEngine> arrayList, HashMap<String, TTVideoEngineMonitor.TTVideoEngineLivePlayerInfo> hashMap) {
        return this.mVideoEngine.crosstalkHappen(arrayList, hashMap);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void dynamicControlSR(boolean z10) {
        this.mVideoEngine.dynamicControlSR(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void forceDraw() {
        this.mVideoEngine.forceDraw();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String getAPIString() {
        return this.mVideoEngine.getAPIString();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public int getAudioLatencyTime() {
        return this.mVideoEngine.getAudioLatencyTime();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public int getAudioLatencytime() {
        return this.mVideoEngine.getAudioLatencyTime();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getBufferingType() {
        return this.mVideoEngine.getBufferingType();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean getCacheControlEnabled() {
        return this.mVideoEngine.getCacheControlEnabled();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public List<String> getCacheKeys() {
        return this.mVideoEngine.getCacheKeys();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Context getContext() {
        return this.mVideoEngine.getContext();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getCurrentPlayPath() {
        return this.mVideoEngine.getCurrentPlayPath();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getCurrentPlaybackTime() {
        return this.mVideoEngine.getCurrentPlaybackTime();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getCurrentPlaybackTimeAsync() {
        return this.mVideoEngine.getCurrentPlaybackTimeAsync();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getCurrentQualityDesc() {
        return this.mVideoEngine.getCurrentQualityDesc();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Resolution getCurrentResolution() {
        return this.mVideoEngine.getCurrentResolution();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getDirectUrl() {
        return this.mVideoEngine.getDirectUrl();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getDubbedMemUrl(List<DubbedInfo> list) {
        return this.mVideoEngine.getDubbedMemUrl(list);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getDuration() {
        return this.mVideoEngine.getDuration();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public float getFloatOption(int i10) {
        return this.mVideoEngine.getFloatOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public GearStrategyConfig getGearStrategyEngineConfig() {
        return this.mVideoEngine.getGearStrategyEngineConfig();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String getHash() {
        return this.mVideoEngine.getHash();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public IVideoModel getIVideoModel() {
        return this.mVideoEngine.getIVideoModel();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getIntOption(int i10) {
        return this.mVideoEngine.getIntOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getLoadState() {
        return this.mVideoEngine.getLoadState();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getLoadedProgress() {
        return this.mVideoEngine.getLoadedProgress();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public IVideoEventLogger getLogger() {
        return this.mVideoEngine.getLogger();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public long getLongOption(int i10) {
        return this.mVideoEngine.getLongOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public boolean getLooping(boolean z10) {
        return this.mVideoEngine.getLooping(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public float getMaxVolume() {
        return this.mVideoEngine.getMaxVolume();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public MediaPlayer getMediaPlayer() {
        return this.mVideoEngine.getMediaPlayer();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public MediaTrackInfoModel[] getMediaTrackInfos() {
        return this.mVideoEngine.getMediaTrackInfos();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public IMediaMetrics getMetrics(int i10) {
        return this.mVideoEngine.getMetrics(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean getMirrorHorizontal() {
        return this.mVideoEngine.getMirrorHorizontal();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean getMirrorVertical() {
        return this.mVideoEngine.getMirrorVertical();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public TTVNetClient getNetClientSetByUser() {
        return this.mVideoEngine.getNetClientSetByUser();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int getPlayAPIVersion() {
        return this.mVideoEngine.getPlayAPIVersion();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public JSONObject getPlayErrorInfo() {
        return this.mVideoEngine.getPlayErrorInfo();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getPlaybackState() {
        return this.mVideoEngine.getPlaybackState();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getPlayerSessionId() {
        return this.mVideoEngine.getPlayerSessionId();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getQualityDescBeforeDowngrade() {
        return this.mVideoEngine.getQualityDescBeforeDowngrade();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Resolution getResolutionBeforeDowngrade() {
        return this.mVideoEngine.getResolutionBeforeDowngrade();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public int getRotation() {
        return this.mVideoEngine.getRotation();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Nullable
    public Map<String, Object> getStrategyLogData(String str) {
        return this.mVideoEngine.getStrategyLogData(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public StrategySource getStrategySource() {
        return this.mVideoEngine.getStrategySource();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public String getStringOption(int i10) {
        return this.mVideoEngine.getStringOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getSubTag() {
        return this.mVideoEngine.getSubTag();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Nullable
    public String getSubtitleContentInfo(int i10) {
        return this.mVideoEngine.getSubtitleContentInfo(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public Surface getSurface() {
        return this.mVideoEngine.getSurface();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getTag() {
        return this.mVideoEngine.getTag();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public VideoSurface getTextureSurface() {
        return this.mVideoEngine.getTextureSurface();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getTraceId() {
        return this.mVideoEngine.getTraceId();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public MediaPlayer.TrackInfo[] getTrackInfo() {
        return this.mVideoEngine.getTrackInfo();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public EventLoggerSource getVideoEngineDataSource() {
        return this.mVideoEngine.getVideoEngineDataSource();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public VideoFormatInfo getVideoFormatInfo() {
        return this.mVideoEngine.getVideoFormatInfo();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getVideoHeight() {
        return this.mVideoEngine.getVideoHeight();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getVideoID() {
        return this.mVideoEngine.getVideoID();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public VideoModel getVideoModel() {
        return this.mVideoEngine.getVideoModel();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getVideoWidth() {
        return this.mVideoEngine.getVideoWidth();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public float getVolume() {
        return this.mVideoEngine.getVolume();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getWatchedDuration() {
        return this.mVideoEngine.getWatchedDuration();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void ignoreSRResolutionLimit(boolean z10) {
        this.mVideoEngine.ignoreSRResolutionLimit(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void initSRStrategyConfig(SRStrategyConfig sRStrategyConfig) {
        this.mVideoEngine.initSRStrategyConfig(sRStrategyConfig);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isDashSource() {
        return this.mVideoEngine.isDashSource();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isInHousePlayer() {
        return this.mVideoEngine.isInHousePlayer();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isLooping() {
        return this.mVideoEngine.isLooping();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isMute() {
        return this.mVideoEngine.isMute();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isOSPlayer() {
        return this.mVideoEngine.isOSPlayer();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isPlayerType(int i10) {
        return this.mVideoEngine.isPlayerType(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isPrepared() {
        return this.mVideoEngine.isPrepared();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isReleased() {
        return this.mVideoEngine.isReleased();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isReportLogEnable() {
        return this.mVideoEngine.isReportLogEnable();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isShouldPlay() {
        return this.mVideoEngine.isShouldPlay();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isStarted() {
        return this.mVideoEngine.isStarted();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isSupportHDR() {
        return this.mVideoEngine.isSupportHDR();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isSupportSR() {
        return this.mVideoEngine.isSupportSR();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public boolean isSystemPlayer() {
        return this.mVideoEngine.isSystemPlayer();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isplaybackUsedSR() {
        return this.mVideoEngine.isplaybackUsedSR();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String logcatTag() {
        return this.mLogcatTag;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void notifyCacheEnd() {
        this.mVideoEngine.notifyCacheEnd();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void openTextureSR(boolean z10, boolean z11) {
        this.mVideoEngine.openTextureSR(z10, z11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void pause() {
        this.mVideoEngine.pause();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void pauseByInterruption() {
        this.mVideoEngine.pauseByInterruption();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void play() {
        this.mVideoEngine.play();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void prepare() {
        this.mVideoEngine.prepare();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void refreshEnginePara(Context context, int i10, Map map) {
        this.mVideoEngine.refreshEnginePara(context, i10, map);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public synchronized void release() {
        this.mVideoEngine.release();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public synchronized void releaseAsync() {
        this.mVideoEngine.releaseAsync();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void removeVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mVideoEngine.removeVideoEngineCallback(videoEngineCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void resetByPool() {
        this.mVideoEngine.resetByPool();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void resetByPoolSyncPart() {
        this.mVideoEngine.resetByPoolSyncPart();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void saveEvent() {
        TTVideoEngineInterface tTVideoEngineInterface = this.mVideoEngine;
        if (tTVideoEngineInterface != null) {
            tTVideoEngineInterface.saveEvent();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Bitmap saveFrame() {
        return this.mVideoEngine.saveFrame();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void seekTo(int i10, SeekCompletionListener seekCompletionListener) {
        this.mVideoEngine.seekTo(i10, seekCompletionListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setABRListener(ABRListener aBRListener) {
        this.mVideoEngine.setABRListener(aBRListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAIBarrageInfoListener(AIBarrageSimpleCallback aIBarrageSimpleCallback) {
        this.mVideoEngine.setAIBarrageInfoListener(aIBarrageSimpleCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAIBarrageUrl(String str) {
        this.mVideoEngine.setAIBarrageUrl(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAdditionSubModel(SubModelProvider subModelProvider) {
        this.mVideoEngine.setAdditionSubModel(subModelProvider);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setAsyncInit(boolean z10, int i10) {
        this.mVideoEngine.setAsyncInit(z10, i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAudioProcessor(AudioProcessor audioProcessor) {
        this.mVideoEngine.setAudioProcessor(audioProcessor);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAutoRangeRead(int i10, int i11) {
        this.mVideoEngine.setAutoRangeRead(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBarrageMaskHeadLen(int i10) {
        this.mVideoEngine.setBarrageMaskHeadLen(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBarrageMaskUrl(String str) {
        this.mVideoEngine.setBarrageMaskUrl(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBarrageMaskUrlUseDataLoader(String str, String str2) {
        this.mVideoEngine.setBarrageMaskUrlUseDataLoader(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBufferProcessCallback(BufferProcessCallback bufferProcessCallback) {
        this.mVideoEngine.setBufferProcessCallback(bufferProcessCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBufferThresholdControl(int i10, int i11) {
        this.mVideoEngine.setBufferThresholdControl(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCacheControlEnabled(boolean z10) {
        this.mVideoEngine.setCacheControlEnabled(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCacheFilePathListener(CacheFilePathListener cacheFilePathListener) {
        this.mVideoEngine.setCacheFilePathListener(cacheFilePathListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCacheInfoLists(String[] strArr, long[] jArr) {
        this.mVideoEngine.setCacheInfoLists(strArr, jArr);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomHeader(String str, String str2) {
        this.mVideoEngine.setCustomHeader(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomHeaderSync(String str, String str2) {
        this.mVideoEngine.setCustomHeaderSync(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomInfo(IVideoEventLogger.VideoEventCustomInfo videoEventCustomInfo, Object obj) {
        this.mVideoEngine.setCustomInfo(videoEventCustomInfo, obj);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomStr(String str) {
        this.mVideoEngine.setCustomStr(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDataSource(DataSource dataSource) {
        this.mVideoEngine.setDataSource(dataSource);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDecryptionKey(String str) {
        this.mVideoEngine.setDecryptionKey(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setDirectURL(String str) {
        this.mVideoEngine.setDirectURL(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String str, String str2) {
        this.mVideoEngine.setDirectUrlUseDataLoader(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoaderByFilePath(String str, String str2) {
        this.mVideoEngine.setDirectUrlUseDataLoaderByFilePath(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDisplayMode(View view, int i10) {
        this.mVideoEngine.setDisplayMode(view, i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setEffect(Bundle bundle) {
        this.mVideoEngine.setEffect(bundle);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setEncodedKey(String str) {
        this.mVideoEngine.setEncodedKey(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setExpectedParams(@NonNull Resolution resolution, @Nullable Map<Integer, String> map) {
        this.mVideoEngine.setExpectedParams(resolution, map);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setExternLogListener(ExternVideoLoggerListener externVideoLoggerListener, String str) {
        this.mVideoEngine.setExternLogListener(externVideoLoggerListener, str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setExtraSurface(Surface surface, int i10) {
        this.mVideoEngine.setExtraSurface(surface, i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setFFmpegProtocolObject(TTVideoEngineFFmpegProtocol tTVideoEngineFFmpegProtocol) {
        TTVideoEngineInterface tTVideoEngineInterface = this.mVideoEngine;
        if (tTVideoEngineInterface != null) {
            tTVideoEngineInterface.setFFmpegProtocolObject(tTVideoEngineFFmpegProtocol);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setFloatOption(int i10, float f10) {
        this.mVideoEngine.setFloatOption(i10, f10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setGearStrategyEngineConfig(GearStrategyConfig gearStrategyConfig) {
        this.mVideoEngine.setGearStrategyEngineConfig(gearStrategyConfig);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setGearStrategyListener(IGearStrategyListener iGearStrategyListener, Object obj) {
        this.mVideoEngine.getGearStrategyEngineConfig().setGearStrategyListener(iGearStrategyListener).setUserData(obj);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setGroupID(String str) {
        this.mVideoEngine.setGroupID(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setGroupIdUseDataLoader(String str) {
        this.mVideoEngine.setGroupIdUseDataLoader(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setIntOption(int i10, int i11) {
        this.mVideoEngine.setIntOption(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setIsMute(boolean z10) {
        this.mVideoEngine.setIsMute(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLensParams(Bundle bundle) {
        this.mVideoEngine.setLensParams(bundle);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setListener(VideoEngineListener videoEngineListener) {
        this.mVideoEngine.setListener(videoEngineListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLiveID(String str) {
        this.mVideoEngine.setVideoID(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLoadControl(LoadControl loadControl) {
        this.mVideoEngine.setLoadControl(loadControl);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLocalURL(String str) {
        this.mVideoEngine.setLocalURL(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLoggerIntOption(int i10, int i11) {
        this.mVideoEngine.setLoggerIntOption(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLoggerLongOption(int i10, long j10) {
        this.mVideoEngine.setLoggerLongOption(i10, j10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLongOption(int i10, long j10) {
        this.mVideoEngine.setLongOption(i10, j10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLooping(boolean z10) {
        this.mVideoEngine.setLooping(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setMaskInfoListener(MaskInfoListener maskInfoListener) {
        this.mVideoEngine.setMaskInfoListener(maskInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setMirrorHorizontal(boolean z10) {
        this.mVideoEngine.setMirrorHorizontal(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setMirrorVertical(boolean z10) {
        this.mVideoEngine.setMirrorVertical(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setNetworkClient(TTVNetClient tTVNetClient) {
        this.mVideoEngine.setNetworkClient(tTVNetClient);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setObjectOption(int i10, Object obj) {
        this.mVideoEngine.setObjectOption(i10, obj);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayAPIVersion(int i10, String str) {
        this.mVideoEngine.setPlayAPIVersion(i10, str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayAuthToken(String str) {
        this.mVideoEngine.setPlayAuthToken(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayInfo(int i10, long j10) {
        this.mVideoEngine.setPlayInfo(i10, j10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayItem(TTVideoEnginePlayItem tTVideoEnginePlayItem) {
        this.mVideoEngine.setPlayItem(tTVideoEnginePlayItem);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setPlaybackParams(PlaybackParams playbackParams) {
        this.mVideoEngine.setPlaybackParams(playbackParams);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayerEventListener(PlayerEventSimpleListener playerEventSimpleListener) {
        this.mVideoEngine.setPlayerEventListener(playerEventSimpleListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayerHLSChooseStreamCallback(TTVideoEnginePlayHLSChooseStreamCallback tTVideoEnginePlayHLSChooseStreamCallback) {
        this.mVideoEngine.setPlayerHLSChooseStreamCallback(tTVideoEnginePlayHLSChooseStreamCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayerSurface(Surface surface, int i10, int i11) {
        this.mVideoEngine.setPlayerSurface(surface, i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPreloaderItem(TTAVPreloaderItem tTAVPreloaderItem) {
        this.mVideoEngine.setPreloaderItem(tTAVPreloaderItem);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setQcomVpp(boolean z10, int i10) {
        this.mVideoEngine.setQcomVpp(z10, i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setRadioMode(boolean z10) {
        this.mVideoEngine.setRadioMode(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setReportLogEnable(boolean z10) {
        this.mVideoEngine.setReportLogEnable(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setResolutionMap(HashMap<String, Resolution> hashMap) {
        this.mVideoEngine.setResolutionMap(hashMap);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setRotation(int i10) {
        this.mVideoEngine.setRotation(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setSARChangeListener(SARChangeListener sARChangeListener) {
        this.mVideoEngine.setSARChangeListener(sARChangeListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSRInitConfig(int i10, String str, String str2, String str3, int i11, int i12, int i13) {
        this.mVideoEngine.setSRInitConfig(i10, str, str2, str3, i11, i12, i13);
    }

    public void setSource(Source source) {
        this.mVideoEngine.setStrategySource((StrategySource) source);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSpeedShiftConfig(SpeedShiftConfig speedShiftConfig) {
        this.mVideoEngine.setSpeedShiftConfig(speedShiftConfig);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSrMaxTextureSize(int i10, int i11) {
        this.mVideoEngine.setSrMaxTextureSize(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setSrMaxTexureSize(int i10, int i11) {
        this.mVideoEngine.setSrMaxTextureSize(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setStartTime(int i10) {
        this.mVideoEngine.setStartTime(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setStrategySource(StrategySource strategySource) {
        this.mVideoEngine.setStrategySource(strategySource);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setStreamInfoListener(StreamInfoListener streamInfoListener) {
        this.mVideoEngine.setStreamInfoListener(streamInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setStringOption(int i10, String str) {
        this.mVideoEngine.setStringOption(i10, str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubAuthToken(String str) {
        this.mVideoEngine.setSubAuthToken(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubDesInfoModel(SubDesInfoModelProvider subDesInfoModelProvider) {
        this.mVideoEngine.setSubDesInfoModel(subDesInfoModelProvider);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubInfoCallBack(SubInfoSimpleCallBack subInfoSimpleCallBack) {
        this.mVideoEngine.setSubInfoCallBack(subInfoSimpleCallBack);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubInfoListener(SubInfoListener subInfoListener) {
        this.mVideoEngine.setSubInfoListener(subInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setSubTag(String str) {
        this.mVideoEngine.setSubTag(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setSurface(Surface surface) {
        this.mVideoEngine.setSurface(surface);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        this.mVideoEngine.setSurfaceHolder(surfaceHolder);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceHolderSync(SurfaceHolder surfaceHolder) {
        this.mVideoEngine.setSurfaceHolderSync(surfaceHolder);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceSync(Surface surface) {
        this.mVideoEngine.setSurfaceSync(surface);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTTHlsDrmToken(String str) {
        this.mVideoEngine.setTTHlsDrmToken(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setTag(String str) {
        this.mVideoEngine.setTag(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTestSpeedEnable(int i10, TestNetSpeedListener testNetSpeedListener) {
        this.mVideoEngine.setTestSpeedEnable(i10, testNetSpeedListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTokenUrlTemplate(String str) {
        this.mVideoEngine.setTokenUrlTemplate(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTraitObject(int i10, TraitObject traitObject) {
        this.mVideoEngine.setTraitObject(i10, traitObject);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setUnSupportSampleRates(int[] iArr) {
        this.mVideoEngine.setUnSupportSampleRates(iArr);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoBufferDetailListener(VideoBufferDetailListener videoBufferDetailListener) {
        this.mVideoEngine.setVideoBufferDetailListener(videoBufferDetailListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoBufferListener(VideoBufferListener videoBufferListener) {
        this.mVideoEngine.setVideoBufferListener(videoBufferListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mVideoEngine.setVideoEngineCallback(videoEngineCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoEngineGetInfoListener(VideoEngineGetInfoListener videoEngineGetInfoListener) {
        this.mVideoEngine.setVideoEngineGetInfoListener(videoEngineGetInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoEngineInfoListener(VideoEngineInfoListener videoEngineInfoListener) {
        this.mVideoEngine.setVideoEngineInfoListener(videoEngineInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoEngineSimpleCallback(VideoEngineSimpleCallback videoEngineSimpleCallback) {
        this.mVideoEngine.setVideoEngineSimpleCallback(videoEngineSimpleCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoID(String str) {
        this.mVideoEngine.setVideoID(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoInfoListener(VideoInfoListener videoInfoListener) {
        this.mVideoEngine.setVideoInfoListener(videoInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoModel(VideoModel videoModel) {
        this.mVideoEngine.setVideoModel(videoModel);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoURLRouteListener(VideoURLRouteListener videoURLRouteListener) {
        this.mVideoEngine.setVideoURLRouteListener(videoURLRouteListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setVolume(float f10, float f11) {
        this.mVideoEngine.setVolume(f10, f11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void snapshot(SnapshotListener snapshotListener) {
        this.mVideoEngine.snapshot(snapshotListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void start() {
        this.mVideoEngine.start();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void stop() {
        this.mVideoEngine.stop();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String[] supportedQualityInfos() {
        return this.mVideoEngine.supportedQualityInfos();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Resolution[] supportedResolutionTypes() {
        return this.mVideoEngine.supportedResolutionTypes();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public List<SubInfo> supportedSubInfoList() {
        return this.mVideoEngine.supportedSubInfoList();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public int[] supportedSubtitleLangs() {
        return this.mVideoEngine.supportedSubtitleLangs();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean supporth265Playback() {
        return this.mVideoEngine.supporth265Playback();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean supporth266Playback() {
        return this.mVideoEngine.supporth266Playback();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void updateSRStrategyConfig(SRStrategyConfig sRStrategyConfig) {
        this.mVideoEngine.updateSRStrategyConfig(sRStrategyConfig);
    }

    public TTVideoEngine(Context context, int i10) {
        this(context, i10, null);
    }

    public static void addPreloadMedias(List<PreloadMedia> list) {
        DataLoaderHelper.getDataLoader().addPreloadMedias(list, null);
    }

    public static void addPreloadModelMedia(PreloadModelMedia preloadModelMedia, String str) {
        preloadModelMedia.mSceneId = str;
        DataLoaderHelper.getDataLoader().addPreloadModelMedia(preloadModelMedia);
    }

    public static void addTask(PreloaderVidItem preloaderVidItem) {
        DataLoaderHelper.getDataLoader().addTask(preloaderVidItem);
    }

    public static void businessEvent(int i10, String str) {
        StrategyHelper.helper().getCenter().businessEvent(i10, str);
    }

    public static void clearAllCaches(boolean z10) {
        DataLoaderHelper.getDataLoader().clearAllCaches(z10);
    }

    public static Resolution findBestResolution(VideoModel videoModel, Resolution resolution, int i10) {
        return findBestResolution(videoModel, resolution, i10, null);
    }

    @Nullable
    public static VideoInfo findMaxCacheInfo(IVideoModel iVideoModel, int i10) {
        return BestResolution.findMaxCacheInfo(iVideoModel, i10);
    }

    public static long getCacheFileSize(VideoModel videoModel, Resolution resolution) {
        return getCacheFileSize((IVideoModel) videoModel, resolution);
    }

    @Nullable
    public static TTVideoEngine getPreRenderEngine(String str) {
        return StrategyManager.instance().getPreRenderEngine(str);
    }

    public static String proxyUrl(String str, String str2, String[] strArr, Resolution resolution, String str3, String str4) {
        return DataLoaderHelper.getDataLoader().proxyUrl(str, str2, strArr, resolution, str3, str4);
    }

    public static void removeAllPreloadMedia() {
        removeAllPreloadMedia(null, 1);
    }

    public static void removeCacheFile(IVideoModel iVideoModel) {
        List<VideoInfo> videoInfoList;
        if (iVideoModel == null || !iVideoModel.hasData() || (videoInfoList = iVideoModel.getVideoInfoList()) == null || videoInfoList.size() <= 0) {
            return;
        }
        for (VideoInfo videoInfo : videoInfoList) {
            DataLoaderHelper.getDataLoader().forceRemoveCacheFile(videoInfo.getValueStr(15));
        }
    }

    public static void removeMedia(String str) {
        DataLoaderHelper.getDataLoader().removeMedia(str, "");
    }

    public static void startSpeedPredictor(int i10, int i11, int i12, int i13) {
        if (FeatureManager.hasPermission(FeatureManager.NET_SPEED) && StrategyCenter.sNetAbrSpeedPredictor == null) {
            sNetSpeedAbrPredictType = i10;
            sIsReportTestSpeedInfo = i12;
            sReportSpeedInfoMaxWindowSize = i13;
            if (sABRSpeedPredictInputType == 0) {
                sABRSpeedPredictInputType = 1;
            }
            if (i11 > 0) {
                sTestSpeedInterval = i11;
                sTestSpeedSampleInterval = i11;
            }
            TTVideoEngineLog.d(TAG, "[ABR] abrSpeedPredictUpdateIntervalMs:" + i11);
            StrategyCenter.createAbrSpeedPredictor(i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) {
        this.mVideoEngine.setDataSource(fileDescriptor, j10, j11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectURL(String str, String str2) {
        this.mVideoEngine.setDirectURL(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String str, String str2, @Nullable String str3) {
        this.mVideoEngine.setDirectUrlUseDataLoader(str, str2, str3);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoaderByFilePath(String[] strArr, String str) {
        this.mVideoEngine.setDirectUrlUseDataLoaderByFilePath(strArr, str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setPlayAuthToken(String str, int i10) {
        this.mVideoEngine.setPlayAuthToken(str, i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSRInitConfig(int i10, String str, String str2, String str3) {
        this.mVideoEngine.setSRInitConfig(i10, str, str2, str3);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceHolder(SurfaceHolder surfaceHolder, boolean z10) {
        this.mVideoEngine.setSurfaceHolder(surfaceHolder, z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceSync(Surface surface, long j10) {
        this.mVideoEngine.setSurfaceSync(surface, j10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoModel(IVideoModel iVideoModel) {
        this.mVideoEngine.setVideoModel(iVideoModel);
    }

    public TTVideoEngine(Context context, int i10, Map map) {
        this.mLogcatTag = "TTVideoEngine@" + Integer.toHexString(hashCode());
        TTVideoEngineLog.i(TAG, "init2, type:" + i10 + ", this:" + this + ", version:1.10.172.340-jzdrm-premium");
        this.mVideoEngine = createEngine(context, i10, map, this);
    }

    public static void addTask(PreloaderURLItem preloaderURLItem) {
        DataLoaderHelper.getDataLoader().addTask(preloaderURLItem);
    }

    public static void businessEvent(int i10, int i11, int i12) {
        StrategyHelper.helper().getCenter().businessEvent(i10, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Resolution findBestResolution(IVideoModel iVideoModel, Resolution resolution, int i10, SpeedShiftConfig speedShiftConfig) {
        Resolution findDefaultResolution = BestResolution.findDefaultResolution(iVideoModel, resolution);
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return i10 != 4 ? findDefaultResolution : BestResolution.findByNetLevel(iVideoModel, findDefaultResolution);
                }
                ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetSpeedPredictor;
                return BestResolution.findAwemeShiftResolution(iVideoModel, findDefaultResolution, iSpeedPredictor != null ? (iSpeedPredictor.getPredictSpeed() / 8.0f) / 1024.0f : -1.0d, speedShiftConfig);
            }
            return BestResolution.findMaxQualityResolution(iVideoModel, findDefaultResolution);
        }
        return BestResolution.findMaxCacheResolution(iVideoModel, findDefaultResolution);
    }

    public static long getCacheFileSize(IVideoModel iVideoModel, Resolution resolution) {
        return getCacheFileSize(iVideoModel, resolution, (Map<Integer, String>) null);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        this.mVideoEngine.setDataSource(iMediaDataSource);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String[] strArr, String str) {
        this.mVideoEngine.setDirectUrlUseDataLoader(strArr, str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoaderByFilePath(String[] strArr, String str, String str2) {
        this.mVideoEngine.setDirectUrlUseDataLoaderByFilePath(strArr, str, str2);
    }

    public static void addTask(String str, String str2, String str3, long j10) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, str3, j10);
    }

    public static void businessEvent(int i10, int i11, String str) {
        StrategyHelper.helper().getCenter().businessEvent(i10, i11, str);
    }

    public static long getCacheFileSize(VideoModel videoModel, Resolution resolution, Map<Integer, String> map) {
        return getCacheFileSize((IVideoModel) videoModel, resolution, map);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String[] strArr, String str, @Nullable String str2) {
        this.mVideoEngine.setDirectUrlUseDataLoader(strArr, str, str2);
    }

    public static void addTask(String str, String str2, long j10, String str3) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, j10, str3);
    }

    public static long getCacheFileSize(IVideoModel iVideoModel, Resolution resolution, Map<Integer, String> map) {
        if (iVideoModel == null || resolution == null) {
            return 0L;
        }
        VideoInfo videoInfo = iVideoModel.getVideoInfo(resolution, VideoRef.TYPE_VIDEO, map, false);
        long cacheFileSize = videoInfo != null ? DataLoaderHelper.getDataLoader().getCacheFileSize(videoInfo.getValueStr(15)) : 0L;
        VideoInfo videoInfo2 = iVideoModel.getVideoInfo(resolution, VideoRef.TYPE_AUDIO, map, true);
        return videoInfo2 != null ? cacheFileSize + DataLoaderHelper.getDataLoader().getCacheFileSize(videoInfo2.getValueStr(15)) : cacheFileSize;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(DirectUrlItem directUrlItem) {
        this.mVideoEngine.setDirectUrlUseDataLoader(directUrlItem);
    }

    public static void addTask(String str, String str2, long j10, DataLoaderResourceProvider dataLoaderResourceProvider) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, j10, dataLoaderResourceProvider, (String) null);
    }

    public static void addTask(String str, String str2, long j10, DataLoaderResourceProvider dataLoaderResourceProvider, String str3) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, j10, dataLoaderResourceProvider, str3);
    }

    public static void addTask(String str, String str2, String[] strArr, long j10) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, strArr, j10);
    }

    public static void addTask(String str, String str2, String[] strArr, long j10, String str3) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, strArr, j10, str3);
    }

    public static void addTask(String[] strArr, String str, long j10, String str2) {
        DataLoaderHelper.getDataLoader().addTask(strArr, str, j10, str2);
    }

    @Deprecated
    public static void addTask(String str, String str2, VideoModel videoModel, Resolution resolution, long j10) {
        DataLoaderHelper.getDataLoader().addTask(str, str2, videoModel, resolution, j10);
    }

    public static void addTask(VideoModel videoModel, Resolution resolution, long j10) {
        DataLoaderHelper.getDataLoader().addTask(videoModel, resolution, j10);
    }

    public static void addTask(IVideoModel iVideoModel, Resolution resolution, long j10) {
        DataLoaderHelper.getDataLoader().addTask(iVideoModel, resolution, j10);
    }

    public static void addTask(PreloaderVideoModelItem preloaderVideoModelItem) {
        DataLoaderHelper.getDataLoader().addTask(preloaderVideoModelItem);
    }

    public static void addTask(VideoModel videoModel, Resolution resolution, Map<Integer, String> map, long j10) {
        DataLoaderHelper.getDataLoader().addTask(videoModel, resolution, map, j10);
    }

    public static void initAppLog() {
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void resetEngine() {
    }

    public static void enableNewMDLFetcher(boolean z10) {
    }

    @Deprecated
    public static void setExpiredIpEnable(boolean z10) {
    }

    @Deprecated
    public static void setUsingTTNETHttpDns(boolean z10) {
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDefaultFileCacheDir(String str) {
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setFileCacheDir(String str) {
    }

    @Deprecated
    public static void setSettingConfig(Context context, Map<String, Object> map) {
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void initEngine(Context context, int i10) {
    }
}
