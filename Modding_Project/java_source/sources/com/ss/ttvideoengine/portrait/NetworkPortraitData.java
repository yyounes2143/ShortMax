package com.ss.ttvideoengine.portrait;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTNetWorkListener;
import com.ss.ttvideoengine.info.networkRTTLevelListener;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes6.dex */
public class NetworkPortraitData {
    private static final int MIN_NETWORK_DATA_MS = 120000;
    private static final String NET_PORTRAIT_DATA = "net-portrait-data";
    private static final String TAG = "NetworkPortraitData";
    private networkRTTLevelListener mRTTLevelListener;
    private Timer mTimer;
    private TimerTask mTimerTask;
    private List<Integer> mCatowerRttList = Collections.emptyList();
    private List<Integer> mCatowerRttMsList = Collections.emptyList();
    private List<String> mSignalStrengthList = Collections.emptyList();
    private Map<Long, Float> mMdlSpeedList = Collections.emptyMap();
    private volatile int mNetLevelMaxCount = 100;
    private volatile int mNetTimerTaskIntervalMs = 0;
    private volatile int mNetMinDataSize = 120000;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class MyTimerTask extends TimerTask {
        private MyTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            int networkRTTLevel = NetworkPortraitData.this.getNetworkRTTLevel();
            int networkRTTMS = NetworkPortraitData.this.getNetworkRTTMS();
            String signalStrength = TTNetWorkListener.getInstance().getSignalStrength();
            synchronized (this) {
                try {
                    if (NetworkPortraitData.this.mCatowerRttList.size() >= NetworkPortraitData.this.mNetLevelMaxCount) {
                        NetworkPortraitData.this.mCatowerRttList.remove(0);
                        NetworkPortraitData.this.mCatowerRttMsList.remove(0);
                        NetworkPortraitData.this.mSignalStrengthList.remove(0);
                    }
                    NetworkPortraitData.this.mCatowerRttList.add(Integer.valueOf(networkRTTLevel));
                    NetworkPortraitData.this.mCatowerRttMsList.add(Integer.valueOf(networkRTTMS));
                    NetworkPortraitData.this.mSignalStrengthList.add(signalStrength);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private <T> List<T> getSubListToMeetMinSize(List<T> list, int i10) {
        if (this.mNetTimerTaskIntervalMs == 0) {
            return new ArrayList();
        }
        int i11 = (this.mNetMinDataSize / this.mNetTimerTaskIntervalMs) - i10;
        if (i11 <= 0) {
            return new ArrayList();
        }
        if (i11 > list.size()) {
            return new ArrayList(list);
        }
        return list.subList(list.size() - i11, list.size());
    }

    @Nullable
    public List<Float> getMdlSeepList() {
        Map<Long, Float> map = this.mMdlSpeedList;
        if (map != null && !map.isEmpty()) {
            return new ArrayList(this.mMdlSpeedList.values());
        }
        return null;
    }

    @NonNull
    public List<Float> getNetSpeedHistoryData(int i10) {
        try {
            return getSubListToMeetMinSize(new ArrayList(this.mMdlSpeedList.values()), i10);
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public int getNetworkRTTLevel() {
        networkRTTLevelListener networkrttlevellistener = this.mRTTLevelListener;
        if (networkrttlevellistener != null) {
            return networkrttlevellistener.onNetworkLog();
        }
        return -1;
    }

    public int getNetworkRTTMS() {
        networkRTTLevelListener networkrttlevellistener = this.mRTTLevelListener;
        if (networkrttlevellistener != null) {
            return networkrttlevellistener.getNetworkRTTMs();
        }
        return -1;
    }

    @NonNull
    public List<Integer> getRttHistoryData(int i10) {
        return getSubListToMeetMinSize(this.mCatowerRttList, i10);
    }

    @Nullable
    public List<Integer> getRttList() {
        return this.mCatowerRttList;
    }

    @NonNull
    public List<Integer> getRttMsHistoryData(int i10) {
        return getSubListToMeetMinSize(this.mCatowerRttMsList, i10);
    }

    @Nullable
    public List<String> getSignalStrengthList() {
        return this.mSignalStrengthList;
    }

    public synchronized void schedule(@NonNull TimerTask timerTask, int i10) {
        try {
            if (this.mTimer == null) {
                this.mTimer = new Timer(NET_PORTRAIT_DATA);
            }
            Timer timer = this.mTimer;
            if (i10 <= 0) {
                i10 = this.mNetTimerTaskIntervalMs;
            }
            timer.schedule(timerTask, 1000L, i10);
            if (this.mTimerTask == null) {
                MyTimerTask myTimerTask = new MyTimerTask();
                this.mTimerTask = myTimerTask;
                this.mTimer.schedule(myTimerTask, 1000L, this.mNetTimerTaskIntervalMs);
            }
            TTVideoEngineLog.d(TAG, "network timer task scheduled, interval " + this.mNetTimerTaskIntervalMs);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setMaxCount(int i10) {
        if (i10 < 0) {
            return;
        }
        if (i10 < 10) {
            i10 = 10;
        }
        this.mNetLevelMaxCount = i10;
    }

    public void setMinDataSize(int i10) {
        this.mNetMinDataSize = i10;
    }

    public void setNetSpeed(float f10) {
        try {
            Map<Long, Float> map = this.mMdlSpeedList;
            if (map != Collections.EMPTY_MAP) {
                if (map.size() > this.mNetLevelMaxCount) {
                    this.mMdlSpeedList.remove(this.mMdlSpeedList.keySet().iterator().next());
                }
                this.mMdlSpeedList.put(Long.valueOf(System.currentTimeMillis()), Float.valueOf(f10));
            }
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, e10.getMessage());
        }
    }

    public void setNetworkRTTLevelListener(networkRTTLevelListener networkrttlevellistener) {
        this.mRTTLevelListener = networkrttlevellistener;
    }

    public void setSampleInterval(int i10) {
        if (i10 < 0) {
            return;
        }
        if (i10 < 500) {
            i10 = 500;
        }
        this.mNetTimerTaskIntervalMs = i10;
    }

    public synchronized void start() {
        if (this.mNetTimerTaskIntervalMs <= 0) {
            TTVideoEngineLog.e(TAG, "invalid parameter");
            return;
        }
        List<Integer> list = this.mCatowerRttList;
        List<String> list2 = Collections.EMPTY_LIST;
        if (list == list2) {
            this.mCatowerRttList = new ArrayList();
        }
        if (this.mCatowerRttMsList == list2) {
            this.mCatowerRttMsList = new ArrayList();
        }
        if (this.mSignalStrengthList == list2) {
            this.mSignalStrengthList = new ArrayList();
        }
        if (this.mMdlSpeedList == Collections.EMPTY_MAP) {
            this.mMdlSpeedList = new LinkedHashMap();
        }
        TimerTask timerTask = this.mTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
        if (this.mTimer == null) {
            this.mTimer = new Timer(NET_PORTRAIT_DATA);
        }
        MyTimerTask myTimerTask = new MyTimerTask();
        this.mTimerTask = myTimerTask;
        this.mTimer.schedule(myTimerTask, 500L, this.mNetTimerTaskIntervalMs);
        TTVideoEngineLog.d(TAG, "network timer task scheduled, interval " + this.mNetTimerTaskIntervalMs);
    }

    public synchronized void stop() {
        try {
            Timer timer = this.mTimer;
            if (timer != null) {
                timer.cancel();
                this.mTimer = null;
            }
            TimerTask timerTask = this.mTimerTask;
            if (timerTask != null) {
                timerTask.cancel();
                this.mTimerTask = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
