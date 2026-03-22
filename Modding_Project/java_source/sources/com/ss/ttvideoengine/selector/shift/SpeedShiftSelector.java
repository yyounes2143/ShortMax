package com.ss.ttvideoengine.selector.shift;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.IVideoInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.selector.SelectedInfo;
import com.ss.ttvideoengine.selector.Selector;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyContext;
import com.ss.ttvideoengine.selector.strategy.IGearStrategyListener;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes6.dex */
public class SpeedShiftSelector implements Selector {
    public static final int PARAMS_NETWORK_SPEED = 1;
    protected IAutoBitrateSet autoBitrateSet;
    protected List<? extends IBandwidthSet> bandwidthSets;
    protected final IGearConfig gearConfig;
    protected List<? extends IGearSet> gearSets;
    private Shift[] mShifts;

    /* loaded from: classes6.dex */
    public static class Params {
        private double mSpeed;

        public Map<Integer, Object> build() {
            HashMap hashMap = new HashMap();
            hashMap.put(1, Double.valueOf(this.mSpeed));
            return hashMap;
        }

        public Params speed(double d10) {
            this.mSpeed = d10;
            return this;
        }
    }

    public SpeedShiftSelector(SpeedShiftConfig speedShiftConfig) {
        if (speedShiftConfig != null) {
            this.gearConfig = speedShiftConfig.getIGearConfig();
            this.gearSets = speedShiftConfig.getIGearSets();
            this.bandwidthSets = speedShiftConfig.getIBandwidthSets();
            this.autoBitrateSet = speedShiftConfig.getIAutoBitrateSet();
        } else {
            this.gearConfig = null;
        }
        initShifts(this.gearSets);
    }

    private BitrateInfo calculateBitrateInfoByAutoBitrateSet(double d10) {
        IAutoBitrateSet iAutoBitrateSet;
        if (d10 > 0.0d && (iAutoBitrateSet = this.autoBitrateSet) != null) {
            return new BitrateInfo(Math.max((iAutoBitrateSet.getFirstParam() * d10 * d10 * d10) + (this.autoBitrateSet.getSecondParam() * d10 * d10) + (this.autoBitrateSet.getThirdParam() * d10) + this.autoBitrateSet.getFourthParam(), this.autoBitrateSet.getMinBitrate()), true);
        }
        return null;
    }

    private BitrateInfo calculateBitrateInfoByBandwidthSet(double d10) {
        List<? extends IBandwidthSet> list;
        IBandwidthSet iBandwidthSet;
        if (d10 <= 0.0d || (list = this.bandwidthSets) == null || list.size() == 0) {
            return null;
        }
        Iterator<? extends IBandwidthSet> it = this.bandwidthSets.iterator();
        while (true) {
            if (it.hasNext()) {
                iBandwidthSet = it.next();
                if (iBandwidthSet != null && d10 <= iBandwidthSet.getSpeed()) {
                    break;
                }
            } else {
                iBandwidthSet = null;
                break;
            }
        }
        if (iBandwidthSet == null) {
            List<? extends IBandwidthSet> list2 = this.bandwidthSets;
            iBandwidthSet = list2.get(list2.size() - 1);
        }
        if (iBandwidthSet == null) {
            return null;
        }
        return new BitrateInfo(iBandwidthSet.getBitrate(), true);
    }

    private BitrateInfo calculateBitrateInfoByGearSet(double d10) {
        Shift[] shiftArr;
        if (d10 > 0.0d && (shiftArr = this.mShifts) != null) {
            double d11 = Double.MAX_VALUE;
            Shift shift = null;
            for (Shift shift2 : shiftArr) {
                double abs = Math.abs(shift2.getMedianThreshold() - d10);
                if (abs < d11) {
                    shift = shift2;
                    d11 = abs;
                }
            }
            if (shift != null) {
                return new BitrateInfo(shift.mRate, false);
            }
        }
        return null;
    }

