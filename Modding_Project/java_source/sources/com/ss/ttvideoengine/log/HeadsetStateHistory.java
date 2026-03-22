package com.ss.ttvideoengine.log;

import com.ss.ttvideoengine.log.HeadsetStateMonitor;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class HeadsetStateHistory implements HeadsetStateMonitor.HeadsetStateChangedListener {
    private static final String TAG = "HeadsetStateHistory";
    private final HeadsetStateMonitor mHeadsetStateMonitor;
    private volatile long mLastSwitchTime = 0;
    private final ArrayList<String> mConnectionHistoryList = new ArrayList<>();

    public HeadsetStateHistory(HeadsetStateMonitor headsetStateMonitor) {
        this.mHeadsetStateMonitor = headsetStateMonitor;
    }

    private void addToHistory(boolean z10, boolean z11) {
        HashMap hashMap = new HashMap();
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
        hashMap.put("bt", Integer.valueOf(z11 ? 1 : 0));
        hashMap.put("con", Integer.valueOf(z10 ? 1 : 0));
        this.mConnectionHistoryList.add(new JSONObject(hashMap).toString());
    }

    public ArrayList<String> get() {
        return new ArrayList<>(this.mConnectionHistoryList);
    }

    public long getLastSwitchTime() {
        return this.mLastSwitchTime;
    }

    @Override // com.ss.ttvideoengine.log.HeadsetStateMonitor.HeadsetStateChangedListener
    public void onHeadsetStateChanged(boolean z10, boolean z11) {
        this.mLastSwitchTime = System.currentTimeMillis();
        addToHistory(z10, z11);
    }

    public void reset() {
        this.mLastSwitchTime = 0L;
        this.mConnectionHistoryList.clear();
    }

    public void start() {
        this.mHeadsetStateMonitor.addStateChangedListener(this);
        TTVideoEngineLog.d(TAG, "start");
    }

    public void stop() {
        this.mHeadsetStateMonitor.removeStateChangedListener(this);
        TTVideoEngineLog.d(TAG, "stop");
    }
}
