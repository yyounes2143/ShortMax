package com.ss.ttvideoengine.selector.strategy;

import android.text.TextUtils;
import android.util.LruCache;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.abrmodule.ABRResult;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTNetWorkListener;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.model.IVideoInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class GearStrategy {
    public static final int GEAR_STRATEGY_DOWNGRADE_NARROW_SCREEN = 2;
    public static final int GEAR_STRATEGY_DOWNGRADE_NONE = 0;
    public static final int GEAR_STRATEGY_DOWNGRADE_SR = 1;
    public static final int GEAR_STRATEGY_ERROR_CONFIG_NULL = -6;
    public static final int GEAR_STRATEGY_ERROR_GEAR_STRATEGY_DISABLED = -7;
    public static final int GEAR_STRATEGY_ERROR_JSON_PARSE_FAIL = -1;
    public static final int GEAR_STRATEGY_ERROR_METHOD_CALLBACK_LISTENER_NULL = -5;
    public static final int GEAR_STRATEGY_ERROR_OK = 0;
    public static final int GEAR_STRATEGY_ERROR_STRATEGY_CENTER_NOT_RUNNING = -3;
    public static final int GEAR_STRATEGY_ERROR_STRATEGY_RESULT_NULL = -4;
    public static final int GEAR_STRATEGY_ERROR_VIDEO_INFO_EMPTY = -2;
    public static final String GEAR_STRATEGY_KEY_ABR_MAX_CACHE_BITRATE = "max_cache_bitrate";
    public static final String GEAR_STRATEGY_KEY_ABR_SR_INFO = "sr_info";
    public static final String GEAR_STRATEGY_KEY_ABR_STARTUP_AVERAGE_SPEED = "average_speed";
    public static final String GEAR_STRATEGY_KEY_ABR_STARTUP_BITRATE_BEFORE_FIT_SCREEN = "bitrate_before_fit_screen";
    public static final String GEAR_STRATEGY_KEY_ABR_STARTUP_INFO = "startup_info";
    public static final String GEAR_STRATEGY_KEY_ABR_STARTUP_PREDICT_SPEED = "predict_speed";
    public static final String GEAR_STRATEGY_KEY_ABR_STARTUP_SPEED = "startup_speed";
    public static final String GEAR_STRATEGY_KEY_ABR_VERSION = "abr_ver";
    public static final String GEAR_STRATEGY_KEY_AUDIO_BITRATE = "audio_bitrarte";
    public static final String GEAR_STRATEGY_KEY_AUDIO_CALC_BITRATE = "audio_calc_bitrarte";
    public static final String GEAR_STRATEGY_KEY_BLOCK_DOWNGRADE_BITRATE = "bdowngrade_bitrate";
    public static final String GEAR_STRATEGY_KEY_CONFIG_QUALITY = "config_quality";
    public static final String GEAR_STRATEGY_KEY_CURVE_ADJUST_FACTOR = "curve_adjust_factor";
    public static final String GEAR_STRATEGY_KEY_CURVE_ADJUST_MODE = "curve_adjust_mode";
    public static final String GEAR_STRATEGY_KEY_DOWNGRADE_TYPE = "downgrade_type";
    public static final String GEAR_STRATEGY_KEY_ERROR_CODE = "error_code";
    public static final String GEAR_STRATEGY_KEY_ERROR_DESC = "error_desc";
    public static final String GEAR_STRATEGY_KEY_EXTRA_CONFIG = "extra_config";
    public static final String GEAR_STRATEGY_KEY_EXTRA_INFO = "extra_info";
    public static final String GEAR_STRATEGY_KEY_INITIAL_SPEED = "initial_speed";
    public static final String GEAR_STRATEGY_KEY_SELECT_REASON = "select_reason";
    public static final String GEAR_STRATEGY_KEY_SPEED = "speed";
    public static final String GEAR_STRATEGY_KEY_SR_GEARS = "sr_gears";
    public static final String GEAR_STRATEGY_KEY_STRATEGY_MODULE = "strategy_module";
    public static final String GEAR_STRATEGY_KEY_STRATEGY_TYPE = "strategy_type";
    public static final String GEAR_STRATEGY_KEY_USER_ENTER_FULLSCREEN = "user_enter_fullscreen";
    public static final String GEAR_STRATEGY_KEY_USER_EXPECTED_BITRATE = "expected_bitrate";
    public static final String GEAR_STRATEGY_KEY_USER_QUALITY_SENSITIVITY = "user_quality_sen";
    public static final String GEAR_STRATEGY_KEY_USE_LAST_NETWORK_SPEED = "use_last_network_speed";
    public static final String GEAR_STRATEGY_KEY_VIDEO_BITRATE = "video_bitrarte";
    public static final String GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN = "video_bitrarte_origin";
    public static final String GEAR_STRATEGY_KEY_VIDEO_BITRATE_USER_SELECTED = "video_bitrarte_user_selected";
    public static final String GEAR_STRATEGY_KEY_VIDEO_CALC_BITRATE = "video_calc_bitrarte";
    public static final String GEAR_STRATEGY_KEY_VIDEO_QUALITY_DESC = "video_quality_desc";
    public static final String GEAR_STRATEGY_KEY_VIDEO_QUALITY_DESC_ORIGIN = "video_quality_desc_origin";
    public static final String GEAR_STRATEGY_KEY_VIDEO_RESOLUTION = "video_resolution";
    public static final String GEAR_STRATEGY_KEY_VIDEO_RESOLUTION_ORIGIN = "video_resolution_origin";
    public static final int GEAR_STRATEGY_REASON_AUTO_BITRATE_SET = 3;
    public static final int GEAR_STRATEGY_REASON_BANDWIDTH_SET = 4;
    public static final int GEAR_STRATEGY_REASON_BEST_RESOLUTION_MAX_CACHE = 12;
    public static final int GEAR_STRATEGY_REASON_CALLBACK = 13;
    public static final int GEAR_STRATEGY_REASON_CONFIG_QUALITY_LOWEST = 11;
    public static final int GEAR_STRATEGY_REASON_Cache1 = 7;
    public static final int GEAR_STRATEGY_REASON_Cache2 = 8;
    public static final int GEAR_STRATEGY_REASON_DEFAULT_BITRATE = 2;
    public static final int GEAR_STRATEGY_REASON_DEFAULT_GEAR = 1;
    public static final int GEAR_STRATEGY_REASON_FALLBACK = 6;
    public static final int GEAR_STRATEGY_REASON_GEAR_SET = 5;
    public static final int GEAR_STRATEGY_REASON_PRELOAD_CACHE = 10;
    public static final int GEAR_STRATEGY_REASON_USER_SELECTED = 9;
    public static final int GEAR_STRATEGY_SELECT_METHOD_CALLBACK = 2;
    public static final int GEAR_STRATEGY_SELECT_METHOD_NATIVE = 1;
    public static final int GEAR_STRATEGY_SELECT_TYPE_PLAY = 1;
    public static final int GEAR_STRATEGY_SELECT_TYPE_PRELOAD = 2;
    public static final String GEAR_STRATEGY_VALUE_CONFIG_QUALITY_DEFAULT = "1";
    public static final String GEAR_STRATEGY_VALUE_CONFIG_QUALITY_HIGH = "2";
    public static final String GEAR_STRATEGY_VALUE_CONFIG_QUALITY_LOW = "3";
    public static final String GEAR_STRATEGY_VALUE_CONFIG_QUALITY_LOW_LITE = "4";
    public static final String GEAR_STRATEGY_VALUE_CURVE_ADJUST_MODE_BITRATE = "2";
    public static final String GEAR_STRATEGY_VALUE_CURVE_ADJUST_MODE_SPEED = "1";
    public static final int KEY_4G_MAX_QUALITY_DESC = 20;
    public static final int KEY_4G_MAX_RESOLUTION = 19;
    public static final int KEY_ABR_AVERAGE_DOWNLOAD_SPEED = 39;
    public static final int KEY_ABR_AVERAGE_STARTUP_END_NETWORK_SPEED = 40;
    public static final int KEY_ABR_DOWNLOAD_SPEED = 36;
    public static final int KEY_ABR_FIXED_LEVEL = 45;
    public static final int KEY_ABR_FLOW_JSON = 53;
    public static final int KEY_ABR_NARROW_SCREEN_USE_WIDTH = 31;
    public static final int KEY_ABR_NETWORK_SPEED = 37;
    public static final int KEY_ABR_NETWORK_SPEED_CONFIDENCE = 38;
    public static final int KEY_ABR_ONCE_TYPE = 16;
    public static final int KEY_ABR_POOL_ENABLE = 56;
    public static final int KEY_ABR_PRELOAD_JSON = 54;
    public static final int KEY_ABR_STARTUP_BANDWIDTH_PARAMETER = 47;
    public static final int KEY_ABR_STARTUP_FIRST_PARAM = 48;
    public static final int KEY_ABR_STARTUP_FOURTH_PARAM = 51;
    public static final int KEY_ABR_STARTUP_JSON = 55;
    public static final int KEY_ABR_STARTUP_MODEL = 46;
    public static final int KEY_ABR_STARTUP_SECOND_PARAM = 49;
    public static final int KEY_ABR_STARTUP_SPEED_TYPE = 9;
    public static final int KEY_ABR_STARTUP_THIRD_PARAM = 50;
    public static final int KEY_ABR_STARTUP_USE_CACHE = 52;
    public static final int KEY_ABR_SWITCH_CS_MODEL = 44;
    public static final int KEY_ABR_USER_ENTER_FULL_SCREEN = 11;
    public static final int KEY_ABR_USER_QUALITY_SENSITIVITY = 10;
    public static final int KEY_ABR_WITH_SR = 12;
    public static final int KEY_CACHE_INFO = 57;
    public static final int KEY_DISPLAY_HEIGHT = 27;
    public static final int KEY_DISPLAY_WIDTH = 26;
    public static final int KEY_DOWNGRADE_QUALITY_DESC = 8;
    public static final int KEY_DOWNGRADE_RESOLUTION = 7;
    public static final int KEY_GEAR_STRATEGY_CONFIG = 3;
    public static final int KEY_GEAR_STRATEGY_MODULE = 2;
    public static final int KEY_GEAR_STRATEGY_SELECT_METHOD = 4;
    public static final int KEY_GEAR_STRATEGY_TYPE = 1;
    public static final int KEY_HAR_SCORE = 42;
    public static final int KEY_HAR_STATUS = 41;
    public static final int KEY_LOG_LEVEL = 33;
    public static final int KEY_QUICK_FILE_CACHE = 32;
    public static final int KEY_QUICK_GET_FILE_CACHE = 23;
    public static final int KEY_SCREEN_HEIGHT = 25;
    public static final int KEY_SCREEN_WIDTH = 24;
    public static final int KEY_SR_BENCHMARK = 15;
    public static final int KEY_SR_ENABLED = 13;
    public static final int KEY_SR_SATISFIED = 14;
    public static final int KEY_SR_STRATEGY_CONFIG = 30;
    public static final int KEY_SR_SUPPORT_BITRATE = 43;
    public static final int KEY_SUB_TAG = 29;
    public static final int KEY_TAG = 28;
    public static final int KEY_USER_DOWNGRADE_BITRATE = 35;
    public static final int KEY_USER_EXPECTED_BITRATE = 34;
    public static final int KEY_USER_EXPECTED_QUALITY_DESC = 6;
    public static final int KEY_USER_EXPECTED_RESOLUTION = 5;
    public static final int KEY_WIFI_DEFAULT_QUALITY_DESC = 18;
    public static final int KEY_WIFI_DEFAULT_RESOLUTION = 17;
    public static final int KEY_WIFI_MAX_RESOLUTION = 21;
    public static final int KEY_WIFI_MAX_RESOLUTION_QUALITY_DESC = 22;
    public static final String TAG = "TTVideoEngine.GearStrategy";
    private static GearStrategyConfig mGlobalConfig = new GearStrategyConfig();
    private static Lock mPreloadCacheLock = new ReentrantLock();
    private static LruCache<String, Map<Long, Map<String, Object>>> mPreloadCache = new LruCache<>(100);

    private static void cacheInfoToStrategyParam(IVideoModel iVideoModel, GearStrategyConfig gearStrategyConfig, Map<String, String> map) {
        long cacheFileSize;
        int intValue = gearStrategyConfig.getIntValue(23);
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            try {
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null) {
                        String valueStr = videoInfo.getValueStr(15);
                        if (intValue == 1) {
                            cacheFileSize = TTVideoEngine.quickGetCacheFileSize(valueStr);
                        } else {
                            cacheFileSize = TTVideoEngine.getCacheFileSize(valueStr);
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("bitrate", videoInfo.getValueInt(3));
                        jSONObject2.put("fileSize", cacheFileSize);
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.put("caches", jSONArray);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            map.put(Integer.toString(57), jSONObject.toString());
        }
    }

    private static void checkSRInfo(IVideoModel iVideoModel, GearStrategyConfig gearStrategyConfig, Map<String, Object> map) {
        int i10;
        Object objectValue = gearStrategyConfig.getObjectValue(30, null);
        if (objectValue != null && (objectValue instanceof SRStrategyConfig)) {
            SRStrategyConfig sRStrategyConfig = (SRStrategyConfig) objectValue;
            SRStrategy sRStrategy = new SRStrategy();
            boolean z10 = false;
            if (iVideoModel.hasFormat(IVideoModel.Format.DASH)) {
                i10 = 2;
            } else {
                i10 = 0;
            }
            if (iVideoModel.hasFormat(IVideoModel.Format.MP4)) {
                i10 |= 1;
            }
            sRStrategyConfig.setCurrentVideoFormatType(i10);
            sRStrategyConfig.setCurrentDuration(iVideoModel.getVideoRefInt(3));
            List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
            if (videoInfoList != null && videoInfoList.size() > 0) {
                Iterator<VideoInfo> it = videoInfoList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String valueStr = it.next().getValueStr(7);
                    if (valueStr != null && valueStr.toLowerCase(Locale.getDefault()).contains("hdr")) {
                        z10 = true;
                        break;
                    }
                }
            }
            sRStrategyConfig.setIsHdr(z10);
            sRStrategy.updateConfig(sRStrategyConfig);
            gearStrategyConfig.setIntValue(13, sRStrategy.isSREnabled() ? 1 : 0);
            gearStrategyConfig.setIntValue(14, sRStrategy.isSRSatisfied() ? 1 : 0);
            gearStrategyConfig.setObjectValue(15, sRStrategy.getSRBenchmark());
            getSrSupportBitrate(iVideoModel, sRStrategy, gearStrategyConfig);
            map.put(SRStrategy.KEY_ENABLE_SR_STRATEGY, 1);
            map.put(SRStrategy.KEY_ENABLE_ABR_SR, 1);
            map.put(SRStrategy.KEY_SR_FAIL_REASON, Integer.valueOf(sRStrategy.getSRNotUseReason()));
            map.put(SRStrategy.KEY_SR_SATISFIED, Integer.valueOf(sRStrategy.isSRSatisfied() ? 1 : 0));
        }
    }

    private static void configIntToStrategyParam(GearStrategyConfig gearStrategyConfig, int i10, Map<String, String> map, int i11) {
        map.put(Integer.toString(i10), Integer.toString(gearStrategyConfig.getIntValue(i10, i11)));
    }

    private static void configStringToStrategyParam(GearStrategyConfig gearStrategyConfig, int i10, Map<String, String> map, String str) {
        map.put(Integer.toString(i10), gearStrategyConfig.getStringValue(i10, str));
    }

    public static int getBitrateFromVideoModel(IVideoModel iVideoModel, int i10, String str, int i11) {
        Resolution valueOf = Resolution.valueOf(i10);
        if (valueOf != Resolution.Undefine || !TextUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(32, str);
            VideoInfo videoInfo = iVideoModel.getVideoInfo(valueOf, (Map<Integer, String>) hashMap, false);
            if (videoInfo != null) {
                if (1 == i11) {
                    return videoInfo.getValueInt(44);
                }
                return videoInfo.getValueInt(3);
            }
        }
        return -1;
    }

    public static GearStrategyConfig getGlobalConfig() {
        return mGlobalConfig;
    }

    public static JSONArray getMediaInfoJson(IVideoModel iVideoModel, int i10) {
        int i11;
        long cacheFileSize;
        JSONArray jSONArray = new JSONArray();
        if (iVideoModel == null) {
            return jSONArray;
        }
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            try {
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null) {
                        JSONObject jSONObject = new JSONObject();
                        if (videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                            jSONObject.put(GearStrategyConsts.EV_MEDIA_TYPE, videoInfo.getMediatype());
                            jSONObject.put("bitrate", videoInfo.getValueInt(3));
                            Resolution resolution = videoInfo.getResolution();
                            if (resolution != null) {
                                i11 = resolution.getIndex();
                            } else {
                                i11 = -1;
                            }
                            jSONObject.put("res", i11);
                            jSONObject.put(GearStrategyConsts.EV_QUALITY, videoInfo.getValueStr(32));
                            jSONObject.put("width", videoInfo.getValueInt(1));
                            jSONObject.put("height", videoInfo.getValueInt(2));
                            if (i10 != -1) {
                                String valueStr = videoInfo.getValueStr(15);
                                if (1 == i10) {
                                    cacheFileSize = TTVideoEngine.quickGetCacheFileSize(valueStr);
                                } else {
                                    cacheFileSize = TTVideoEngine.getCacheFileSize(valueStr);
                                }
                                jSONObject.put("cache", cacheFileSize);
                            }
                        } else {
                            jSONObject.put(GearStrategyConsts.EV_MEDIA_TYPE, videoInfo.getMediatype());
                            jSONObject.put("bitrate", videoInfo.getValueInt(3));
                        }
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return jSONArray;
    }

    public static String getMediaInfoString(IVideoModel iVideoModel, int i10) {
        JSONArray mediaInfoJson = getMediaInfoJson(iVideoModel, i10);
        if (mediaInfoJson != null) {
            return mediaInfoJson.toString();
        }
        return "";
    }

    @Nullable
    public static Map<String, Object> getPreloadInfo(String str, long j10) {
        Map<String, Object> map = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        mPreloadCacheLock.lock();
        Map<Long, Map<String, Object>> map2 = mPreloadCache.get(str);
        if (map2 != null) {
            map = map2.get(Long.valueOf(j10));
        }
        mPreloadCacheLock.unlock();
        return map;
    }

    public static void getSrSupportBitrate(IVideoModel iVideoModel, SRStrategy sRStrategy, GearStrategyConfig gearStrategyConfig) {
        LinkedList linkedList = new LinkedList();
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() > 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                    int valueInt = videoInfo.getValueInt(3);
                    if (sRStrategy.videoInfoSupportSR(videoInfo, videoInfoList).booleanValue()) {
                        linkedList.add(Integer.valueOf(valueInt));
                    }
                }
            }
        }
        gearStrategyConfig.setObjectValueIfNotExist(43, linkedList);
    }

    @Nullable
    public static IVideoInfo getVideoInfo(@NonNull IVideoModel iVideoModel, long j10) {
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (j10 > 0 && videoInfoList != null) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && videoInfo.getMediatype() != VideoRef.TYPE_AUDIO && videoInfo.getResolution() != null && videoInfo.getValueInt(3) == j10) {
                    return videoInfo;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x000a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ss.ttvideoengine.model.IVideoInfo getVideoInfoByBitrate(com.ss.ttvideoengine.model.IVideoModel r7, int r8, int r9) {
        /*
            java.util.List r7 = r7.getVideoInfoList()
            if (r7 == 0) goto L49
            java.util.Iterator r7 = r7.iterator()
        La:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L49
            java.lang.Object r0 = r7.next()
            com.ss.ttvideoengine.model.VideoInfo r0 = (com.ss.ttvideoengine.model.VideoInfo) r0
            if (r0 == 0) goto La
            int r1 = r0.getMediatype()
            int r2 = com.ss.ttvideoengine.model.VideoRef.TYPE_AUDIO
            if (r1 == r2) goto La
            com.ss.ttvideoengine.Resolution r1 = r0.getResolution()
            if (r1 != 0) goto L27
            goto La
        L27:
            r1 = 1
            r2 = 3
            if (r1 != r9) goto L3e
            r1 = 44
            int r1 = r0.getValueInt(r1)
            long r3 = (long) r1
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 > 0) goto L43
            int r1 = r0.getValueInt(r2)
        L3c:
            long r3 = (long) r1
            goto L43
        L3e:
            int r1 = r0.getValueInt(r2)
            goto L3c
        L43:
            long r1 = (long) r8
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 != 0) goto La
            goto L4a
        L49:
            r0 = 0
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.selector.strategy.GearStrategy.getVideoInfoByBitrate(com.ss.ttvideoengine.model.IVideoModel, int, int):com.ss.ttvideoengine.model.IVideoInfo");
    }

    public static int intMapGet(Map<String, Integer> map, String str, int i10) {
        Integer num = map.get(str);
        if (num != null) {
            return num.intValue();
        }
        return i10;
    }

    public static Map<String, Object> parseABRResult(ABRResult aBRResult) {
        return GearStrategyABR.parseABRResult(aBRResult);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0396  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> select(com.ss.ttvideoengine.model.IVideoModel r22, int r23, com.ss.ttvideoengine.selector.strategy.GearStrategyConfig r24) {
        /*
            Method dump skipped, instructions count: 922
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.selector.strategy.GearStrategy.select(com.ss.ttvideoengine.model.IVideoModel, int, com.ss.ttvideoengine.selector.strategy.GearStrategyConfig):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00ea A[EDGE_INSN: B:63:0x00ea->B:46:0x00ea ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00a3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ss.ttvideoengine.selector.SelectedInfo selectBitrate(com.ss.ttvideoengine.model.IVideoModel r17, int r18, java.util.Map<java.lang.String, java.lang.String> r19) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.selector.strategy.GearStrategy.selectBitrate(com.ss.ttvideoengine.model.IVideoModel, int, java.util.Map):com.ss.ttvideoengine.selector.SelectedInfo");
    }

    public static void setGlobalConfig(GearStrategyConfig gearStrategyConfig) {
        if (gearStrategyConfig == null) {
            return;
        }
        mGlobalConfig = gearStrategyConfig;
        gearStrategyConfig.parse();
        int intValue = mGlobalConfig.getIntValue(1, -1);
        int intValue2 = mGlobalConfig.getIntValue(2, -1);
        if (2 == intValue && 1 == intValue2) {
            GearStrategyABR.setGlobalConfig(gearStrategyConfig);
        }
    }

    private static void setPreloadInfo(IVideoModel iVideoModel, GearStrategyConfig gearStrategyConfig, Map<String, String> map) {
        String videoRefStr = iVideoModel.getVideoRefStr(2);
        HashMap hashMap = new HashMap();
        hashMap.put("sw", Integer.valueOf(gearStrategyConfig.getIntValue(24, -1)));
        hashMap.put("sh", Integer.valueOf(gearStrategyConfig.getIntValue(25, -1)));
        hashMap.put("dw", Integer.valueOf(gearStrategyConfig.getIntValue(26, -1)));
        hashMap.put("dh", Integer.valueOf(gearStrategyConfig.getIntValue(27, -1)));
        hashMap.put("ue", Integer.valueOf(gearStrategyConfig.getIntValue(34, -1)));
        hashMap.put(GearStrategyConsts.EV_USER_DOWNGRADE, Integer.valueOf(gearStrategyConfig.getIntValue(35, -1)));
        hashMap.put("ns", Integer.valueOf(TTNetWorkListener.getInstance().getCurrentAccessType()));
        hashMap.put(GearStrategyConsts.EV_VIDEO_BITRATE_ORIGIN, Integer.valueOf(stringMapGetInt(map, GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN, -1)));
        int stringMapGetInt = stringMapGetInt(map, GEAR_STRATEGY_KEY_VIDEO_BITRATE, -1);
        hashMap.put(GearStrategyConsts.EV_VIDEO_BITRATE, Integer.valueOf(stringMapGetInt));
        hashMap.put(GearStrategyConsts.EV_DOWNGRADE_TYPE, Integer.valueOf(stringMapGetInt(map, "downgrade_type", -1)));
        JSONArray mediaInfoJson = getMediaInfoJson(iVideoModel, -1);
        if (mediaInfoJson != null) {
            hashMap.put(GearStrategyConsts.EV_MEDIA_INFO, mediaInfoJson);
        }
        setPreloadInfo(videoRefStr, stringMapGetInt, hashMap);
    }

    private static void speedInfoToStrategyParam(GearStrategyConfig gearStrategyConfig, Map<String, String> map) {
        float f10;
        float f11;
        float f12;
        float f13;
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
        float f14 = 0.0f;
        if (iSpeedPredictor != null) {
            Map<String, String> downloadSpeed = iSpeedPredictor.getDownloadSpeed(VideoRef.TYPE_VIDEO);
            if (downloadSpeed != null && downloadSpeed.get("download_speed") != null) {
                f14 = Float.parseFloat(downloadSpeed.get("download_speed"));
            }
            f11 = StrategyCenter.sNetAbrSpeedPredictor.getPredictSpeed(0);
            f12 = StrategyCenter.sNetAbrSpeedPredictor.getLastPredictConfidence();
            f13 = StrategyCenter.sNetAbrSpeedPredictor.getAverageDownloadSpeed(VideoRef.TYPE_VIDEO, 1, true);
            f10 = StrategyCenter.sNetAbrSpeedPredictor.getAverageDownloadSpeed(VideoRef.TYPE_VIDEO, gearStrategyConfig.getIntValue(9, 4), false);
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 0.0f;
            f13 = 0.0f;
        }
        map.put(Integer.toString(36), Float.toString(f14));
        map.put(Integer.toString(37), Float.toString(f11));
        map.put(Integer.toString(38), Float.toString(f12));
        map.put(Integer.toString(39), Float.toString(f13));
        map.put(Integer.toString(40), Float.toString(f10));
    }

    private static void srInfoToStrategyParam(GearStrategyConfig gearStrategyConfig, Map<String, String> map) {
        configIntToStrategyParam(gearStrategyConfig, 13, map, 0);
        configIntToStrategyParam(gearStrategyConfig, 14, map, 0);
        Object objectValue = gearStrategyConfig.getObjectValue(15, null);
        if (objectValue != null) {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : ((Map) objectValue).entrySet()) {
                JSONArray jSONArray = new JSONArray();
                Object value = entry.getValue();
                if (value != null && (value instanceof List)) {
                    for (Integer num : (List) value) {
                        jSONArray.put(num.toString());
                    }
                }
                try {
                    jSONObject.put(((Integer) entry.getKey()).toString(), jSONArray);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            map.put(Integer.toString(15), jSONObject.toString());
        }
        Object objectValue2 = gearStrategyConfig.getObjectValue(43, null);
        if (objectValue2 != null) {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray2 = new JSONArray();
            for (Integer num2 : (List) objectValue2) {
                jSONArray2.put(num2);
            }
            try {
                jSONObject2.put("bitrates", jSONArray2);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            map.put(Integer.toString(43), jSONObject2.toString());
        }
    }

    public static float stringMapGetFloat(Map<String, String> map, String str, float f10) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                return Float.parseFloat(str2);
            } catch (NumberFormatException unused) {
                return f10;
            }
        }
        return f10;
    }

    public static int stringMapGetInt(Map<String, String> map, String str, int i10) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                return Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                return i10;
            }
        }
        return i10;
    }

    public static long stringMapGetLong(Map<String, String> map, String str, long j10) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                return Long.parseLong(str2);
            } catch (NumberFormatException unused) {
                return j10;
            }
        }
        return j10;
    }

    public static String stringMapGetString(Map<String, String> map, String str, String str2) {
        String str3 = map.get(str);
        if (str3 != null) {
            return str3;
        }
        return str2;
    }

    public static void setPreloadInfo(String str, long j10, Map<String, Object> map) {
        if (TextUtils.isEmpty(str) || map == null) {
            return;
        }
        mPreloadCacheLock.lock();
        Map<Long, Map<String, Object>> map2 = mPreloadCache.get(str);
        if (map2 == null) {
            map2 = new HashMap<>();
            mPreloadCache.put(str, map2);
        }
        map2.put(Long.valueOf(j10), map);
        mPreloadCacheLock.unlock();
    }
}
