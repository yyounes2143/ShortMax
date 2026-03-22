package com.huawei.hms.support.api.entity.core;

import com.huawei.hms.core.aidl.e;
import wa.a;
/* loaded from: classes5.dex */
public class JosBaseReq implements e {
    @a
    private String channelId;
    @a
    private String cpId;
    @a
    private String hmsSdkVersionName;

    public String getChannelId() {
        return (String) get(this.channelId);
    }

    public String getCpID() {
        return (String) get(this.cpId);
    }

    public String getHmsSdkVersionName() {
        return (String) get(this.hmsSdkVersionName);
    }

    public void setChannelId(String str) {
        this.channelId = str;
    }

    public void setCpID(String str) {
        this.cpId = str;
    }

    public void setHmsSdkVersionName(String str) {
        this.hmsSdkVersionName = str;
    }

    private static <T> T get(T t10) {
        return t10;
    }
}
