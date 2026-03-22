package com.ss.ttvideoengine.playermetrcis;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.os.PowerManager$OnThermalStatusChangedListener;
import com.ss.ttvideoengine.log.DeviceMonitorUtils;
import com.ss.ttvideoengine.playermetrcis.BatteryListener;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes6.dex */
public class PlayerMetrics {
    private static final String TAG = "PlayerMetrics";
    private static final int cpuOverload = 100;
    private static final int diagnoseInterval = 5;
    private static final int memoryOverload = 800;
    private static final int powerOverload = 1;
    private BatteryListener batteryListener;
    private BatteryMetricsInfo mBatteryMetricsInfo;
    private Context mContext;
    private long mCurDuraiton;
    private ArrayList<DiagnoseInfo> mDiagnoseInfos;
    private long mLastMetricsTime;
    private int mMetricsAbility;
    private int mMetricsInterval;
    private PowerManager$OnThermalStatusChangedListener mThermalListener;
    private ThreadCPU mThreadCPU;
    private DiagnoseResult powResult;
    private static final String[] pcdnNames = {"KSThread", "XYThread", "vdp:vidtask:m"};
    private static final String[] mdlNames = {"MediaLoad", "com.video.mdl.network_manager", "com.video.mdl.network_session"};
    private static ArrayList<String> mTheadList = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class InstanceHolder {
        private static final PlayerMetrics sInstance = new PlayerMetrics();

        private InstanceHolder() {
        }
    }

