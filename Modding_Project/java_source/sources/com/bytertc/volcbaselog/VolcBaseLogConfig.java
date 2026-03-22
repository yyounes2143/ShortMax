package com.bytertc.volcbaselog;

import com.unity3d.services.UnityAdsConstants;
/* loaded from: classes3.dex */
public class VolcBaseLogConfig {
    public String logPath = "";
    public int maxLogSize = 100;
    public int singleLogSize = 2;
    public int logExpireTime = 604800;
    public boolean enableThreadLoop = false;
    public boolean enableStdout = true;
    public int logLevel = 2;
    public long interval = UnityAdsConstants.Timeout.INIT_TIMEOUT_MS;
    public String query_url = "";
    public boolean enableLogFile = true;
}