    @Nullable
    private <T extends IVideoInfo> T findBitRate(BitrateInfo bitrateInfo, List<T> list) throws BitrateNotMatchException {
        if (bitrateInfo == null) {
            if (this.gearConfig != null) {
                return (T) getDefaultBitrate(list);
            }
            throw new BitrateNotMatchException(6, "gear config is null");
        }
        List<T> filter = filter(list);
        if (filter != null && !filter.isEmpty()) {
            if (bitrateInfo.maxBitrate) {
                return (T) findMaxBitrate(bitrateInfo.bitrate, filter);
            }
            return (T) findNearestBitrate(bitrateInfo.bitrate, filter);
        }
        throw new BitrateNotMatchException(5, "Intersection bitrate list is empty.");
    }

    @Nullable
    private <T extends IVideoInfo> T findMaxBitrate(double d10, List<T> list) {
        T t10 = null;
        if (list != null) {
            for (T t11 : list) {
                if (t10 != null) {
                    if (t10.getValueInt(3) > d10) {
                        if (t11.getValueInt(3) < t10.getValueInt(3)) {
                        }
                    } else if (d10 >= t11.getValueInt(3) && t11.getValueInt(3) >= t10.getValueInt(3)) {
                    }
                }
                t10 = t11;
            }
        }
        return t10;
    }

    @Nullable
    private <T extends IVideoInfo> T findNearestBitrate(double d10, List<T> list) {
        T t10 = null;
        if (list != null) {
            for (T t11 : list) {
                if (t10 == null || Math.abs(t11.getValueInt(3) - d10) < Math.abs(t10.getValueInt(3) - d10)) {
                    t10 = t11;
                }
            }
        }
        return t10;
    }