    private void checkAbility() {
        int i10 = 0;
        if ((this.mMetricsAbility & 2) > 0) {
            if (this.mBatteryMetricsInfo == null) {
                this.mBatteryMetricsInfo = new BatteryMetricsInfo();
            }
            Context context = this.mContext;
            if (context != null && this.batteryListener == null) {
                BatteryListener batteryListener = new BatteryListener(context);
                this.batteryListener = batteryListener;
                batteryListener.register(new BatteryListener.BatteryStateListener() { // from class: com.ss.ttvideoengine.playermetrcis.PlayerMetrics.1
                    @Override // com.ss.ttvideoengine.playermetrcis.BatteryListener.BatteryStateListener
                    public void onStatePowerConnected() {
                        TTVideoEngineLog.i(PlayerMetrics.TAG, "onStatePowerConnected");
                        PlayerMetrics.this.mBatteryMetricsInfo.mStartPowerTime = 0L;
                        PlayerMetrics.this.mBatteryMetricsInfo.mPowerState = 0;
                    }

                    @Override // com.ss.ttvideoengine.playermetrcis.BatteryListener.BatteryStateListener
                    public void onStatePowerDisconnected() {
                        TTVideoEngineLog.i(PlayerMetrics.TAG, "onStatePowerDisconnected");
                        PlayerMetrics.this.mBatteryMetricsInfo.mStartPowerTime = System.currentTimeMillis();
                        PlayerMetrics.this.mBatteryMetricsInfo.mLastBatteryLevel = DeviceMonitorUtils.getPowerCapacity(PlayerMetrics.this.mContext);
                        PlayerMetrics.this.mBatteryMetricsInfo.mPowerState = 1;
                    }
                });
                if (!this.batteryListener.getInitialCharging()) {
                    TTVideoEngineLog.i(TAG, "getInitialCharging");
                    this.mBatteryMetricsInfo.mStartPowerTime = System.currentTimeMillis();
                    this.mBatteryMetricsInfo.mLastBatteryLevel = DeviceMonitorUtils.getPowerCapacity(this.mContext);
                    this.mBatteryMetricsInfo.mPowerState = 0;
                }
            }
        }
        if ((this.mMetricsAbility & 4) > 0) {
            startThermal();
        }
        if ((this.mMetricsAbility & 1) > 0) {
            if (mTheadList == null) {
                mTheadList = new ArrayList<>();
                if ((this.mMetricsAbility & 64) > 0) {
                    int i11 = 0;
                    while (true) {
                        String[] strArr = mdlNames;
                        if (i11 >= strArr.length) {
                            break;
                        }
                        mTheadList.add(strArr[i11]);
                        i11++;
                    }
                }
                if ((this.mMetricsAbility & 128) > 0) {
                    while (true) {
                        String[] strArr2 = pcdnNames;
                        if (i10 >= strArr2.length) {
                            break;
                        }
                        mTheadList.add(strArr2[i10]);
                        i10++;
                    }
                }
            }
            if (this.mThreadCPU == null) {
                ThreadCPU threadCPU = new ThreadCPU();
                this.mThreadCPU = threadCPU;
                threadCPU.initThreadMonitor(mTheadList);
                this.mThreadCPU.refreshStaticThreads();
            }
        }
        synchronized (this) {
            try {
                if (this.powResult == null) {
                    this.powResult = new DiagnoseResult();
                }
                if (this.mDiagnoseInfos == null) {
                    this.mDiagnoseInfos = new ArrayList<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void collectMetrics() {
        BatteryMetricsInfo batteryMetricsInfo;
        BatteryMetricsInfo batteryMetricsInfo2;
        ThreadCPU threadCPU;
        TTVideoEngineLog.d(TAG, "start collectMetrics");
        DiagnoseInfo diagnoseInfo = new DiagnoseInfo();
        if ((this.mMetricsAbility & 1) > 0 && (threadCPU = this.mThreadCPU) != null) {
            threadCPU.refresh();
        }
        if ((this.mMetricsAbility & 2) > 0 && (batteryMetricsInfo2 = this.mBatteryMetricsInfo) != null && batteryMetricsInfo2.mStartPowerTime > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            int powerCapacity = DeviceMonitorUtils.getPowerCapacity(this.mContext);
            long currentTimeMillis2 = System.currentTimeMillis();
            BatteryMetricsInfo batteryMetricsInfo3 = this.mBatteryMetricsInfo;
            int i10 = batteryMetricsInfo3.mLastBatteryLevel;
            if (i10 > 0) {
                batteryMetricsInfo3.mCurrentBatteryUse = powerCapacity - i10;
            } else {
                batteryMetricsInfo3.mCurrentBatteryUse = 0;
            }
            batteryMetricsInfo3.mLastBatteryLevel = powerCapacity;
            diagnoseInfo.mPowerUsage = powerCapacity;
            long j10 = currentTimeMillis2 - batteryMetricsInfo3.mStartPowerTime;
            diagnoseInfo.mPowerUsageTime = j10;
            batteryMetricsInfo3.mTotalPowerTime = j10;
            batteryMetricsInfo3.mStartPowerTime = currentTimeMillis2;
            TTVideoEngineLog.d(TAG, "METRICS_ABILITY_POWER " + this.mBatteryMetricsInfo.mLastBatteryLevel + " costTime: " + (currentTimeMillis2 - currentTimeMillis) + " powertime: " + diagnoseInfo.mPowerUsageTime);
        }
        if ((this.mMetricsAbility & 16) > 0) {
            long currentTimeMillis3 = System.currentTimeMillis();
            int usingMemory = DeviceMonitorUtils.getUsingMemory();
            long currentTimeMillis4 = System.currentTimeMillis();
            diagnoseInfo.mMemUsage = usingMemory;
            TTVideoEngineLog.d(TAG, "METRICS_ABILITY_MEMORY " + usingMemory + " costTime: " + (currentTimeMillis4 - currentTimeMillis3));
        }
        if ((this.mMetricsAbility & 4) > 0 && (batteryMetricsInfo = this.mBatteryMetricsInfo) != null) {
            diagnoseInfo.mCiticalTime = batteryMetricsInfo.getCurCriticalTime();
            diagnoseInfo.mEmergencyTime = this.mBatteryMetricsInfo.getCurEmergencyTime();
        }
        if ((this.mMetricsAbility & 256) > 0) {
            synchronized (this) {
                try {
                    ArrayList<DiagnoseInfo> arrayList = this.mDiagnoseInfos;
                    if (arrayList != null) {
                        arrayList.add(diagnoseInfo);
                    }
                    diagnose();
                } finally {
                }
            }
        }
    }

    private void diagnose() {
        ArrayList<DiagnoseInfo> arrayList = this.mDiagnoseInfos;
        if (arrayList != null && !arrayList.isEmpty() && this.mDiagnoseInfos.size() > 5) {
            diagnoseInternal();
            TTVideoEngineLog.d(TAG, "startDiagnose");
            this.mDiagnoseInfos.remove(0);
        }
    }

    private void diagnoseInternal() {
        DiagnoseResult diagnoseResult = this.powResult;
        if (diagnoseResult != null && this.mDiagnoseInfos != null) {
            diagnoseResult.reset();
            Iterator<DiagnoseInfo> it = this.mDiagnoseInfos.iterator();
            int i10 = 0;
            int i11 = 0;
            while (it.hasNext()) {
                DiagnoseInfo next = it.next();
                if (i10 > 0) {
                    i11 = Math.abs(i10 - next.mPowerUsage);
                }
                DiagnoseResult diagnoseResult2 = this.powResult;
                if (i11 > diagnoseResult2.maxValue) {
                    diagnoseResult2.maxValue = i11;
                }
                if (i11 > 1) {
                    diagnoseResult2.overCount++;
                }
                i10 = next.mPowerUsage;
            }
            if (this.mDiagnoseInfos.size() > 1) {
                ArrayList<DiagnoseInfo> arrayList = this.mDiagnoseInfos;
                this.powResult.avgValue = this.mDiagnoseInfos.get(0).mPowerUsage - arrayList.get(arrayList.size() - 1).mPowerUsage;
            }
        }
    }

    public static PlayerMetrics getInstance() {
        return InstanceHolder.sInstance;
    }

    private void removeThrmal() {
        PowerManager$OnThermalStatusChangedListener powerManager$OnThermalStatusChangedListener;
        Context context = this.mContext;
        if (context != null && this.mThermalListener != null && Build.VERSION.SDK_INT >= 29) {
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null && (powerManager$OnThermalStatusChangedListener = this.mThermalListener) != null) {
                    powerManager.removeThermalStatusListener(powerManager$OnThermalStatusChangedListener);
                    this.mThermalListener = null;
                }
            } catch (Exception e10) {
                TTVideoEngineLog.i(TAG, "thermalError: " + e10);
            }
        }
    }

    private void startThermal() {
        Context context = this.mContext;
        if (context != null && this.mThermalListener == null && Build.VERSION.SDK_INT >= 29) {
            try {
                final PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    TTVideoEngineLog.i(TAG, "start thermal");
                    PowerManager$OnThermalStatusChangedListener powerManager$OnThermalStatusChangedListener = new PowerManager$OnThermalStatusChangedListener() { // from class: com.ss.ttvideoengine.playermetrcis.PlayerMetrics.2
                        public void onThermalStatusChanged(int i10) {
                            if (PlayerMetrics.this.mBatteryMetricsInfo == null) {
                                return;
                            }
                            TTVideoEngineLog.i(PlayerMetrics.TAG, "onThermalStatusChanged " + i10);
                            if (PlayerMetrics.this.mBatteryMetricsInfo != null) {
                                if (i10 == 4) {
                                    PlayerMetrics.this.mBatteryMetricsInfo.mStartCriticalTime = System.currentTimeMillis();
                                } else if (PlayerMetrics.this.mBatteryMetricsInfo.mStartCriticalTime > 0) {
                                    PlayerMetrics.this.mBatteryMetricsInfo.mTotalCriticalTime += System.currentTimeMillis() - PlayerMetrics.this.mBatteryMetricsInfo.mStartCriticalTime;
                                    PlayerMetrics.this.mBatteryMetricsInfo.mStartCriticalTime = 0L;
                                } else {
                                    PlayerMetrics.this.mBatteryMetricsInfo.mStartCriticalTime = 0L;
                                }
                            }
                            if (i10 == 5) {
                                PlayerMetrics.this.mBatteryMetricsInfo.mStartEmergencyTime = System.currentTimeMillis();
                            } else if (PlayerMetrics.this.mBatteryMetricsInfo.mStartEmergencyTime > 0) {
                                PlayerMetrics.this.mBatteryMetricsInfo.mTotalEmergencyTime += System.currentTimeMillis() - PlayerMetrics.this.mBatteryMetricsInfo.mStartEmergencyTime;
                                PlayerMetrics.this.mBatteryMetricsInfo.mStartEmergencyTime = 0L;
                            } else {
                                PlayerMetrics.this.mBatteryMetricsInfo.mStartEmergencyTime = 0L;
                            }
                            PlayerMetrics.this.mBatteryMetricsInfo.mLastThermalState = i10;
                        }
                    };
                    this.mThermalListener = powerManager$OnThermalStatusChangedListener;
                    powerManager.addThermalStatusListener(powerManager$OnThermalStatusChangedListener);
                }
            } catch (Exception e10) {
                TTVideoEngineLog.i(TAG, "thermalError: " + e10);
            }
        }
    }

    public void beginCpuRefresh(String str) {
        ThreadCPU threadCPU;
        int i10 = this.mMetricsAbility;
        if ((i10 & 1) <= 0 || (i10 & 32) <= 0 || (threadCPU = this.mThreadCPU) == null) {
            return;
        }
        threadCPU.refreshSingleThreads(str);
    }

    public int getAbility() {
        return this.mMetricsAbility;
    }

    public Map<String, Object> getMetricsLog() {
        Map<String, Object> playerThreads;
        HashMap hashMap = new HashMap();
        synchronized (this) {
            try {
                DiagnoseResult diagnoseResult = this.powResult;
                if (diagnoseResult != null && diagnoseResult.avgValue > 0) {
                    hashMap.putAll(diagnoseResult.getMetricsInfo("pow"));
                }
                BatteryMetricsInfo batteryMetricsInfo = this.mBatteryMetricsInfo;
                if (batteryMetricsInfo != null) {
                    Map<String, Object> metricsInfo = batteryMetricsInfo.getMetricsInfo(null);
                    TTVideoEngineLog.d(TAG, "getMetricsLog: " + metricsInfo);
                    if (metricsInfo != null && metricsInfo.size() > 0) {
                        hashMap.putAll(metricsInfo);
                    }
                }
                ThreadCPU threadCPU = this.mThreadCPU;
                if (threadCPU != null && (playerThreads = threadCPU.getPlayerThreads()) != null && playerThreads.size() > 0) {
                    hashMap.putAll(playerThreads);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hashMap;
    }

    public void refreshWhenBegin() {
        ThreadCPU threadCPU;
        if ((this.mMetricsAbility & 1024) <= 0 || (threadCPU = this.mThreadCPU) == null) {
            return;
        }
        threadCPU.refreshWhenBegin();
    }

    public void refreshWhenEnd() {
        ThreadCPU threadCPU;
        if ((this.mMetricsAbility & 512) <= 0 || (threadCPU = this.mThreadCPU) == null) {
            return;
        }
        threadCPU.refreshWhenEnd();
    }

    public void setMetricsAbilityOption(int i10) {
        this.mMetricsAbility = i10;
    }

    public void setMetricsIntervalOption(int i10) {
        if (i10 == 0) {
            this.mMetricsInterval = 60;
        } else {
            this.mMetricsInterval = i10;
        }
    }

    public void startMetric(Context context) {
        if (this.mMetricsAbility == 0) {
            return;
        }
        if (this.mContext == null) {
            this.mContext = context.getApplicationContext();
        }
        checkAbility();
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = this.mLastMetricsTime;
        if (j10 == 0) {
            this.mCurDuraiton = 0L;
        } else {
            this.mCurDuraiton += (currentTimeMillis - j10) / 1000;
        }
        this.mLastMetricsTime = currentTimeMillis;
        int i10 = this.mMetricsInterval;
        if (i10 > 0 && this.mCurDuraiton >= i10) {
            this.mCurDuraiton = 0L;
            collectMetrics();
        }
    }

    private PlayerMetrics() {
        this.mContext = null;
        this.mCurDuraiton = 0L;
        this.mLastMetricsTime = 0L;
        this.powResult = null;
        this.mBatteryMetricsInfo = null;
        this.mThermalListener = null;
        this.batteryListener = null;
        this.mDiagnoseInfos = null;
        this.mThreadCPU = null;
        this.mMetricsInterval = 60;
        this.mMetricsAbility = 0;
    }
}
