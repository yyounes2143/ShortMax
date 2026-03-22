package com.huawei.hms.activity.internal;

import android.content.Intent;
/* loaded from: classes5.dex */
public class BusResponseResult {

    /* renamed from: a  reason: collision with root package name */
    private Intent f21785a;

    /* renamed from: b  reason: collision with root package name */
    private int f21786b;

    public int getCode() {
        return this.f21786b;
    }

    public Intent getIntent() {
        return this.f21785a;
    }

    public void setCode(int i10) {
        this.f21786b = i10;
    }

    public void setIntent(Intent intent) {
        this.f21785a = intent;
    }
}
