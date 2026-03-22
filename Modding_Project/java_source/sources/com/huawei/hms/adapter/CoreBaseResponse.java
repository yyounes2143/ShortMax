package com.huawei.hms.adapter;

import android.app.PendingIntent;
import android.content.Intent;
import com.huawei.hms.core.aidl.e;
import wa.a;
/* loaded from: classes5.dex */
public class CoreBaseResponse implements e {
    @a

    /* renamed from: a  reason: collision with root package name */
    private String f21834a;
    @a

    /* renamed from: b  reason: collision with root package name */
    private String f21835b;
    @a
    public Intent intent;
    @a
    public PendingIntent pendingIntent;

    public Intent getIntent() {
        return this.intent;
    }

    public String getJsonBody() {
        return this.f21835b;
    }

    public String getJsonHeader() {
        return this.f21834a;
    }

    public PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    public void setIntent(Intent intent) {
        this.intent = intent;
    }

    public void setJsonBody(String str) {
        this.f21835b = str;
    }

    public void setJsonHeader(String str) {
        this.f21834a = str;
    }

    public void setPendingIntent(PendingIntent pendingIntent) {
        this.pendingIntent = pendingIntent;
    }
}
