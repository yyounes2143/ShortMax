package com.ss.ttvideoengine.log;

import com.adjust.sdk.Constants;
import com.bytedance.vcloud.strategy.StrategyCenter;
import com.ss.ttvideoengine.info.networkRTTLevelListener;
import com.ss.ttvideoengine.portrait.IPortrait;
import com.ss.ttvideoengine.portrait.NetworkPortraitData;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class PortraitNetworkScore implements IPortrait {
    public static final int PORTRAIT_OPTION_NET_LEVEL_MAX_COUNT = 2;
    public static final int PORTRAIT_OPTION_NET_MIN_DURATION = 4;
    public static final int PORTRAIT_OPTION_NET_TIMER_TASK_INTERVAL = 3;
    public static final int PORTRAIT_OPTION_VAR_STRING = 4;
    private static final String TAG = "PortraitNetworkScore";
    private static PortraitNetworkScore mInstance = null;
    private static double mLastTargetBitrate = -1.0d;
    private NetworkQualityAlgorithm mQualityAlg = null;
    private final NetworkPortraitData mPortraitData = new NetworkPortraitData();

    /* loaded from: classes6.dex */
    public static class BitrateCalculationTask extends TimerTask {
        private NetworkQualityAlgorithm mAlgorithm;
        private NetworkPortraitData mData;

        public BitrateCalculationTask(NetworkPortraitData networkPortraitData, NetworkQualityAlgorithm networkQualityAlgorithm) {
            this.mData = networkPortraitData;
            this.mAlgorithm = networkQualityAlgorithm;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            List<Integer> rttList = this.mData.getRttList();
            List<Float> mdlSeepList = this.mData.getMdlSeepList();
            NetworkQualityAlgorithm networkQualityAlgorithm = this.mAlgorithm;
            if (networkQualityAlgorithm != null && rttList != null && mdlSeepList != null) {
                StrategyHelper.helper().getCenter().businessEvent(StrategyCenter.ENGINE_NET_SCORE, String.valueOf(networkQualityAlgorithm.calculateTargetBitrate(rttList, mdlSeepList)));
            }
        }
    }

    /* loaded from: classes6.dex */
    public interface NetworkQualityAlgorithm {
        double calculateTargetBitrate(List<Integer> list, List<Float> list2);

        int getLastNetworkScore();

        int getNetworkScore();

        void init();

        void setStringOption(int i10, String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class NetworkQualityAlgorithmV1 implements NetworkQualityAlgorithm {
        private Map<String, Double> mRttCodeMap = null;
        private Map<String, Double> mSigCodeMap = null;
        private Map<String, Integer> mLevelCodeMap = null;
        private int mLastNetworkScore = -1;

        public NetworkQualityAlgorithmV1() {
            init();
        }

        private Map _jsonStringToMap(String str, boolean z10) throws Exception {
            HashMap hashMap;
            try {
                if (z10) {
                    hashMap = new HashMap();
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        hashMap.put(next, Integer.valueOf(jSONObject.getInt(next)));
                    }
                } else {
                    hashMap = new HashMap();
                    JSONObject jSONObject2 = new JSONObject(str);
                    Iterator<String> keys2 = jSONObject2.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        hashMap.put(next2, Double.valueOf(jSONObject2.getDouble(next2)));
                    }
                }
                return hashMap;
            } catch (Exception e10) {
                TTVideoEngineLog.e(PortraitNetworkScore.TAG, e10.toString());
                throw e10;
            }
        }

        private void setDefaultLevelMap() {
            HashMap hashMap = new HashMap();
            this.mLevelCodeMap = hashMap;
            hashMap.put("1_1", 0);
            this.mLevelCodeMap.put("1_2", 1);
            this.mLevelCodeMap.put("1_3", 2);
            this.mLevelCodeMap.put("2_1", 3);
            this.mLevelCodeMap.put("2_2", 4);
            this.mLevelCodeMap.put("1_4", 5);
            this.mLevelCodeMap.put("2_3", 6);
            this.mLevelCodeMap.put("3_1", 7);
            this.mLevelCodeMap.put("3_2", 8);
            this.mLevelCodeMap.put("3_3", 9);
            this.mLevelCodeMap.put("2_4", 10);
            this.mLevelCodeMap.put("3_4", 11);
            this.mLevelCodeMap.put("4_1", 12);
            this.mLevelCodeMap.put("4_2", 13);
            this.mLevelCodeMap.put("4_3", 14);
            this.mLevelCodeMap.put("4_4", 15);
        }

        private void setDefaultRttMap() {
            HashMap hashMap = new HashMap();
            this.mRttCodeMap = hashMap;
            hashMap.put("-1", Double.valueOf(1.8d));
            this.mRttCodeMap.put("2", Double.valueOf(93.0d));
            this.mRttCodeMap.put("3", Double.valueOf(70.0d));
            this.mRttCodeMap.put("4", Double.valueOf(26.0d));
            this.mRttCodeMap.put("5", Double.valueOf(12.0d));
            this.mRttCodeMap.put(SubsSku.SCENE_AD_2_PAY, Double.valueOf(7.0d));
            this.mRttCodeMap.put("7", Double.valueOf(2.0d));
            this.mRttCodeMap.put("8", Double.valueOf(1.0d));
        }

        private void setDefaultSigMap() {
            HashMap hashMap = new HashMap();
            this.mSigCodeMap = hashMap;
            hashMap.put("excellent", Double.valueOf(1.0d));
            this.mSigCodeMap.put("good", Double.valueOf(2.4d));
            this.mSigCodeMap.put("unknown", Double.valueOf(5.4d));
            this.mSigCodeMap.put(Constants.MEDIUM, Double.valueOf(7.6d));
            this.mSigCodeMap.put("weak", Double.valueOf(20.6d));
            this.mSigCodeMap.put("unavailable", Double.valueOf(36.0d));
        }

        public void calculateNetworkScore() {
            int i10;
            double d10;
            double d11;
            List<Integer> rttList = PortraitNetworkScore.this.mPortraitData.getRttList();
            List<String> signalStrengthList = PortraitNetworkScore.this.mPortraitData.getSignalStrengthList();
            if (this.mRttCodeMap != null && this.mSigCodeMap != null && this.mLevelCodeMap != null && rttList != null && signalStrengthList != null && !rttList.isEmpty() && !signalStrengthList.isEmpty()) {
                int size = rttList.size();
                double d12 = 0.0d;
                for (int i11 = 0; i11 < size; i11++) {
                    try {
                        String valueOf = String.valueOf(rttList.get(i11).intValue());
                        if (this.mRttCodeMap.containsKey(valueOf)) {
                            d11 = this.mRttCodeMap.get(valueOf).doubleValue();
                        } else {
                            d11 = 0.0d;
                        }
                        d12 += d11;
                    } catch (Exception e10) {
                        TTVideoEngineLog.e(PortraitNetworkScore.TAG, e10.toString());
                    }
                }
                d12 /= size;
                if (d12 < 1.0d) {
                    return;
                }
                int size2 = signalStrengthList.size();
                double d13 = 0.0d;
                for (int i12 = 0; i12 < size2; i12++) {
                    try {
                        String str = signalStrengthList.get(i12);
                        if (str != null) {
                            if (this.mSigCodeMap.containsKey(str)) {
                                d10 = this.mSigCodeMap.get(str).doubleValue();
                            } else {
                                d10 = 0.0d;
                            }
                            d13 += d10;
                        }
                    } catch (Exception e11) {
                        TTVideoEngineLog.e(PortraitNetworkScore.TAG, e11.toString());
                    }
                }
                d13 /= size2;
                if (d13 < 1.0d) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                if (d12 <= 2.0d) {
                    sb2.append('1');
                } else if (d12 <= 11.0d) {
                    sb2.append('2');
                } else if (d12 <= 26.0d) {
                    sb2.append('3');
                } else {
                    sb2.append('4');
                }
                sb2.append('_');
                if (d13 == 1.0d) {
                    sb2.append('1');
                } else if (d13 <= 3.0d) {
                    sb2.append('2');
                } else if (d13 <= 7.0d) {
                    sb2.append('3');
                } else {
                    sb2.append('4');
                }
                String sb3 = sb2.toString();
                if (this.mLevelCodeMap.containsKey(sb3)) {
                    i10 = this.mLevelCodeMap.get(sb3).intValue();
                } else {
                    i10 = -1;
                }
                this.mLastNetworkScore = i10;
                TTVideoEngineLog.d(PortraitNetworkScore.TAG, "rtt score:" + d12 + " sig score:" + d13 + " level:" + sb3);
            }
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public double calculateTargetBitrate(List<Integer> list, List<Float> list2) {
            return -1.0d;
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public int getLastNetworkScore() {
            if (this.mLastNetworkScore == -1) {
                calculateNetworkScore();
            }
            return this.mLastNetworkScore;
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public int getNetworkScore() {
            calculateNetworkScore();
            return this.mLastNetworkScore;
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public void init() {
            setDefaultRttMap();
            setDefaultSigMap();
            setDefaultLevelMap();
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public void setStringOption(int i10, String str) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 == 5) {
                        try {
                            this.mLevelCodeMap = _jsonStringToMap(str, true);
                            return;
                        } catch (Exception unused) {
                            setDefaultLevelMap();
                            return;
                        }
                    }
                    return;
                }
                try {
                    this.mSigCodeMap = _jsonStringToMap(str, false);
                    return;
                } catch (Exception unused2) {
                    setDefaultSigMap();
                    return;
                }
            }
            try {
                this.mRttCodeMap = _jsonStringToMap(str, false);
            } catch (Exception unused3) {
                setDefaultRttMap();
            }
        }
    }

    private PortraitNetworkScore() {
    }

    public static PortraitNetworkScore getInstance() {
        if (mInstance == null) {
            mInstance = new PortraitNetworkScore();
        }
        return mInstance;
    }

    public NetworkQualityAlgorithm genNetworkQualityAlg() {
        return new NetworkQualityAlgorithmV2();
    }

    @Override // com.ss.ttvideoengine.portrait.IPortrait
    public int getId() {
        return 1;
    }

    public int getLastPortraitResult() {
        NetworkQualityAlgorithm networkQualityAlgorithm = this.mQualityAlg;
        if (networkQualityAlgorithm == null) {
            return -1;
        }
        return networkQualityAlgorithm.getLastNetworkScore();
    }

    public double getLastTargetBitrate() {
        return mLastTargetBitrate;
    }

    public int getNetworkRTTLevel() {
        return this.mPortraitData.getNetworkRTTLevel();
    }

    public int getNetworkRTTMS() {
        return this.mPortraitData.getNetworkRTTMS();
    }

    public NetworkPortraitData getPortraitData() {
        return this.mPortraitData;
    }

    public int getPortraitResult() {
        NetworkQualityAlgorithm networkQualityAlgorithm = this.mQualityAlg;
        if (networkQualityAlgorithm == null) {
            return -1;
        }
        return networkQualityAlgorithm.getNetworkScore();
    }

    public void setIntOption(int i10, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4 || i11 < 0) {
                    return;
                }
                this.mPortraitData.setMinDataSize(i11);
                return;
            } else if (i11 > 0) {
                this.mPortraitData.setSampleInterval(i11);
                start();
                return;
            } else {
                return;
            }
        }
        this.mPortraitData.setMaxCount(i11);
    }

    public void setNetworkRTTLevelListener(networkRTTLevelListener networkrttlevellistener) {
        this.mPortraitData.setNetworkRTTLevelListener(networkrttlevellistener);
    }

    public void setStringOption(int i10, String str) {
        this.mQualityAlg.setStringOption(i10, str);
    }

    public void start() {
        this.mPortraitData.start();
        this.mQualityAlg = new NetworkQualityAlgorithmV1();
    }

    public void stop() {
        this.mPortraitData.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class NetworkQualityAlgorithmV2 implements NetworkQualityAlgorithm {
        private double mLinkFuncOffset;
        private double[] mParameters = {0.54551238d, -0.03129748d, 0.19721764d, 0.24254935d, 0.01385684d, -1.56912212d, -0.40001913d, -0.57657028d, -0.63627456d, -0.13389704d, 0.0628909d, -0.13203807d, -0.08140563d, -0.09929551d, 0.10024534d, 0.31530643d};
        private String mVarsToParse = null;

        public NetworkQualityAlgorithmV2() {
            double optDouble;
            JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject(VideoEventLoggerV2.SETTINGS_NET_QUALITY);
            if (vodJsonObject == null) {
                optDouble = 1.0d;
            } else {
                optDouble = vodJsonObject.optDouble(VideoEventLoggerV2.SETTINGS_LINK_FUNCTION_OFFSET, 1.0d);
            }
            this.mLinkFuncOffset = optDouble;
            if (optDouble < 0.0d) {
                this.mLinkFuncOffset = 1.0d;
            }
            TTVideoEngineLog.i(PortraitNetworkScore.TAG, "link function offset: " + this.mLinkFuncOffset);
        }

        private void parseVariable(String str) {
            String[] split = str.split(",");
            int length = split.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = i11 + 1;
                this.mParameters[i11] = Double.valueOf(split[i10]).doubleValue();
                if (i12 != this.mParameters.length) {
                    i10++;
                    i11 = i12;
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x0275  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x027a  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0281  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01ac  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01cf  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0261  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x026e  */
        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public double calculateTargetBitrate(java.util.List<java.lang.Integer> r32, java.util.List<java.lang.Float> r33) {
            /*
                Method dump skipped, instructions count: 688
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithmV2.calculateTargetBitrate(java.util.List, java.util.List):double");
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public int getLastNetworkScore() {
            return -1;
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public int getNetworkScore() {
            return -1;
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public void setStringOption(int i10, String str) {
            if (i10 == 4) {
                this.mVarsToParse = str;
            }
        }

        @Override // com.ss.ttvideoengine.log.PortraitNetworkScore.NetworkQualityAlgorithm
        public void init() {
        }
    }
}
