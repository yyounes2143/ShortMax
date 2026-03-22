package com.huawei.hms.support.api.transport;

import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.client.ApiClient;
/* loaded from: classes5.dex */
public interface DatagramTransport {

    /* loaded from: classes5.dex */
    public interface a {
        void a(int i10, e eVar);
    }

    void post(ApiClient apiClient, a aVar);

    void send(ApiClient apiClient, a aVar);
}
