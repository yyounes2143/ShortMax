package com.huawei.hms.support.api.client;

import android.os.Bundle;
/* loaded from: classes5.dex */
public class BundleResult {

    /* renamed from: a  reason: collision with root package name */
    private int f22240a;

    /* renamed from: b  reason: collision with root package name */
    private Bundle f22241b;

    public BundleResult(int i10, Bundle bundle) {
        this.f22240a = i10;
        this.f22241b = bundle;
    }

    public int getResultCode() {
        return this.f22240a;
    }

    public Bundle getRspBody() {
        return this.f22241b;
    }

    public void setResultCode(int i10) {
        this.f22240a = i10;
    }

    public void setRspBody(Bundle bundle) {
        this.f22241b = bundle;
    }
}
