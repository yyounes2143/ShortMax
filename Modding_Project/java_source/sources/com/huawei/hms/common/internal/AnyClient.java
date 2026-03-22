package com.huawei.hms.common.internal;

import com.huawei.hms.core.aidl.e;
/* loaded from: classes5.dex */
public interface AnyClient {

    /* loaded from: classes5.dex */
    public interface CallBack {
        void onCallback(e eVar, String str);
    }

    void connect(int i10);

    void connect(int i10, boolean z10);

    void disconnect();

    int getRequestHmsVersionCode();

    String getSessionId();

    boolean isConnected();

    boolean isConnecting();

    void post(e eVar, String str, CallBack callBack);
}
