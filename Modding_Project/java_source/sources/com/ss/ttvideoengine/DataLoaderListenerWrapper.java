package com.ss.ttvideoengine;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.utils.DataLoaderCDNLog;
import com.ss.ttvideoengine.utils.Error;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class DataLoaderListenerWrapper implements DataLoaderListener {
    private DataLoaderListener mListener;
    private final CopyOnWriteArrayList<DataLoaderListener2> mListener2s = new CopyOnWriteArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addListener(DataLoaderListener2 dataLoaderListener2) {
        this.mListener2s.addIfAbsent(dataLoaderListener2);
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    @Nullable
    public String apiStringForFetchVideoModel(Map<String, String> map, String str, Resolution resolution) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.apiStringForFetchVideoModel(map, str, resolution);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    @Nullable
    public String authStringForFetchVideoModel(String str, Resolution resolution) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.authStringForFetchVideoModel(str, resolution);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearListeners() {
        this.mListener = null;
        this.mListener2s.clear();
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void dataLoaderError(String str, int i10, Error error) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.dataLoaderError(str, i10, error);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    @Nullable
    public String getCheckSumInfo(String str) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.getCheckSumInfo(str);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    @Nullable
    public HashMap<String, String> getCustomHttpHeaders(String str) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.getCustomHttpHeaders(str);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public boolean loadLibrary(String str) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            return dataLoaderListener.loadLibrary(str);
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onLoadProgress(DataLoaderHelper.DataLoaderTaskLoadProgress dataLoaderTaskLoadProgress) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onLoadProgress(dataLoaderTaskLoadProgress);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onLogInfo(int i10, String str, JSONObject jSONObject) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onLogInfo(i10, str, jSONObject);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onLogInfoToMonitor(int i10, String str, JSONObject jSONObject) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onLogInfoToMonitor(i10, str, jSONObject);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onNotify(int i10, long j10, long j11, String str) {
        Iterator<DataLoaderListener2> it = this.mListener2s.iterator();
        while (it.hasNext()) {
            it.next().onNotify(i10, j10, j11, str);
        }
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onNotify(i10, j10, j11, str);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onNotifyCDNLog(DataLoaderCDNLog dataLoaderCDNLog) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onNotifyCDNLog(dataLoaderCDNLog);
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onStartComplete() {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onStartComplete();
        }
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onTaskProgress(DataLoaderHelper.DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onTaskProgress(dataLoaderTaskProgressInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeListener(DataLoaderListener2 dataLoaderListener2) {
        this.mListener2s.remove(dataLoaderListener2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListener(DataLoaderListener dataLoaderListener) {
        this.mListener = dataLoaderListener;
    }

    @Override // com.ss.ttvideoengine.DataLoaderListener
    public void onNotifyCDNLog(JSONObject jSONObject) {
        DataLoaderListener dataLoaderListener = this.mListener;
        if (dataLoaderListener != null) {
            dataLoaderListener.onNotifyCDNLog(jSONObject);
        }
    }
}
