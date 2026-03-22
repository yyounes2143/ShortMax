package com.bytedance.sdk.openadsdk.api;

import android.os.Bundle;
import java.util.Map;
/* loaded from: classes3.dex */
public class PAGRequest {
    private Map<String, Object> ZYk;
    private String oJ;
    private Bundle tB = null;

    public final void addNetworkExtrasBundle(Class<?> cls, Bundle bundle) {
        if (this.tB == null) {
            this.tB = new Bundle();
        }
        this.tB.putBundle(cls.getName(), bundle);
    }

    public String getAdString() {
        return this.oJ;
    }

    public Map<String, Object> getExtraInfo() {
        return this.ZYk;
    }

    public Bundle getNetworkExtrasBundle() {
        return this.tB;
    }

    public void setAdString(String str) {
        this.oJ = str;
    }

    public void setExtraInfo(Map<String, Object> map) {
        this.ZYk = map;
    }
}
