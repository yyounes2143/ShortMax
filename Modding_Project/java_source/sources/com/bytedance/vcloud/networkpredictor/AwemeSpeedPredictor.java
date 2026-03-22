package com.bytedance.vcloud.networkpredictor;

import android.util.Log;
import com.unity3d.services.core.fid.Constants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class AwemeSpeedPredictor implements ISpeedPredictor, ISpeedPredictorAwemeListener {
    public static final int SPEEDPREDICTOR_ALOG_DEFAULT = 4;
    public static final int SPEEDPREDICTOR_ALOG_INTELLIGENT = 5;
    private static final String TAG = "AwemeSpeedPredictor";
    private ISpeedPredictorAwemePredictor mAwemeRealPredictor;
    private ISpeedPredictorListener mSpeedPredictorListener;
    private Timer timer;

    public AwemeSpeedPredictor(ISpeedPredictorListener iSpeedPredictorListener) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Class<?> cls;
        this.mAwemeRealPredictor = null;
        this.mSpeedPredictorListener = iSpeedPredictorListener;
        try {
            cls = Class.forName("com.bytedance.vcloud.iesnetworkpredictnative.NetworkSpeedManager");
        } catch (ClassNotFoundException unused) {
            Log.d(TAG, "AwemeSpeedPredictor: No Class Find");
            cls = null;
        }
        Method method = cls.getMethod(Constants.GET_INSTANCE, new Class[0]);
        if (method == null) {
            Log.d(TAG, "AwemeSpeedPredictor: No Class GetInstance Method Find");
        }
        ISpeedPredictorAwemePredictor iSpeedPredictorAwemePredictor = (ISpeedPredictorAwemePredictor) method.invoke(null, new Object[0]);
        this.mAwemeRealPredictor = iSpeedPredictorAwemePredictor;
        if (iSpeedPredictorAwemePredictor == null) {
            Log.d(TAG, "AwemeSpeedPredictor: No instance Obj Produce");
        }
        this.mSpeedPredictorListener = iSpeedPredictorListener;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getAverageDownloadSpeed(int i10, int i11, boolean z10) {
        return -1.0f;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictorAwemeListener
    public String getCountry() {
        return this.mSpeedPredictorListener.getCountry();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictorAwemeListener
    public boolean getDownFileState(String str, String str2, String str3) throws Exception {
        return this.mSpeedPredictorListener.getDownFileState(str, str2, str3);
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public Map<String, String> getDownloadSpeed(int i10) {
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictorAwemeListener
    public String getFilesCachePath() {
        return this.mSpeedPredictorListener.getFilesCachePath();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictorAwemeListener
    public Object getIOExecutor() {
        return this.mSpeedPredictorListener.getIOExecutor();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getLastPredictConfidence() {
        return -1.0f;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public String getMultidimensionalDownloadSpeeds() {
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public SpeedPredictorResultCollection getMultidimensionalDownloadSpeedsObj() {
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public String getMultidimensionalPredictSpeeds() {
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public SpeedPredictorResultCollection getMultidimensionalPredictSpeedsObj() {
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictorAwemeListener
    public String getNetworkType() {
        return this.mSpeedPredictorListener.getNetworkType();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictorAwemeListener
    public int getPhoneSignal() {
        return this.mSpeedPredictorListener.getPhoneSignal();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getPredictSpeed() {
        return getPredictSpeed(0);
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public String getVersion() {
        return "A1.7.0";
    }

    public void setupAlgorithmTypeAndConfig(int i10, ISpeedPredictorMLConfig iSpeedPredictorMLConfig) {
        if (i10 == 4) {
            Timer timer = this.timer;
            if (timer != null) {
                timer.cancel();
            }
            this.mAwemeRealPredictor.setSpeedAlgorithmType(4);
        } else if (i10 == 5) {
            this.mAwemeRealPredictor.setPredictorListener(this);
            this.mAwemeRealPredictor.configMlModel(iSpeedPredictorMLConfig);
            this.mAwemeRealPredictor.setSpeedAlgorithmType(5);
            startCalculate();
        }
    }

    void startCalculate() {
        Timer timer = new Timer("awemeSpeedPredictor");
        this.timer = timer;
        timer.schedule(new TimerTask() { // from class: com.bytedance.vcloud.networkpredictor.AwemeSpeedPredictor.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                AwemeSpeedPredictor.this.mAwemeRealPredictor.calculateSpeed();
            }
        }, 500L, 500L);
    }

    void stopCalculate() {
        this.timer.cancel();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void update(ISpeedRecordOld iSpeedRecordOld, Map<String, Integer> map) {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getPredictSpeed(int i10) {
        return (float) this.mAwemeRealPredictor.getSpeed();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void update(String str, Map<String, Integer> map) {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void update(long j10, long j11, long j12) {
        if (j11 <= 0) {
            return;
        }
        double d10 = j10;
        this.mAwemeRealPredictor.monitorVideoSpeed((8.0d * d10) / (j11 / 1000.0d), d10, j11);
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void close() {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void prepare() {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void release() {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void start() {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void setConfigInfo(Map map) {
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void setSpeedQueueSize(int i10) {
    }
}
