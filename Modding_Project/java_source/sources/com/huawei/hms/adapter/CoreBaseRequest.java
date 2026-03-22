package com.huawei.hms.adapter;

import android.os.Parcelable;
import com.huawei.hms.core.aidl.e;
import wa.a;
/* loaded from: classes5.dex */
class CoreBaseRequest implements e {
    @a

    /* renamed from: a  reason: collision with root package name */
    private String f21831a;
    @a

    /* renamed from: b  reason: collision with root package name */
    private String f21832b;
    @a

    /* renamed from: c  reason: collision with root package name */
    private Parcelable f21833c;

    public String getJsonHeader() {
        return this.f21832b;
    }

    public String getJsonObject() {
        return this.f21831a;
    }

    public Parcelable getParcelable() {
        return this.f21833c;
    }

    public void setJsonHeader(String str) {
        this.f21832b = str;
    }

    public void setJsonObject(String str) {
        this.f21831a = str;
    }

    public void setParcelable(Parcelable parcelable) {
        this.f21833c = parcelable;
    }
}
