package com.ss.ttvideoengine.log;

import android.content.Context;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ConcurrentModificationException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public enum VideoEventManager {
    instance;
    
    public static final int LOGGER_VERSION_NEW = 2;
    public static final int LOGGER_VERSION_OLD = 1;
    private static final int MAX_LOG_LINE_LENGTH = 3900;
    private static final String TAG = "VideoEventManager";
    private Context mContext;
    private VideoEventEngineUploader mEngineUploader;
    private IVideoEventUploader mUploader;
    private VideoEventListener mListener = null;
    private JSONArray mJsonArray = new JSONArray();
    private JSONArray mJsonArrayV2 = new JSONArray();
    private int mLoggerVersion = 2;

    VideoEventManager() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void showEvent(JSONObject jSONObject) {
        if (((TTVideoEngineLog.getLogNotifyLevel() >> 1) & 1) == 1 || ((TTVideoEngineLog.getLogTurnOn() >> 1) & 1) == 1) {
            try {
                showLongLog(jSONObject.toString());
            } catch (ConcurrentModificationException e10) {
                TTVideoEngineLog.e(TAG, e10.toString());
            }
        }
    }

    private static void showLongLog(String str) {
        if (str != null) {
            int length = str.length();
            int i10 = MAX_LOG_LINE_LENGTH;
            if (length > MAX_LOG_LINE_LENGTH) {
                int length2 = str.length();
                int i11 = 0;
                while (i10 < length2) {
                    TTVideoEngineLog.d(TAG, str.substring(i11, i10));
                    i11 += MAX_LOG_LINE_LENGTH;
                    i10 = Math.min(i10 + MAX_LOG_LINE_LENGTH, length2);
                }
                TTVideoEngineLog.d(TAG, str.substring(i11, i10));
                return;
            }
        }
        TTVideoEngineLog.d(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addEvent(boolean z10, final JSONObject jSONObject) {
        synchronized (VideoEventManager.class) {
            try {
                if (jSONObject == null) {
                    return;
                }
                TTVideoEngineLog.d(TAG, "addEvent  uploadLog = " + z10);
                VideoEventEngineUploader videoEventEngineUploader = this.mEngineUploader;
                if (videoEventEngineUploader != null) {
                    videoEventEngineUploader.onEvent("video_playq", jSONObject);
                } else {
                    IVideoEventUploader iVideoEventUploader = this.mUploader;
                    if (iVideoEventUploader != null && z10) {
                        iVideoEventUploader.onUplaod("video_playq", jSONObject);
                        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoEventManager.showEvent(jSONObject);
                            }
                        });
                    } else {
                        if (this.mListener != null) {
                            this.mJsonArray.put(jSONObject);
                            this.mListener.onEvent();
                        } else {
                            TTVideoEngineLog.e(TAG, "no listener set");
                        }
                        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.h
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoEventManager.showEvent(jSONObject);
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void addEventV2(boolean z10, final JSONObject jSONObject, String str) {
        synchronized (VideoEventManager.class) {
            try {
                if (jSONObject == null) {
                    return;
                }
                TTVideoEngineLog.d(TAG, "addEventV2  uploadLog = " + z10 + ", listener:" + this.mListener + ", uploader:" + this.mUploader);
                VideoEventEngineUploader videoEventEngineUploader = this.mEngineUploader;
                if (videoEventEngineUploader != null) {
                    videoEventEngineUploader.onEventV2(str, jSONObject);
                } else {
                    IVideoEventUploader iVideoEventUploader = this.mUploader;
                    if (iVideoEventUploader != null && z10) {
                        iVideoEventUploader.onUplaod(str, jSONObject);
                        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoEventManager.showEvent(jSONObject);
                            }
                        });
                    } else {
                        if (this.mListener != null) {
                            this.mJsonArrayV2.put(jSONObject);
                            this.mListener.onEventV2(str);
                        } else {
                            TTVideoEngineLog.e(TAG, "no listener set");
                        }
                        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                VideoEventManager.showEvent(jSONObject);
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int getLoggerVersion() {
        TTVideoEngineLog.e(TAG, "getLoggerVersion: " + this.mLoggerVersion);
        return this.mLoggerVersion;
    }

    public synchronized JSONArray popAllEvents() {
        JSONArray jSONArray;
        jSONArray = this.mJsonArray;
        this.mJsonArray = new JSONArray();
        return jSONArray;
    }

    public JSONArray popAllEventsV2() {
        JSONArray jSONArray = this.mJsonArrayV2;
        synchronized (VideoEventManager.class) {
            this.mJsonArrayV2 = new JSONArray();
        }
        return jSONArray;
    }

    public void setContext(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public synchronized void setEngineUploader(VideoEventEngineUploader videoEventEngineUploader) {
        this.mEngineUploader = videoEventEngineUploader;
    }

    public void setListener(VideoEventListener videoEventListener) {
        this.mListener = videoEventListener;
    }

    public void setLoggerVersion(int i10) {
        TTVideoEngineLog.e(TAG, "setLoggerVersion: " + i10);
        if (i10 == 1 || i10 == 2) {
            this.mLoggerVersion = i10;
        }
    }

    public void setUploader(IVideoEventUploader iVideoEventUploader) {
        this.mUploader = iVideoEventUploader;
    }
}
