package com.huawei.hms.support.api.entity.auth;

import com.huawei.hms.core.aidl.e;
import wa.a;
/* loaded from: classes5.dex */
public abstract class AbstractResp implements e {
    @a
    private String errorReason;
    @a
    private int rtnCode = 0;

    public String getErrorReason() {
        return this.errorReason;
    }

    public int getRtnCode() {
        return this.rtnCode;
    }

    public void setErrorReason(String str) {
        this.errorReason = str;
    }

    public void setRtnCode(int i10) {
        this.rtnCode = i10;
    }
}
