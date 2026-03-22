package com.huawei.hms.support.api.client;

import com.huawei.hms.core.aidl.e;
/* loaded from: classes5.dex */
public abstract class Result implements e {
    private Status status = Status.FAILURE;

    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        if (status == null) {
            return;
        }
        this.status = status;
    }
}
