package com.ss.ttvideoengine.strategrycenter;

import com.bytedance.vcloud.networkpredictor.AwemeSpeedPredictor;
import com.bytedance.vcloud.networkpredictor.DefaultSpeedPredictor;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictorListener;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictorMLConfig;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes6.dex */
public class StrategyCenter {
    private static final String TAG = "TTVideoEngine";
    private static Map sConfigInfo;
    public static ISpeedPredictor sNetAbrSpeedPredictor;
    public static ISpeedPredictor sNetSpeedPredictor;
    private static ISpeedPredictorListener speedPredictorListener;
    private static ISpeedPredictorMLConfig speedPredictorMlConfig;

    /* loaded from: classes6.dex */
    private static class StrategyCenterHolder {
        private static final StrategyCenter instance = new StrategyCenter();

        private StrategyCenterHolder() {
        }
    }

    public static void closeNewStartAndSelectGearSpeedPredictor() {
        sNetSpeedPredictor.release();
    }

    public static void createAbrSpeedPredictor(int i10, int i11) {
        if (sNetAbrSpeedPredictor != null) {
            return;
        }
        TTVideoEngineLog.d(TAG, String.format(Locale.US, "[ABR] start speed predictor, type:%d，intervalMs:%d", Integer.valueOf(i10), Integer.valueOf(i11)));
        sNetAbrSpeedPredictor = new DefaultSpeedPredictor(i10);
    }

    public static void createNewStartAndSelectGearSpeedPredictor(int i10) {
        if (sNetSpeedPredictor != null) {
            return;
        }
        TTVideoEngineLog.d(TAG, String.format(Locale.US, "[IESSpeedPredictor] start new speed predictor, type:%d", Integer.valueOf(i10)));
        DefaultSpeedPredictor defaultSpeedPredictor = new DefaultSpeedPredictor(i10);
        sNetSpeedPredictor = defaultSpeedPredictor;
        defaultSpeedPredictor.setConfigInfo(sConfigInfo);
    }

    public static void createSpeedPredictor(int i10) {
        if (sNetSpeedPredictor != null) {
            return;
        }
        TTVideoEngineLog.d(TAG, String.format(Locale.US, "[IESSpeedPredictor] start speed predictor, type:%d", Integer.valueOf(i10)));
        if (i10 != 1 && i10 != 0 && i10 != 2 && i10 != 3) {
            try {
                AwemeSpeedPredictor awemeSpeedPredictor = new AwemeSpeedPredictor(speedPredictorListener);
                sNetSpeedPredictor = awemeSpeedPredictor;
                awemeSpeedPredictor.setupAlgorithmTypeAndConfig(i10, speedPredictorMlConfig);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        sNetSpeedPredictor = new DefaultSpeedPredictor(i10);
    }

    public static StrategyCenter getInstance() {
        return StrategyCenterHolder.instance;
    }

    public static void setConfigInfo(Map map) {
        sConfigInfo = map;
    }

    public static void setSpeedPredictorListener(ISpeedPredictorListener iSpeedPredictorListener) {
        speedPredictorListener = iSpeedPredictorListener;
    }

    public static void setSpeedPredictorMlConfig(ISpeedPredictorMLConfig iSpeedPredictorMLConfig) {
        speedPredictorMlConfig = iSpeedPredictorMLConfig;
    }

    public static void setSpeedQueueSize(int i10) {
        ISpeedPredictor iSpeedPredictor = sNetSpeedPredictor;
        if (iSpeedPredictor != null) {
            iSpeedPredictor.setSpeedQueueSize(i10);
        }
    }

    private StrategyCenter() {
    }
}