    private void initShifts(List<? extends IGearSet> list) {
        if (list != null && !list.isEmpty()) {
            this.mShifts = new Shift[list.size()];
            for (int i10 = 0; i10 < list.size(); i10++) {
                IGearSet iGearSet = list.get(i10);
                this.mShifts[i10] = new Shift(iGearSet.getBitRate(), iGearSet.getNetworkLower() * 8000.0d, 8000.0d * iGearSet.getNetworkUpper());
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:(13:8|9|10|(1:12)(2:28|(1:30)(1:31))|13|14|15|16|17|(1:19)|20|(1:22)|23)|35|10|(0)(0)|13|14|15|16|17|(0)|20|(0)|23) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
        r3 = new com.ss.ttvideoengine.utils.Error(com.ss.ttvideoengine.utils.Error.Selector, (int) com.ss.ttvideoengine.utils.Error.MissingSelectorConfig, r2.getMessage());
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ss.ttvideoengine.selector.SelectedInfo select(java.util.List<? extends com.ss.ttvideoengine.model.IVideoInfo> r6, java.util.Map<java.lang.Integer, java.lang.Object> r7) {
        /*
            r5 = this;
            java.lang.String r0 = "kTTVideoSelector"
            if (r6 == 0) goto L6b
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto L6b
            if (r7 == 0) goto L28
            r1 = 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r7 = r7.get(r1)
            if (r7 == 0) goto L28
            java.lang.Double r7 = (java.lang.Double) r7     // Catch: java.lang.ClassCastException -> L1e
            double r1 = r7.doubleValue()     // Catch: java.lang.ClassCastException -> L1e
            goto L2a
        L1e:
            r7 = move-exception
            java.lang.String r1 = "Selector"
            java.lang.String r7 = r7.getMessage()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.e(r1, r7)
        L28:
            r1 = -4616189618054758400(0xbff0000000000000, double:-1.0)
        L2a:
            com.ss.ttvideoengine.selector.shift.IAutoBitrateSet r7 = r5.autoBitrateSet
            if (r7 == 0) goto L33
            com.ss.ttvideoengine.selector.shift.BitrateInfo r7 = r5.calculateBitrateInfoByAutoBitrateSet(r1)
            goto L40
        L33:
            java.util.List<? extends com.ss.ttvideoengine.selector.shift.IBandwidthSet> r7 = r5.bandwidthSets
            if (r7 == 0) goto L3c
            com.ss.ttvideoengine.selector.shift.BitrateInfo r7 = r5.calculateBitrateInfoByBandwidthSet(r1)
            goto L40
        L3c:
            com.ss.ttvideoengine.selector.shift.BitrateInfo r7 = r5.calculateBitrateInfoByGearSet(r1)
        L40:
            r1 = 0
            com.ss.ttvideoengine.model.IVideoInfo r0 = r5.findBitRate(r7, r6)     // Catch: com.ss.ttvideoengine.selector.shift.BitrateNotMatchException -> L48
            r3 = r1
            r1 = r0
            goto L54
        L48:
            r2 = move-exception
            com.ss.ttvideoengine.utils.Error r3 = new com.ss.ttvideoengine.utils.Error
            r4 = -7998(0xffffffffffffe0c2, float:NaN)
            java.lang.String r2 = r2.getMessage()
            r3.<init>(r0, r4, r2)
        L54:
            r0 = 0
            if (r1 != 0) goto L5e
            java.lang.Object r6 = r6.get(r0)
            r1 = r6
            com.ss.ttvideoengine.model.IVideoInfo r1 = (com.ss.ttvideoengine.model.IVideoInfo) r1
        L5e:
            com.ss.ttvideoengine.selector.SelectedInfo r6 = new com.ss.ttvideoengine.selector.SelectedInfo
            r6.<init>(r1, r3)
            if (r7 == 0) goto L6a
            double r1 = r7.bitrate
            r6.setDoubleValue(r0, r1)
        L6a:
            return r6
        L6b:
            com.ss.ttvideoengine.utils.Error r6 = new com.ss.ttvideoengine.utils.Error
            r7 = -7999(0xffffffffffffe0c1, float:NaN)
            java.lang.String r1 = "bitrate list is empty..."
            r6.<init>(r0, r7, r1)
            com.ss.ttvideoengine.selector.SelectedInfo r7 = new com.ss.ttvideoengine.selector.SelectedInfo
            r7.<init>(r6)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.selector.shift.SpeedShiftSelector.select(java.util.List, java.util.Map):com.ss.ttvideoengine.selector.SelectedInfo");
    }

    protected <T extends IVideoInfo> List<T> filter(List<T> list) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        if (this.gearConfig != null && !list.isEmpty()) {
            Pair<Double, Double> bitrateInterval = this.gearConfig.getBitrateInterval();
            Set<String> gearGroup = this.gearConfig.getGearGroup();
            if (bitrateInterval != null && this.gearConfig.getDefaultBitrate() > 0.0d) {
                z10 = true;
            } else {
                z10 = false;
            }
            for (T t10 : list) {
                if (z10) {
                    double valueInt = t10.getValueInt(3);
                    if (valueInt >= ((Double) bitrateInterval.first).doubleValue() && valueInt <= ((Double) bitrateInterval.second).doubleValue()) {
                        arrayList.add(t10);
                    }
                } else if (gearGroup != null && gearGroup.contains(t10.getValueStr(7))) {
                    arrayList.add(t10);
                }
            }
            if (arrayList.isEmpty()) {
                if (z10) {
                    T t11 = null;
                    for (T t12 : list) {
                        if (t11 == null || Math.abs(t12.getValueInt(3) - this.gearConfig.getDefaultBitrate()) < Math.abs(t11.getValueInt(3) - this.gearConfig.getDefaultBitrate())) {
                            t11 = t12;
                        }
                    }
                    arrayList.add(t11);
                } else {
                    arrayList.add(list.get(0));
                }
            }
        }
        return arrayList;
    }

    protected <T extends IVideoInfo> T getDefaultBitrate(List<T> list) throws BitrateNotMatchException {
        String defaultGearName = this.gearConfig.getDefaultGearName();
        double defaultBitrate = this.gearConfig.getDefaultBitrate();
        if (defaultBitrate <= 0.0d) {
            for (T t10 : list) {
                if (TextUtils.equals(t10.getValueStr(7), defaultGearName)) {
                    return t10;
                }
            }
            throw new BitrateNotMatchException(4, "defaultGearName = " + defaultGearName + " bitrates = " + list.toString());
        }
        T t11 = null;
        double d10 = Double.MAX_VALUE;
        for (T t12 : list) {
            double abs = Math.abs(t12.getValueInt(3) - defaultBitrate);
            if (d10 > abs) {
                t11 = t12;
                d10 = abs;
            }
        }
        return t11;
    }

    @Override // com.ss.ttvideoengine.selector.Selector
    @NonNull
    public SelectedInfo select(@Nullable IVideoModel iVideoModel, @Nullable Map<Integer, Object> map) {
        Error error;
        double d10;
        VideoInfo videoInfo;
        VideoInfo videoInfo2;
        if (iVideoModel == null) {
            return new SelectedInfo(new Error(Error.Selector, (int) Error.VideoInfoEmpty, "null video model"));
        }
        if (StrategyHelper.helper().moduleSwitch(804) != 0) {
            TTVideoEngineLog.i(Selector.TAG, "[GearStrategy] SpeedShiftSelector native select enabled");
            HashMap hashMap = new HashMap();
            GearStrategyContext gearStrategyContext = new GearStrategyContext(null);
            gearStrategyContext.setVideoModel(iVideoModel);
            gearStrategyContext.setGearStrategyListener(new IGearStrategyListener() { // from class: com.ss.ttvideoengine.selector.shift.SpeedShiftSelector.1
                @Override // com.ss.ttvideoengine.selector.strategy.IGearStrategyListener
                public void onAfterSelect(IVideoModel iVideoModel2, Map<String, String> map2, int i10, Object obj) {
                    ((Map) obj).putAll(map2);
                }

                @Override // com.ss.ttvideoengine.selector.strategy.IGearStrategyListener
                public void onBeforeSelect(IVideoModel iVideoModel2, Map<String, String> map2, int i10, Object obj) {
                }
            });
            gearStrategyContext.setUserData(hashMap);
            Map<String, Integer> selectResolution = StrategyHelper.helper().selectResolution(iVideoModel, 1, hashMap, gearStrategyContext);
            String str = (String) hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_DESC);
            int i10 = 0;
            if (str != null && !str.isEmpty()) {
                try {
                    i10 = Integer.parseInt((String) hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE));
                } catch (Exception unused) {
                }
                return new SelectedInfo(new Error(Error.Selector, i10, str));
            }
            if (selectResolution != null) {
                int intValue = selectResolution.get("video").intValue();
                try {
                    d10 = Double.parseDouble((String) hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_CALC_BITRATE));
                } catch (Exception unused2) {
                    d10 = 0.0d;
                }
                List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
                if (intValue > 0 && videoInfoList != null) {
                    new HashMap();
                    Iterator<VideoInfo> it = videoInfoList.iterator();
                    while (it.hasNext()) {
                        videoInfo2 = it.next();
                        if (videoInfo2 != null && videoInfo2.getMediatype() != VideoRef.TYPE_AUDIO && videoInfo2.getResolution() != null && videoInfo2.getValueInt(3) == intValue) {
                            break;
                        }
                    }
                }
                videoInfo2 = null;
                error = videoInfo2 == null ? new Error(Error.Selector, (int) Error.VideoInfoEmpty, "null video info fit bitrate") : null;
                videoInfo = videoInfo2;
            } else {
                error = new Error(Error.Selector, (int) Error.StartupResultEmpty, "native select result null");
                d10 = 0.0d;
                videoInfo = null;
            }
            SelectedInfo selectedInfo = new SelectedInfo(videoInfo, error);
            if (d10 > 0.0d) {
                selectedInfo.setDoubleValue(0, d10);
            }
            return selectedInfo;
        }
        TTVideoEngineLog.i(Selector.TAG, "[GearStrategy] SpeedShiftSelector native select disabled");
        return select(iVideoModel.getVideoInfoList(), map);
    }
}
