package com.huawei.hms.support.api.entity.hwid;

import com.huawei.hms.support.api.client.Status;
/* loaded from: classes5.dex */
public class InvalidVersionException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private Status f22254a;

    public InvalidVersionException(Status status) {
        this.f22254a = status;
    }

    public Status getError() {
        return this.f22254a;
    }
}
