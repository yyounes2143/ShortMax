package com.ss.ttvideoengine;

import android.os.SystemClock;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class DataLoaderListener2ForStrategyCenter implements DataLoaderListener2 {
    private static final String TAG = "TTVideoEngine";
    static DataLoaderListener2ForStrategyCenter sInstance = new DataLoaderListener2ForStrategyCenter();

    DataLoaderListener2ForStrategyCenter() {
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener2
    public void onNotify(int i10, long j10, long j11, String str) {
        ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetSpeedPredictor;
        if (i10 == 2 && iSpeedPredictor != null) {
            iSpeedPredictor.update(j10, j11, SystemClock.elapsedRealtime());
            if (j11 != 0) {
                TTVideoEngineLog.d(TAG, String.format(Locale.US, "[IESSpeedPredictor]: speedRecord:%f", Double.valueOf(j10 / j11)));
            }
        }
    }
}
