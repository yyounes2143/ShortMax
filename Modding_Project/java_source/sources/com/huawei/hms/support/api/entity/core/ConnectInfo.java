package com.huawei.hms.support.api.entity.core;

import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.entity.auth.Scope;
import java.util.List;
import wa.a;
/* loaded from: classes5.dex */
public class ConnectInfo implements e {
    @a

    /* renamed from: a  reason: collision with root package name */
    private List<String> f22248a;
    @a

    /* renamed from: b  reason: collision with root package name */
    private List<Scope> f22249b;
    @a

    /* renamed from: c  reason: collision with root package name */
    private String f22250c;
    @a

    /* renamed from: d  reason: collision with root package name */
    private String f22251d;

    public ConnectInfo() {
    }

    public List<String> getApiNameList() {
        return this.f22248a;
    }

    public String getFingerprint() {
        return this.f22250c;
    }

    public List<Scope> getScopeList() {
        return this.f22249b;
    }

    public String getSubAppID() {
        return this.f22251d;
    }

    public void setApiNameList(List<String> list) {
        this.f22248a = list;
    }

    public void setFingerprint(String str) {
        this.f22250c = str;
    }

    public void setScopeList(List<Scope> list) {
        this.f22249b = list;
    }

    public void setSubAppID(String str) {
        this.f22251d = str;
    }

    public ConnectInfo(List<String> list, List<Scope> list2, String str, String str2) {
        this.f22248a = list;
        this.f22249b = list2;
        this.f22250c = str;
        this.f22251d = str2;
    }
}
