package com.ss.ttvideoengine.playermetrcis;

import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes6.dex */
public class ThreadInfo {
    public static final int TYPE_MULTI_THREAD = 2;
    public static final int TYPE_PROC = 0;
    public static final int TYPE_SINGLE_THREAD = 1;
    public HashMap<String, Object> mMutiThreadUsage;
    public String pid;
    public String pidName;
    public HashSet<String> pids;
    public long cpuTime = -1;
    public long currentTime = 0;
    public long cpuTimeStart = 0;
    public float cpuUsage = -1.0f;
    public int type = 1;

    public void reset() {
        this.currentTime = 0L;
        this.cpuTimeStart = 0L;
        this.cpuUsage = -1.0f;
        this.cpuTime = 0L;
    }

    public String toString() {
        return "ProcInfo{pidName='" + this.pidName + "', pid=" + this.pid + ", cpuTime=" + this.cpuTime + ", currentTime=" + this.currentTime + '}';
    }
}
