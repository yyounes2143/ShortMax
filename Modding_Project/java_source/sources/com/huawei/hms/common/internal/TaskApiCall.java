package com.huawei.hms.common.internal;

import android.os.Parcelable;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.support.log.HMSLog;
import ua.a;
import ua.g;
/* loaded from: classes5.dex */
public abstract class TaskApiCall<ClientT extends AnyClient, ResultT> {

    /* renamed from: a  reason: collision with root package name */
    private final String f22092a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22093b;

    /* renamed from: c  reason: collision with root package name */
    private Parcelable f22094c;

    /* renamed from: d  reason: collision with root package name */
    private String f22095d;

    /* renamed from: e  reason: collision with root package name */
    private int f22096e;

    @Deprecated
    public TaskApiCall(String str, String str2) {
        this.f22096e = 1;
        this.f22092a = str;
        this.f22093b = str2;
        this.f22094c = null;
        this.f22095d = null;
    }

    protected abstract void a(ClientT clientt, ResponseErrorCode responseErrorCode, String str, g<ResultT> gVar);

    public int getApiLevel() {
        return this.f22096e;
    }

    @Deprecated
    public int getMinApkVersion() {
        return 30000000;
    }

    public Parcelable getParcelable() {
        return this.f22094c;
    }

    public String getRequestJson() {
        return this.f22093b;
    }

    public a getToken() {
        return null;
    }

    public String getTransactionId() {
        return this.f22095d;
    }

    public String getUri() {
        return this.f22092a;
    }

    public final void onResponse(ClientT clientt, ResponseErrorCode responseErrorCode, String str, g<ResultT> gVar) {
        HMSLog.i("TaskApiCall", "doExecute, uri:" + this.f22092a + ", errorCode:" + responseErrorCode.getErrorCode() + ", transactionId:" + this.f22095d);
        a(clientt, responseErrorCode, str, gVar);
    }

    public void setApiLevel(int i10) {
        this.f22096e = i10;
    }

    public void setParcelable(Parcelable parcelable) {
        this.f22094c = parcelable;
    }

    public void setTransactionId(String str) {
        this.f22095d = str;
    }

    public TaskApiCall(String str, String str2, String str3) {
        this.f22096e = 1;
        this.f22092a = str;
        this.f22093b = str2;
        this.f22094c = null;
        this.f22095d = str3;
    }

    public TaskApiCall(String str, String str2, String str3, int i10) {
        this.f22092a = str;
        this.f22093b = str2;
        this.f22094c = null;
        this.f22095d = str3;
        this.f22096e = i10;
    }

    public void setToken(a aVar) {
    }
}
