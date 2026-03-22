package com.ss.ttvideoengine.selector.strategy;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.abrmodule.ABRAudioStream;
import com.bytedance.vcloud.abrmodule.ABRConfig;
import com.bytedance.vcloud.abrmodule.ABRResult;
import com.bytedance.vcloud.abrmodule.ABRResultElement;
import com.bytedance.vcloud.abrmodule.ABRVideoStream;
import com.bytedance.vcloud.abrmodule.DefaultABRModule;
import com.bytedance.vcloud.abrmodule.IABRModule;
import com.bytedance.vcloud.abrmodule.IAudioStream;
import com.bytedance.vcloud.abrmodule.IVideoStream;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTNetWorkListener;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.abr.ABRPool;
import com.ss.ttvideoengine.info.HARInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.portrait.PortraitEngine;
import com.ss.ttvideoengine.selector.gracie.GracieSelector;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class GearStrategyABR {
    private static final String TAG = "TTVideoEngine.GearStrategy.ABR";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class GearInput {
        public int abrOnceType;
        public int abrWithSR;
        public final DisplayInfo displayInfo;
        public final ResolutionInfo downgradeResolution;
        public HAR har;
        public final ResolutionInfo mobile4GMaxResolution;
        public NetInfo netInfo;
        public int quickGetFileCache;
        public final SRInput srInput;
        public int startupSpeedType;
        public String subTag;
        public String tag;
        public final ResolutionInfo userExpectedResolution;
        public final ResolutionInfo wifiDefaultResolution;
        public final ResolutionInfo wifiMaxResolution;

        /* loaded from: classes6.dex */
        public static class DisplayInfo {
            public int displayHeight;
            public int displayWidth;
            public int screenHeight;
            public int screenWidth;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public static class HAR {
            public int harScore;
            public int harStatus;

            private HAR() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public static class NetInfo {
            public float avgDownloadSpeed;
            public float avgStartupEndNetworkSpeed;
            public float downloadSpeed;
            public float networkSpeed;
            public float networkSpeedConfidence;
            public int networkState;

            private NetInfo() {
                this.downloadSpeed = 0.0f;
                this.networkSpeed = 0.0f;
                this.networkSpeedConfidence = 0.0f;
                this.avgDownloadSpeed = 0.0f;
                this.avgStartupEndNetworkSpeed = 0.0f;
            }
        }

        /* loaded from: classes6.dex */
        public static class ResolutionInfo {
            public int index;
            public String quality;
        }

        /* loaded from: classes6.dex */
        public static class SRInput {
            public Map<Integer, List<Integer>> srBenchmark;
            public SRStrategyConfig srConfig;
            public int srEnabled;
            public int srSatisfied;
            public List<Integer> srSupportBitrateList;
        }

        private GearInput() {
            this.srInput = new SRInput();
            this.displayInfo = new DisplayInfo();
            this.mobile4GMaxResolution = new ResolutionInfo();
            this.wifiDefaultResolution = new ResolutionInfo();
            this.userExpectedResolution = new ResolutionInfo();
            this.downgradeResolution = new ResolutionInfo();
            this.wifiMaxResolution = new ResolutionInfo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class GearOutput {
        public long audioBitrate;
        public int downgradeType;
        public GearLogInfo logInfo;
        public long videoBitrate;
        public long videoBitrateOrigin;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes6.dex */
        public static class GearLogInfo {
            public String abrSrInfo;
            public String abrStartupInfo;
            public String abrVersion;
            public long bitrateBeforeFitScreen;
            public long maxCacheBitrate;
            public float startupAverageSpeed;
            public float startupPredictSpeed;
            public float startupSpeed;
            public int userEnterFullScreen;
            public float userQualitySensitivity;

            private GearLogInfo() {
            }

            public void recordABRModuleLog(IABRModule iABRModule) {
                this.maxCacheBitrate = iABRModule.getLongOption(15, -1L);
                this.bitrateBeforeFitScreen = iABRModule.getLongOption(44, -1L);
                this.startupSpeed = iABRModule.getFloatOption(16, -1.0f);
                this.startupPredictSpeed = iABRModule.getFloatOption(17, -1.0f);
                this.startupAverageSpeed = iABRModule.getFloatOption(18, -1.0f);
                this.abrVersion = iABRModule.getVersion();
                this.abrSrInfo = iABRModule.getStringOption(74, "");
                this.abrStartupInfo = iABRModule.getStringOption(77, "");
            }

            public void recordABRSettingsLog(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.userQualitySensitivity = (float) jSONObject.optDouble(PortraitEngine.LABEL_USER_QUALITY_SENSITIVITY);
                this.userEnterFullScreen = jSONObject.optInt("user_enter_full_screen");
            }
        }

        private GearOutput() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void init(Map<String, Object> map) {
            this.videoBitrate = TTHelper.safeGetLong(map, GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE, 0L);
            this.audioBitrate = TTHelper.safeGetLong(map, GearStrategy.GEAR_STRATEGY_KEY_AUDIO_BITRATE, 0L);
            this.videoBitrateOrigin = TTHelper.safeGetLong(map, GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN, 0L);
            this.downgradeType = TTHelper.safeGetInt(map, "downgrade_type", 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized GearLogInfo logInfo() {
            try {
                if (this.logInfo == null) {
                    this.logInfo = new GearLogInfo();
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return this.logInfo;
        }
    }

    GearStrategyABR() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> parseABRResult(ABRResult aBRResult) {
        long j10;
        long j11;
        long j12;
        HashMap hashMap = new HashMap();
        long j13 = 0;
        if (aBRResult != null) {
            long j14 = 0;
            j11 = 0;
            j12 = 0;
            for (int i10 = 0; i10 < aBRResult.size(); i10++) {
                ABRResultElement aBRResultElement = aBRResult.get(i10);
                long bitrate = aBRResultElement.getBitrate();
                int onceSelectType = aBRResultElement.getOnceSelectType();
                int mediaType = aBRResultElement.getMediaType();
                if (VideoRef.TYPE_VIDEO == mediaType) {
                    if (onceSelectType == 0) {
                        j14 = bitrate;
                    } else if (1 == onceSelectType) {
                        j11 = bitrate;
                    } else if (2 == onceSelectType) {
                        j12 = bitrate;
                    }
                } else if (VideoRef.TYPE_AUDIO == mediaType) {
                    j13 = bitrate;
                }
            }
            j10 = j13;
            j13 = j14;
        } else {
            j10 = 0;
            j11 = 0;
            j12 = 0;
        }
        hashMap.put(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE, Long.valueOf(j13));
        hashMap.put(GearStrategy.GEAR_STRATEGY_KEY_AUDIO_BITRATE, Long.valueOf(j10));
        if (j11 > j13) {
            hashMap.put(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN, Long.valueOf(j11));
            hashMap.put("downgrade_type", 1);
        } else if (j12 > j13) {
            hashMap.put(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN, Long.valueOf(j12));
            hashMap.put("downgrade_type", 2);
        } else {
            hashMap.put(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN, Long.valueOf(j13));
            hashMap.put("downgrade_type", 0);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void select(@NonNull IVideoModel iVideoModel, int i10, @NonNull GearStrategyConfig gearStrategyConfig, @NonNull Map<String, String> map) {
        GearOutput selectPreload;
        String videoRefStr = iVideoModel.getVideoRefStr(2);
        GearInput transGearInput = transGearInput(gearStrategyConfig);
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, String.format(Locale.getDefault(), "select input %s %d %s", videoRefStr, Integer.valueOf(i10), Utils.toString(transGearInput)));
        }
        if (i10 == 1) {
            selectPreload = selectStartup(iVideoModel, transGearInput);
        } else {
            selectPreload = selectPreload(iVideoModel, transGearInput);
        }
        transGearOutput(map, selectPreload);
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, String.format(Locale.getDefault(), "select output %s %d %s", videoRefStr, Integer.valueOf(i10), Utils.toString(selectPreload)));
        }
    }

    @NonNull
    private static GearOutput selectPreload(@NonNull IVideoModel iVideoModel, @NonNull GearInput gearInput) {
        SRStrategyConfig sRStrategyConfig = gearInput.srInput.srConfig;
        GracieSelector gracieSelector = new GracieSelector(0);
        GracieSelector.Params params = new GracieSelector.Params();
        GearInput.DisplayInfo displayInfo = gearInput.displayInfo;
        GracieSelector.Params displaySize = params.displaySize(displayInfo.displayWidth, displayInfo.displayHeight);
        GearInput.DisplayInfo displayInfo2 = gearInput.displayInfo;
        GracieSelector.Params screenSize = displaySize.screenSize(displayInfo2.screenWidth, displayInfo2.screenHeight);
        GearInput.ResolutionInfo resolutionInfo = gearInput.wifiDefaultResolution;
        GracieSelector.Params wifiDefault = screenSize.wifiDefault(resolutionInfo.index, resolutionInfo.quality);
        GearInput.ResolutionInfo resolutionInfo2 = gearInput.wifiMaxResolution;
        GracieSelector.Params abrMax = wifiDefault.abrMax(resolutionInfo2.index, resolutionInfo2.quality);
        GearInput.ResolutionInfo resolutionInfo3 = gearInput.mobile4GMaxResolution;
        GracieSelector.Params srStrategyConfig = abrMax.cellularMax(resolutionInfo3.index, resolutionInfo3.quality).srStrategyConfig(sRStrategyConfig);
        GearInput.ResolutionInfo resolutionInfo4 = gearInput.downgradeResolution;
        GracieSelector.Params downgrade = srStrategyConfig.downgrade(resolutionInfo4.index, resolutionInfo4.quality);
        GearInput.ResolutionInfo resolutionInfo5 = gearInput.userExpectedResolution;
        Map<String, Object> gearResult = gracieSelector.select(iVideoModel, downgrade.userExpected(resolutionInfo5.index, resolutionInfo5.quality).tags(gearInput.tag, gearInput.subTag).build()).getGearResult();
        GearOutput gearOutput = new GearOutput();
        gearOutput.init(gearResult);
        return gearOutput;
    }

    @NonNull
    private static GearOutput selectStartup(@NonNull IVideoModel iVideoModel, @NonNull GearInput gearInput) {
        boolean z10;
        GearOutput gearOutput = new GearOutput();
        IABRModule fromPreloaded = ABRPool.getInstance().getFromPreloaded(iVideoModel.getVideoRefStr(2));
        if (fromPreloaded == null) {
            fromPreloaded = ABRPool.getInstance().getFromCache();
            if (fromPreloaded == null) {
                fromPreloaded = new DefaultABRModule();
                z10 = false;
            } else {
                z10 = true;
            }
            setMediaInfo2Abr(gearInput, fromPreloaded, iVideoModel);
        } else {
            z10 = true;
        }
        fromPreloaded.setLongOptionForKey(22, Utils.calUserExpectedBitrate(iVideoModel, gearInput));
        fromPreloaded.setLongOptionForKey(33, Utils.calDowngradeBitrate(iVideoModel, gearInput));
        setMediaBuffer2Abr(gearInput, fromPreloaded, iVideoModel);
        setDisplayInfo(fromPreloaded, gearInput);
        fromPreloaded.setIntOptionForKey(14, 1);
        GearInput.NetInfo netInfo = gearInput.netInfo;
        if (netInfo != null) {
            fromPreloaded.setFloatOptionForKey(25, netInfo.downloadSpeed);
            fromPreloaded.setFloatOptionForKey(23, netInfo.networkSpeed);
            fromPreloaded.setFloatOptionForKey(24, netInfo.networkSpeedConfidence);
            fromPreloaded.setFloatOptionForKey(27, netInfo.avgDownloadSpeed);
            fromPreloaded.setFloatOptionForKey(28, netInfo.avgStartupEndNetworkSpeed);
            fromPreloaded.setIntOptionForKey(21, netInfo.networkState);
        }
        GearInput.HAR har = gearInput.har;
        if (har != null) {
            fromPreloaded.setIntOptionForKey(70, har.harStatus);
            fromPreloaded.setIntOptionForKey(71, har.harScore);
        }
        JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject("abr_params");
        if (vodJsonObject != null) {
            int optInt = vodJsonObject.optInt("user_enter_full_screen");
            fromPreloaded.setFloatOptionForKey(72, (float) vodJsonObject.optDouble(PortraitEngine.LABEL_USER_QUALITY_SENSITIVITY));
            fromPreloaded.setIntOptionForKey(73, optInt);
            gearOutput.logInfo().recordABRSettingsLog(vodJsonObject);
        }
        GearInput.SRInput sRInput = gearInput.srInput;
        if (gearInput.abrWithSR == 1) {
            fromPreloaded.setIntOptionForKey(39, sRInput.srEnabled);
            fromPreloaded.setIntOptionForKey(40, sRInput.srSatisfied);
            fromPreloaded.setSRBenchmarkMap(sRInput.srBenchmark);
        }
        fromPreloaded.setStringOptionForKey(75, gearInput.tag);
        fromPreloaded.setStringOptionForKey(76, gearInput.subTag);
        gearOutput.init(GearStrategy.parseABRResult(fromPreloaded.onceSelect(gearInput.abrOnceType, 1)));
        gearOutput.logInfo().recordABRModuleLog(fromPreloaded);
        if (z10) {
            ABRPool.getInstance().giveBack(fromPreloaded);
        } else {
            fromPreloaded.release();
        }
        return gearOutput;
    }

    private static void setDisplayInfo(IABRModule iABRModule, GearInput gearInput) {
        iABRModule.setIntOptionForKey(34, gearInput.displayInfo.screenWidth);
        iABRModule.setIntOptionForKey(35, gearInput.displayInfo.screenHeight);
        iABRModule.setIntOptionForKey(6, gearInput.displayInfo.displayWidth);
        iABRModule.setIntOptionForKey(7, gearInput.displayInfo.displayHeight);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setGlobalConfig(@NonNull GearStrategyConfig gearStrategyConfig) {
        ABRConfig.setSwitchModel(gearStrategyConfig.getIntValue(44));
        ABRConfig.setFixedLevel(gearStrategyConfig.getIntValue(45));
        ABRConfig.setStartupModel(gearStrategyConfig.getIntValue(46));
        ABRConfig.setStartupBandwidthParameter(gearStrategyConfig.getFloatValue(47));
        ABRConfig.setStartupModelFirstParam(gearStrategyConfig.getDoubleValue(48));
        ABRConfig.setStartupModelSecondParam(gearStrategyConfig.getDoubleValue(49));
        ABRConfig.setStartupModelThirdParam(gearStrategyConfig.getDoubleValue(50));
        ABRConfig.setStartupModelFourthParam(gearStrategyConfig.getDoubleValue(51));
        ABRConfig.setStartupUseCache(gearStrategyConfig.getIntValue(52));
        ABRConfig.setAbrFlowJson(gearStrategyConfig.getStringValue(53));
        ABRConfig.setAbrPreloadJson(gearStrategyConfig.getStringValue(54));
        ABRConfig.setAbrStartupJson(gearStrategyConfig.getStringValue(55));
        boolean z10 = true;
        if (gearStrategyConfig.getIntValue(56) != 1) {
            z10 = false;
        }
        ABRPool.setEnabled(z10);
    }

    private static void setMediaBuffer2Abr(GearInput gearInput, IABRModule iABRModule, IVideoModel iVideoModel) {
        List<VideoInfo> videoInfoList;
        long cacheFileSize;
        if (iVideoModel != null && (videoInfoList = iVideoModel.getVideoInfoList()) != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null) {
                    String valueStr = videoInfo.getValueStr(15);
                    if (gearInput.quickGetFileCache == 1) {
                        cacheFileSize = TTVideoEngine.quickGetCacheFileSize(valueStr);
                    } else {
                        cacheFileSize = TTVideoEngine.getCacheFileSize(valueStr);
                    }
                    iABRModule.addBufferInfo(videoInfo.getMediatype(), valueStr, videoInfo.getValueInt(3), cacheFileSize, videoInfo.getValueInt(38));
                }
            }
        }
    }

    private static void setMediaInfo2Abr(GearInput gearInput, IABRModule iABRModule, IVideoModel iVideoModel) {
        HashMap hashMap;
        VideoInfo videoInfo;
        HashMap hashMap2;
        VideoInfo videoInfo2;
        VideoInfo videoInfo3;
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            List<IVideoStream> arrayList = new ArrayList<>();
            List<IAudioStream> arrayList2 = new ArrayList<>();
            for (VideoInfo videoInfo4 : videoInfoList) {
                if (videoInfo4 != null) {
                    if (videoInfo4.getMediatype() == VideoRef.TYPE_VIDEO) {
                        int valueInt = videoInfo4.getValueInt(3);
                        ABRVideoStream aBRVideoStream = new ABRVideoStream();
                        String valueStr = videoInfo4.getValueStr(15);
                        aBRVideoStream.setStreamId(valueStr);
                        aBRVideoStream.setBandWidth(valueInt);
                        aBRVideoStream.setCodec(videoInfo4.getValueStr(8));
                        aBRVideoStream.setRealBitrate(videoInfo4.getValueInt(44));
                        int valueInt2 = videoInfo4.getValueInt(1);
                        int valueInt3 = videoInfo4.getValueInt(2);
                        aBRVideoStream.setWidth(valueInt2);
                        aBRVideoStream.setHeight(valueInt3);
                        aBRVideoStream.setFrameRate(-1);
                        aBRVideoStream.setSegmentDuration(5000);
                        if (!TextUtils.isEmpty(valueStr)) {
                            arrayList.add(aBRVideoStream);
                        }
                        aBRVideoStream.setSupportSR(Utils.checkBitrateIsInSupportedList(gearInput, valueInt));
                        aBRVideoStream.setResolution(SRStrategy.getResolutionIndex(videoInfo4));
                    } else {
                        ABRAudioStream aBRAudioStream = new ABRAudioStream();
                        String valueStr2 = videoInfo4.getValueStr(15);
                        aBRAudioStream.setStreamId(valueStr2);
                        aBRAudioStream.setBandWidth(videoInfo4.getValueInt(3));
                        aBRAudioStream.setCodec(videoInfo4.getValueStr(8));
                        aBRAudioStream.setRealBitrate(videoInfo4.getValueInt(44));
                        aBRAudioStream.setSampleRate(-1);
                        aBRAudioStream.setSegmentDuration(5000);
                        if (!TextUtils.isEmpty(valueStr2)) {
                            arrayList2.add(aBRAudioStream);
                        }
                    }
                }
            }
            iABRModule.setMediaInfo(arrayList, arrayList2);
            Resolution valueOf = Resolution.valueOf(gearInput.mobile4GMaxResolution.index);
            HashMap hashMap3 = null;
            if (valueOf != null || !TextUtils.isEmpty(gearInput.mobile4GMaxResolution.quality)) {
                if (!TextUtils.isEmpty(gearInput.mobile4GMaxResolution.quality)) {
                    hashMap = new HashMap();
                    hashMap.put(32, gearInput.mobile4GMaxResolution.quality);
                } else {
                    hashMap = null;
                }
                if (iVideoModel.getVideoInfo(valueOf, (Map<Integer, String>) hashMap, true) != null) {
                    iABRModule.setLongOptionForKey(2, videoInfo.getValueInt(3));
                }
            }
            Resolution valueOf2 = Resolution.valueOf(gearInput.wifiDefaultResolution.index);
            if (valueOf2 != null || !TextUtils.isEmpty(gearInput.wifiDefaultResolution.quality)) {
                if (!TextUtils.isEmpty(gearInput.wifiDefaultResolution.quality)) {
                    hashMap2 = new HashMap();
                    hashMap2.put(32, gearInput.wifiDefaultResolution.quality);
                } else {
                    hashMap2 = null;
                }
                if (iVideoModel.getVideoInfo(valueOf2, (Map<Integer, String>) hashMap2, true) != null) {
                    iABRModule.setLongOptionForKey(12, videoInfo2.getValueInt(3));
                }
            }
            Resolution valueOf3 = Resolution.valueOf(gearInput.wifiMaxResolution.index);
            if (valueOf3 != null || !TextUtils.isEmpty(gearInput.wifiMaxResolution.quality)) {
                if (!TextUtils.isEmpty(gearInput.wifiMaxResolution.quality)) {
                    hashMap3 = new HashMap();
                    hashMap3.put(32, gearInput.wifiMaxResolution.quality);
                }
                if (iVideoModel.getVideoInfo(valueOf3, (Map<Integer, String>) hashMap3, true) != null) {
                    iABRModule.setLongOptionForKey(13, videoInfo3.getValueInt(3));
                }
            }
            iABRModule.setIntOptionForKey(66, iVideoModel.getVideoRefInt(3));
            String videoRefStr = iVideoModel.getVideoRefStr(VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS);
            if (!TextUtils.isEmpty(videoRefStr)) {
                iABRModule.setStringOptionForKey(69, videoRefStr);
            }
        }
    }

    @NonNull
    private static GearInput transGearInput(GearStrategyConfig gearStrategyConfig) {
        GearInput gearInput = new GearInput();
        gearInput.abrOnceType = gearStrategyConfig.getIntValue(16);
        gearInput.quickGetFileCache = gearStrategyConfig.getIntValue(23);
        gearInput.abrWithSR = gearStrategyConfig.getIntValue(12);
        gearInput.srInput.srEnabled = gearStrategyConfig.getIntValue(13);
        gearInput.srInput.srSatisfied = gearStrategyConfig.getIntValue(14);
        gearInput.srInput.srBenchmark = (Map) gearStrategyConfig.getObjectValue(15);
        gearInput.srInput.srSupportBitrateList = (List) gearStrategyConfig.getObjectValue(43);
        gearInput.srInput.srConfig = (SRStrategyConfig) gearStrategyConfig.getObjectValue(30);
        gearInput.displayInfo.displayWidth = gearStrategyConfig.getIntValue(26);
        gearInput.displayInfo.displayHeight = gearStrategyConfig.getIntValue(27);
        gearInput.displayInfo.screenWidth = gearStrategyConfig.getIntValue(24);
        gearInput.displayInfo.screenHeight = gearStrategyConfig.getIntValue(25);
        gearInput.startupSpeedType = gearStrategyConfig.getIntValue(9);
        gearInput.mobile4GMaxResolution.index = gearStrategyConfig.getIntValue(19);
        gearInput.mobile4GMaxResolution.quality = gearStrategyConfig.getStringValue(20);
        gearInput.wifiDefaultResolution.index = gearStrategyConfig.getIntValue(17);
        gearInput.wifiDefaultResolution.quality = gearStrategyConfig.getStringValue(18);
        gearInput.userExpectedResolution.index = gearStrategyConfig.getIntValue(5);
        gearInput.userExpectedResolution.quality = gearStrategyConfig.getStringValue(6);
        gearInput.downgradeResolution.index = gearStrategyConfig.getIntValue(7);
        gearInput.downgradeResolution.quality = gearStrategyConfig.getStringValue(8);
        gearInput.wifiMaxResolution.index = gearStrategyConfig.getIntValue(21);
        gearInput.wifiMaxResolution.quality = gearStrategyConfig.getStringValue(22);
        gearInput.netInfo = Utils.gatheringSpeedInfo(gearInput.startupSpeedType);
        gearInput.har = Utils.gatheringHARInfo();
        gearInput.tag = gearStrategyConfig.getStringValue(28);
        gearInput.subTag = gearStrategyConfig.getStringValue(29);
        ABRConfig.setNarrowScreenUseWidth(gearStrategyConfig.getIntValue(31));
        return gearInput;
    }

    private static void transGearOutput(Map<String, String> map, GearOutput gearOutput) {
        if (map == null) {
            return;
        }
        Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE, Long.valueOf(gearOutput.videoBitrate));
        Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_AUDIO_BITRATE, Long.valueOf(gearOutput.audioBitrate));
        Utils.safePut(map, "downgrade_type", Integer.valueOf(gearOutput.downgradeType));
        Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN, Long.valueOf(gearOutput.videoBitrateOrigin));
        GearOutput.GearLogInfo gearLogInfo = gearOutput.logInfo;
        if (gearLogInfo != null) {
            Utils.safePut(map, "user_quality_sen", Float.valueOf(gearLogInfo.userQualitySensitivity));
            Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_USER_ENTER_FULLSCREEN, Integer.valueOf(gearLogInfo.userEnterFullScreen));
            Utils.safePut(map, "max_cache_bitrate", Long.valueOf(gearLogInfo.maxCacheBitrate));
            Utils.safePut(map, "bitrate_before_fit_screen", Long.valueOf(gearLogInfo.bitrateBeforeFitScreen));
            Utils.safePut(map, "startup_speed", Float.valueOf(gearLogInfo.startupSpeed));
            Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_ABR_STARTUP_PREDICT_SPEED, Float.valueOf(gearLogInfo.startupPredictSpeed));
            Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_ABR_STARTUP_AVERAGE_SPEED, Float.valueOf(gearLogInfo.startupAverageSpeed));
            Utils.safePut(map, GearStrategy.GEAR_STRATEGY_KEY_ABR_VERSION, gearLogInfo.abrVersion);
            Utils.safePut(map, "sr_info", gearLogInfo.abrSrInfo);
            Utils.safePut(map, "startup_info", gearLogInfo.abrStartupInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Utils {
        private Utils() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static long calDowngradeBitrate(IVideoModel iVideoModel, GearInput gearInput) {
            if (gearInput.downgradeResolution.index > Resolution.Undefine.getIndex() || !TextUtils.isEmpty(gearInput.downgradeResolution.quality)) {
                GearInput.ResolutionInfo resolutionInfo = gearInput.downgradeResolution;
                VideoInfo findVideoInfo = findVideoInfo(iVideoModel, resolutionInfo.index, resolutionInfo.quality, false);
                if (findVideoInfo != null) {
                    return findVideoInfo.getValueInt(3);
                }
            }
            return -1L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static long calUserExpectedBitrate(IVideoModel iVideoModel, GearInput gearInput) {
            if (gearInput.userExpectedResolution.index != Resolution.Auto.getIndex() && (gearInput.userExpectedResolution.index > Resolution.Undefine.getIndex() || !TextUtils.isEmpty(gearInput.userExpectedResolution.quality))) {
                GearInput.ResolutionInfo resolutionInfo = gearInput.userExpectedResolution;
                VideoInfo findVideoInfo = findVideoInfo(iVideoModel, resolutionInfo.index, resolutionInfo.quality, true);
                if (findVideoInfo != null) {
                    return findVideoInfo.getValueInt(3);
                }
            }
            return -1L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int checkBitrateIsInSupportedList(GearInput gearInput, int i10) {
            List<Integer> list = gearInput.srInput.srSupportBitrateList;
            if (list != null && list.contains(Integer.valueOf(i10))) {
                return 1;
            }
            return 0;
        }

        @Nullable
        private static VideoInfo findVideoInfo(VideoModel videoModel, int i10, long j10, boolean z10) {
            for (VideoInfo videoInfo : videoModel.getVideoInfoList()) {
                int mediatype = videoInfo.getMediatype();
                long valueLong = videoInfo.getValueLong(3);
                long valueLong2 = videoInfo.getValueLong(44);
                if (i10 == mediatype) {
                    if (z10) {
                        if (j10 == valueLong2) {
                            return videoInfo;
                        }
                    } else if (j10 == valueLong) {
                        return videoInfo;
                    }
                }
            }
            return null;
        }

        public static GearInput.HAR gatheringHARInfo() {
            HARInfo hARInfo = TTVideoEngine.getHARInfo();
            if (hARInfo == null) {
                return null;
            }
            GearInput.HAR har = new GearInput.HAR();
            har.harScore = hARInfo.getHARScore();
            har.harStatus = hARInfo.getHARStatus();
            return har;
        }

        @NonNull
        public static GearInput.NetInfo gatheringSpeedInfo(int i10) {
            GearInput.NetInfo netInfo = new GearInput.NetInfo();
            netInfo.networkState = TTNetWorkListener.getInstance().getCurrentAccessType();
            ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
            if (iSpeedPredictor != null) {
                Map<String, String> downloadSpeed = iSpeedPredictor.getDownloadSpeed(VideoRef.TYPE_VIDEO);
                if (downloadSpeed != null && downloadSpeed.get("download_speed") != null) {
                    netInfo.downloadSpeed = Float.parseFloat(downloadSpeed.get("download_speed"));
                }
                netInfo.networkSpeed = iSpeedPredictor.getPredictSpeed(0);
                netInfo.networkSpeedConfidence = iSpeedPredictor.getLastPredictConfidence();
                netInfo.avgDownloadSpeed = iSpeedPredictor.getAverageDownloadSpeed(VideoRef.TYPE_VIDEO, 1, true);
                netInfo.avgStartupEndNetworkSpeed = iSpeedPredictor.getAverageDownloadSpeed(VideoRef.TYPE_VIDEO, i10, false);
            }
            return netInfo;
        }

        public static void safePut(Map<String, String> map, String str, Object obj) {
            map.put(str, String.valueOf(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String toString(Object obj) {
            return com.ss.ttvideoengine.utils.Utils.toString(obj);
        }

        @Nullable
        private static VideoInfo findVideoInfo(IVideoModel iVideoModel, int i10, String str, boolean z10) {
            HashMap hashMap = null;
            Resolution valueOf = i10 >= 0 ? Resolution.valueOf(i10) : null;
            if (!TextUtils.isEmpty(str)) {
                hashMap = new HashMap();
                hashMap.put(32, str);
            }
            return iVideoModel.getVideoInfo(valueOf, hashMap, z10);
        }
    }
}
