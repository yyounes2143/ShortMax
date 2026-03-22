package com.bytedance.vcloud.networkpredictor;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class DefaultSpeedPredictor implements ISpeedPredictor, Handler.Callback {
    public static final int KeyIsUpdateSpeedRecord = 0;
    public static final int SPEEDPREDICTOR_ALOG_ANET = 2;
    public static final int SPEEDPREDICTOR_ALOG_ANETIES = 6;
    public static final int SPEEDPREDICTOR_ALOG_HANET = 1;
    public static final int SPEEDPREDICTOR_ALOG_HECNET = 0;
    public static final int SPEEDPREDICTOR_ALOG_KFNET = 4;
    public static final int SPEEDPREDICTOR_ALOG_LSTMNET = 3;
    private static final int SPEEDPREDICTOR_LOG_LEVEL_KEY = 0;
    private static final String TAG = "SpeedPredictor";
    ReentrantReadWriteLock lock;
    private long mHandle;
    private Handler mSpeedUpdateHander;
    final ReentrantReadWriteLock.ReadLock readLock;
    private Thread subThread;
    final ReentrantReadWriteLock.WriteLock writeLock;

    public DefaultSpeedPredictor(int i10) {
        this.mHandle = 0L;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(false);
        this.lock = reentrantReadWriteLock;
        this.readLock = reentrantReadWriteLock.readLock();
        this.writeLock = this.lock.writeLock();
        SpeedPredictorJniLoader.loadLibrary();
        if (!SpeedPredictorJniLoader.isLibraryLoaded) {
            SpeedPredictorLog.e(TAG, "[SpeedPredictor] no predictor native loaded");
            return;
        }
        this.mHandle = _create(i10);
        SpeedPredictorConfig.setLoglevel(0);
        _setIntValue(this.mHandle, 0, SpeedPredictorConfig.getLogLevel());
    }

    private native void _close(long j10);

    private native long _create(int i10);

    private native float _getAverageDownloadSpeed(long j10, int i10, int i11, boolean z10);

    private native double _getDoubleValue(long j10, int i10, double d10);

    private native Map<String, String> _getDownloadSpeed(long j10, int i10);

    private native int _getIntValue(long j10, int i10, int i11);

    private native float _getLastPredictConfidence(long j10);

    private native long _getLongValue(long j10, int i10, long j11);

    private native SpeedPredictorResultCollection _getMultidimensionalDownloadSpeeds(long j10);

    private native SpeedPredictorResultCollection _getMultidimensionalPredictSpeeds(long j10);

    private native float _getPredictSpeed(long j10, int i10);

    private native String _getVersion();

    private native void _prepare(long j10);

    private native void _release(long j10);

    private native void _setConfigSpeedInfo(long j10, Map<String, String> map);

    private native void _setDoubleValue(long j10, int i10, double d10);

    private native void _setIntValue(long j10, int i10, int i11);

    private native void _setLongValue(long j10, int i10, long j11);

    private native void _setSpeedQueueSize(long j10, int i10);

    private native void _setStringValue(long j10, int i10, String str);

    private native void _start(long j10);

    private native void _update(long j10, ArrayList<SpeedPredictorRecord> arrayList, Map<String, Integer> map);

    private native void _updateOldWithStreamId(long j10, ISpeedRecordOld iSpeedRecordOld, Map<String, Integer> map);

    private native void _updateWithSizeTime(long j10, long j11, long j12, long j13);

    private void resetSpeedPredictor() {
        Handler handler = this.mSpeedUpdateHander;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mSpeedUpdateHander.getLooper().quit();
            this.mSpeedUpdateHander = null;
            this.subThread = null;
        }
    }

    private String speedPredictorResultArrayToString(ArrayList<SpeedPredictorResult> arrayList) {
        JSONObject jsonObject;
        if (arrayList == null) {
            try {
                if (arrayList.size() <= 0) {
                    return null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<SpeedPredictorResult> it = arrayList.iterator();
        while (it.hasNext()) {
            SpeedPredictorResult next = it.next();
            if (next != null && (jsonObject = next.toJsonObject()) != null) {
                jSONArray.put(jsonObject);
            }
        }
        if (jSONArray.length() > 0) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("data", jSONArray);
            return jSONObject.toString();
        }
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void close() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return;
        }
        _close(j10);
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getAverageDownloadSpeed(int i10, int i11, boolean z10) {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return -1.0f;
        }
        float _getAverageDownloadSpeed = _getAverageDownloadSpeed(j10, i10, i11, z10);
        this.readLock.unlock();
        return _getAverageDownloadSpeed;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public Map<String, String> getDownloadSpeed(int i10) {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return null;
        }
        Map<String, String> _getDownloadSpeed = _getDownloadSpeed(j10, i10);
        this.readLock.unlock();
        return _getDownloadSpeed;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getLastPredictConfidence() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return -1.0f;
        }
        float _getLastPredictConfidence = _getLastPredictConfidence(j10);
        this.readLock.unlock();
        return _getLastPredictConfidence;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public String getMultidimensionalDownloadSpeeds() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return null;
        }
        String speedPredictorResultArrayToString = speedPredictorResultArrayToString(_getMultidimensionalDownloadSpeeds(j10).getResultCollection());
        this.readLock.unlock();
        return speedPredictorResultArrayToString;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public SpeedPredictorResultCollection getMultidimensionalDownloadSpeedsObj() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return null;
        }
        SpeedPredictorResultCollection _getMultidimensionalDownloadSpeeds = _getMultidimensionalDownloadSpeeds(j10);
        this.readLock.unlock();
        return _getMultidimensionalDownloadSpeeds;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public String getMultidimensionalPredictSpeeds() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return null;
        }
        SpeedPredictorResultCollection _getMultidimensionalPredictSpeeds = _getMultidimensionalPredictSpeeds(j10);
        if (_getMultidimensionalPredictSpeeds != null) {
            this.readLock.unlock();
            return speedPredictorResultArrayToString(_getMultidimensionalPredictSpeeds.getResultCollection());
        }
        this.readLock.unlock();
        return null;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public SpeedPredictorResultCollection getMultidimensionalPredictSpeedsObj() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return null;
        }
        SpeedPredictorResultCollection _getMultidimensionalPredictSpeeds = _getMultidimensionalPredictSpeeds(j10);
        this.readLock.unlock();
        return _getMultidimensionalPredictSpeeds;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getPredictSpeed() {
        return getPredictSpeed(0);
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public String getVersion() {
        if (this.mHandle == 0) {
            return "j_1.7.0";
        }
        return _getVersion();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            SpeedPredictorNotifyInfo speedPredictorNotifyInfo = (SpeedPredictorNotifyInfo) message.obj;
            _updateOldWithStreamId(this.mHandle, speedPredictorNotifyInfo.mSpeedRecord, speedPredictorNotifyInfo.mStreamIdMediaTypeMap);
            return true;
        }
        return true;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void prepare() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return;
        }
        _prepare(j10);
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void release() {
        this.writeLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.writeLock.unlock();
            return;
        }
        _close(j10);
        _release(this.mHandle);
        this.mHandle = 0L;
        resetSpeedPredictor();
        this.writeLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void setConfigInfo(Map map) {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return;
        }
        _setConfigSpeedInfo(j10, map);
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void setSpeedQueueSize(int i10) {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return;
        }
        _setSpeedQueueSize(j10, i10);
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void start() {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return;
        }
        _start(j10);
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void update(String str, Map<String, Integer> map) {
        this.readLock.lock();
        if (this.mHandle != 0 && str != null && str.length() >= 0 && map != null && map.size() >= 0) {
            this.readLock.unlock();
            try {
                JSONArray optJSONArray = new JSONObject(str).optJSONArray("data");
                ArrayList<SpeedPredictorRecord> arrayList = new ArrayList<>();
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    try {
                        JSONObject jSONObject = optJSONArray.getJSONObject(i10);
                        SpeedPredictorRecord speedPredictorRecord = new SpeedPredictorRecord();
                        speedPredictorRecord.extractFields(jSONObject);
                        arrayList.add(speedPredictorRecord);
                    } catch (Throwable unused) {
                    }
                }
                this.readLock.lock();
                _update(this.mHandle, arrayList, map);
                this.readLock.unlock();
                return;
            } catch (Exception unused2) {
                return;
            }
        }
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public float getPredictSpeed(int i10) {
        this.readLock.lock();
        long j10 = this.mHandle;
        if (j10 == 0) {
            this.readLock.unlock();
            return -1.0f;
        }
        float _getPredictSpeed = _getPredictSpeed(j10, i10);
        this.readLock.unlock();
        return _getPredictSpeed;
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void update(ISpeedRecordOld iSpeedRecordOld, Map<String, Integer> map) {
        this.readLock.lock();
        if (this.mHandle == 0) {
            this.readLock.unlock();
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (this.subThread == null) {
                Thread thread = new Thread() { // from class: com.bytedance.vcloud.networkpredictor.DefaultSpeedPredictor.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        if (Looper.myLooper() == null) {
                            Looper.prepare();
                        }
                        DefaultSpeedPredictor.this.mSpeedUpdateHander = new Handler(this);
                        Looper.loop();
                    }
                };
                this.subThread = thread;
                thread.setName("speed_predict_update_thread");
                this.subThread.start();
            }
            if (this.mSpeedUpdateHander != null) {
                SpeedPredictorNotifyInfo speedPredictorNotifyInfo = new SpeedPredictorNotifyInfo();
                speedPredictorNotifyInfo.what = 0;
                speedPredictorNotifyInfo.mSpeedRecord = iSpeedRecordOld;
                speedPredictorNotifyInfo.mStreamIdMediaTypeMap = map;
                Message obtainMessage = this.mSpeedUpdateHander.obtainMessage();
                obtainMessage.what = 0;
                obtainMessage.obj = speedPredictorNotifyInfo;
                obtainMessage.sendToTarget();
            }
        } else {
            _updateOldWithStreamId(this.mHandle, iSpeedRecordOld, map);
        }
        this.readLock.unlock();
    }

    @Override // com.bytedance.vcloud.networkpredictor.ISpeedPredictor
    public void update(long j10, long j11, long j12) {
        this.readLock.lock();
        long j13 = this.mHandle;
        if (j13 == 0) {
            this.readLock.unlock();
            return;
        }
        _updateWithSizeTime(j13, j10, j11, j12);
        this.readLock.unlock();
    }
}
