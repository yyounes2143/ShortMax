package com.huawei.hms.support.api.entity.core;

import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.entity.auth.Scope;
import java.util.List;
import wa.a;
/* loaded from: classes5.dex */
public class DisconnectInfo implements e {
    @a
    public List<String> apiNameList;
    @a
    public List<Scope> scopeList;

    public DisconnectInfo() {
    }

    public List<String> getApiNameList() {
        return this.apiNameList;
    }

    public List<Scope> getScopeList() {
        return this.scopeList;
    }

    public DisconnectInfo(List<Scope> list, List<String> list2) {
        this.scopeList = list;
        this.apiNameList = list2;
    }
}
