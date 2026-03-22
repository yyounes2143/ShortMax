package com.huawei.hms.support.api.client;

import com.huawei.hms.core.aidl.d;
import java.util.List;
/* loaded from: classes5.dex */
public interface AidlApiClient extends ApiClient {
    List<String> getApiNameList();

    d getService();
}
