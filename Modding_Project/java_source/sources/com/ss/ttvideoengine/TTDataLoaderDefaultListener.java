package com.ss.ttvideoengine;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.utils.DataLoaderCDNLog;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTDataLoaderDefaultListener implements DataLoaderListener {
    private static final String TAG = "TTVideoEngine";
    private DataLoaderListener mInjectDataLoaderListener;
    private ISpeedPredictor mPredictor;

    TTDataLoaderDefaultListener(ISpeedPredictor iSpeedPredictor, DataLoaderListener dataLoaderListener) {
        this.mPredictor = iSpeedPredictor;
        this.mInjectDataLoaderListener = dataLoaderListener;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    @Nullable
    public String apiStringForFetchVideoModel(Map<String, String> map, String str, Resolution resolution) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.apiStringForFetchVideoModel(map, str, resolution);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    @Nullable
    public String authStringForFetchVideoModel(String str, Resolution resolution) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.authStringForFetchVideoModel(str, resolution);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void dataLoaderError(String str, int i10, Error error) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.dataLoaderError(str, i10, error);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public String getCheckSumInfo(String str) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.getCheckSumInfo(str);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public HashMap<String, String> getCustomHttpHeaders(String str) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.getCustomHttpHeaders(str);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public boolean loadLibrary(String str) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.loadLibrary(str);
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onLoadProgress(DataLoaderHelper.DataLoaderTaskLoadProgress dataLoaderTaskLoadProgress) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onLoadProgress(dataLoaderTaskLoadProgress);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onLogInfo(int i10, String str, JSONObject jSONObject) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onLogInfo(i10, str, jSONObject);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onLogInfoToMonitor(int i10, String str, JSONObject jSONObject) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onLogInfoToMonitor(i10, str, jSONObject);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onNotify(int i10, long j10, long j11, String str) {
        ISpeedPredictor iSpeedPredictor;
        if (i10 == 2 && (iSpeedPredictor = this.mPredictor) != null) {
            iSpeedPredictor.update(j10, j11, SystemClock.elapsedRealtime());
            if (j11 != 0) {
                TTVideoEngineLog.d(TAG, String.format(Locale.US, "[IESSpeedPredictor]: speedRecord:%f", Double.valueOf(j10 / j11)));
            }
        }
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onNotify(i10, j10, j11, str);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onNotifyCDNLog(DataLoaderCDNLog dataLoaderCDNLog) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onNotifyCDNLog(dataLoaderCDNLog);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onTaskProgress(DataLoaderHelper.DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onTaskProgress(dataLoaderTaskProgressInfo);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onNotifyCDNLog(JSONObject jSONObject) {
        DataLoaderListener dataLoaderListener = this.mInjectDataLoaderListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onNotifyCDNLog(jSONObject);
        }
    }
}
