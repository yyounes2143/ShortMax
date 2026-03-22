package com.ss.ttvideoengine.utils;

import com.bytedance.vcloud.strategy.StrategyCenter;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class Inspector {
    private static final String TAG = "Inspector";
    private String mHost;
    private final TTHTTPNetwork mNetworkSession = new TTHTTPNetwork();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Holder {
        private static final Inspector instance = new Inspector();

        private Holder() {
        }
    }

    public static Inspector share() {
        return Holder.instance;
    }

    public String getHost() {
        return this.mHost;
    }

    public void setHost(String str) {
        this.mHost = str;
        if (StrategyHelper.helper().isRunning()) {
            StrategyHelper.helper().getCenter().businessEvent(StrategyCenter.APP_UPDATE_TRACE_HOST, this.mHost);
        }
    }

    public void inspectEvent(String str, JSONObject jSONObject) {
    }
}
