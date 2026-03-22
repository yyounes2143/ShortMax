package com.ss.ttvideoengine;

import android.content.Context;
import android.os.Looper;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes6.dex */
public final class TTVideoEnginePool {
    private static final String TAG = "TTVideoEnginePool";
    private static volatile TTVideoEnginePool instance;
    public final int CORE_POOL_SIZE_UPPER_LIMIT = 0;
    private AtomicInteger corePoolSizeUpperLimit = new AtomicInteger(2);
    private Queue<TTVideoEngine> corePool = new LinkedBlockingQueue();
    private Set<TTVideoEngine> resetingEngines = new HashSet();
    private int refreshingEnginesCount = 0;
    private WeakHashMap<TTVideoEngine, Integer> weakHashOfEngineInUse = new WeakHashMap<>();

    private TTVideoEnginePool() {
    }

    public static TTVideoEnginePool getInstance() {
        if (instance == null) {
            synchronized (TTVideoEnginePool.class) {
                try {
                    if (instance == null) {
                        instance = new TTVideoEnginePool();
                        TTVideoEngineLog.i(TAG, "Construct TTVideoEnginePool");
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public synchronized void doReleaseCoreEnginesAndCodecAsync() {
        while (true) {
            try {
                if (this.resetingEngines.isEmpty() && this.refreshingEnginesCount == 0) {
                    break;
                }
                try {
                    TTVideoEngineLog.i(TAG, "releaseCoreEnginesAndCodecAsync thread enters wait mode. Current resetingEngines.size = " + this.resetingEngines.size() + ", refreshingEnginesCount = " + this.refreshingEnginesCount);
                    wait();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size = this.corePool.size();
        String str = "";
        if (this.corePool.isEmpty()) {
            str = "can not close codecpool because corePool is null";
        } else {
            while (!this.corePool.isEmpty()) {
                TTVideoEngine poll = this.corePool.poll();
                if (this.corePool.isEmpty()) {
                    if (!this.weakHashOfEngineInUse.isEmpty()) {
                        str = "do not close codecpool because weakHashOfEngineInUse is not Empty!";
                    } else if (poll != null) {
                        poll.setIntOption(985, 1);
                        str = "do close codecpool!";
                    }
                }
                if (poll != null) {
                    poll.release();
                }
            }
        }
        TTVideoEngineLog.i(TAG, "releaseCoreEnginesAndCodecAsync finished, corePool.size:" + size + " -> 0, " + str);
    }

    public TTVideoEngine getEngine(Context context, int i10) {
        return getEngine(context, i10, null);
    }

    public int getIntStatus(int i10) {
        if (i10 != 0) {
            return 0;
        }
        return this.corePoolSizeUpperLimit.get();
    }

    public void giveBackEngine(TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine == null) {
            return;
        }
        if (!tTVideoEngine.isPlayerType(0)) {
            TTVideoEngineLog.i(TAG, "giveBackEngine , Engine:" + tTVideoEngine + " released directly, do not manage in Enginepool! ");
            tTVideoEngine.release();
            this.weakHashOfEngineInUse.remove(tTVideoEngine);
            return;
        }
        TTVideoEngineLog.i(TAG, "giveBackEngine Enter， Engine:" + tTVideoEngine);
        synchronized (this) {
            if (!this.resetingEngines.contains(tTVideoEngine) && !this.corePool.contains(tTVideoEngine) && 5 != tTVideoEngine.getIntOption(57)) {
                this.resetingEngines.add(tTVideoEngine);
                tTVideoEngine.resetByPoolSyncPart();
                TTVideoEngineLog.i(TAG, "giveBackEngine，before engine.resetByPoolEngine:" + tTVideoEngine);
                tTVideoEngine.resetByPool();
                return;
            }
            TTVideoEngineLog.i(TAG, "giveBackEngine got canceled! because the engine has already been giveback before! Engine:" + tTVideoEngine);
        }
    }

    public void releaseCoreEngines() {
        synchronized (this) {
            try {
                int size = this.corePool.size();
                while (!this.corePool.isEmpty()) {
                    TTVideoEngine poll = this.corePool.poll();
                    if (poll != null) {
                        poll.release();
                    }
                }
                TTVideoEngineLog.i(TAG, "releaseCoreEngines finished, corePool.size:" + size + " -> 0");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void releaseCoreEnginesAndCodecAsync() {
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.q
            @Override // java.lang.Runnable
            public final void run() {
                TTVideoEnginePool.this.doReleaseCoreEnginesAndCodecAsync();
            }
        });
    }

    public void resetFinish(TTVideoEngine tTVideoEngine) {
        boolean z10;
        int size;
        TTVideoEngineLog.i(TAG, "giveBackEngine resetFinish Enter, Engine:" + tTVideoEngine + ", curLooper:" + Looper.myLooper() + ", corePool.size = " + this.corePool.size());
        synchronized (this) {
            try {
                z10 = true;
                if (this.corePool.size() < this.corePoolSizeUpperLimit.get()) {
                    if (this.corePool.offer(tTVideoEngine)) {
                        TTVideoEngineLog.i(TAG, "giveBackEngine Engine:" + tTVideoEngine + " give back to corePool");
                        z10 = false;
                    } else {
                        TTVideoEngineLog.i(TAG, "giveBackEngine Engine:" + tTVideoEngine + " , Warning:give back to corePool failed!");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            TTVideoEngineLog.d(TAG, "giveBackEngine Engine:" + tTVideoEngine + " need release");
            tTVideoEngine.release();
            TTVideoEngineLog.i(TAG, "giveBackEngine Engine:" + tTVideoEngine + " released by TTVideoEnginePool");
        }
        synchronized (this) {
            TTVideoEngineLog.d(TAG, "giveBackEngine Engine:" + tTVideoEngine + " remove...");
            this.weakHashOfEngineInUse.remove(tTVideoEngine);
            size = this.weakHashOfEngineInUse.size();
            this.resetingEngines.remove(tTVideoEngine);
            notify();
        }
        TTVideoEngineLog.i(TAG, "giveBackEngine resetFinish End, Engine:" + tTVideoEngine + ", corePool.size = " + this.corePool.size() + ", countOfEngineInUse:" + size);
    }

    public void setCorePoolSizeUpperLimit(int i10) {
        this.corePoolSizeUpperLimit.set(i10);
        TTVideoEngineLog.i(TAG, "setCorePoolSizeUpperLimit, size:" + i10);
    }

    public TTVideoEngine getEngine(Context context, int i10, Map map) {
        int size;
        TTVideoEngine poll;
        String str;
        int size2;
        if (i10 != 0) {
            TTVideoEngine tTVideoEngine = new TTVideoEngine(context, i10, map);
            TTVideoEngineLog.i(TAG, "getEngine finished, Engine:" + tTVideoEngine + " ,Type is :" + i10 + " , do not manage in Enginepool! ");
            return tTVideoEngine;
        }
        String str2 = "params is null, ";
        if (map != null) {
            str2 = "params is not null, ";
        }
        synchronized (this) {
            size = this.corePool.size();
            poll = this.corePool.poll();
            this.refreshingEnginesCount++;
        }
        if (poll != null) {
            poll.refreshEnginePara(context, i10, map);
            poll.setStringOption(1205, "get existing from EnginePool");
            str = "get an existing Engine from corePool";
        } else {
            poll = new TTVideoEngine(context, i10, map);
            poll.setStringOption(1205, "new by EnginePool");
            str = "create a new Engine by TTVideoEnginePool";
        }
        synchronized (this) {
            this.weakHashOfEngineInUse.put(poll, 0);
            size2 = this.weakHashOfEngineInUse.size();
            this.refreshingEnginesCount--;
            notify();
        }
        poll.setIntOption(1206, this.corePoolSizeUpperLimit.get());
        poll.setIntOption(1207, size);
        poll.setIntOption(1208, size2);
        TTVideoEngineLog.i(TAG, "getEngine finished, " + str2 + str + ", Engine:  " + poll + ", corePool.size = " + this.corePool.size() + ", countOfEngineInUse:" + size2);
        return poll;
    }
}
