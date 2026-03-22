package com.huawei.hms.support.api.entity.hwid;

import android.content.Intent;
import com.huawei.hms.core.aidl.a;
/* loaded from: classes5.dex */
public abstract class IHwIDRespEntity extends a {
    @wa.a
    private Intent data;
    @wa.a
    private int retCode;

    public Intent getData() {
        return this.data;
    }

    public int getRetCode() {
        return this.retCode;
    }

    public void setData(Intent intent) {
        this.data = intent;
    }

    public void setRetCode(int i10) {
        this.retCode = i10;
    }
}
