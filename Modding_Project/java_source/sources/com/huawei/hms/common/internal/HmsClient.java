package com.huawei.hms.common.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.adapter.BaseAdapter;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class HmsClient extends BaseHmsClient implements AnyClient {

    /* loaded from: classes5.dex */
    private static class a implements BaseAdapter.BaseCallBack {

        /* renamed from: a  reason: collision with root package name */
        private final AnyClient.CallBack f22053a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<HmsClient> f22054b;

        a(HmsClient hmsClient, AnyClient.CallBack callBack) {
            this.f22053a = callBack;
            this.f22054b = new WeakReference<>(hmsClient);
        }

        private void a(String str) {
            HmsClient hmsClient = this.f22054b.get();
            if (hmsClient != null) {
                hmsClient.updateSessionId(str);
            }
        }

        private void b(String str, String str2) {
            if (this.f22053a == null) {
                return;
            }
            ResponseHeader responseHeader = new ResponseHeader();
            if (responseHeader.fromJson(str)) {
                HMSLog.i("HmsClient", "receive msg " + responseHeader);
                a(responseHeader.getSessionId());
                this.f22053a.onCallback(responseHeader, str2);
                return;
            }
            this.f22053a.onCallback(new ResponseHeader(1, CommonCode.ErrorCode.ARGUMENTS_INVALID, "response header json error"), new JSONObject().toString());
        }

        private void c(String str, String str2, Parcelable parcelable) {
            if (this.f22053a == null) {
                return;
            }
            ResponseHeader responseHeader = new ResponseHeader();
            if (responseHeader.fromJson(str)) {
                responseHeader.setParcelable(parcelable);
                HMSLog.i("HmsClient", "receive msg " + responseHeader);
                a(responseHeader.getSessionId());
                this.f22053a.onCallback(responseHeader, str2);
                return;
            }
            this.f22053a.onCallback(new ResponseHeader(1, CommonCode.ErrorCode.ARGUMENTS_INVALID, "response header json error"), new JSONObject().toString());
        }

        @Override // com.huawei.hms.adapter.BaseAdapter.BaseCallBack
        public void onComplete(String str, String str2, Parcelable parcelable) {
            if (parcelable == null) {
                b(str, str2);
            } else {
                c(str, str2, parcelable);
            }
        }

        @Override // com.huawei.hms.adapter.BaseAdapter.BaseCallBack
        public void onError(String str) {
            if (this.f22053a == null) {
                return;
            }
            ResponseWrap responseWrap = new ResponseWrap(new ResponseHeader());
            if (responseWrap.fromJson(str)) {
                HMSLog.i("HmsClient", "receive msg " + responseWrap);
                ResponseHeader responseHeader = responseWrap.getResponseHeader();
                a(responseHeader.getSessionId());
                this.f22053a.onCallback(responseHeader, responseWrap.getBody());
                return;
            }
            this.f22053a.onCallback(new ResponseHeader(1, CommonCode.ErrorCode.ARGUMENTS_INVALID, "response header json error"), new JSONObject().toString());
        }
    }

    public HmsClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        super(context, clientSettings, onConnectionFailedListener, connectionCallbacks);
    }

    @Override // com.huawei.hms.common.internal.AnyClient
    public void post(e eVar, String str, AnyClient.CallBack callBack) {
        BaseAdapter baseAdapter;
        if (callBack == null) {
            HMSLog.e("HmsClient", "callback is invalid, discard.");
            return;
        }
        boolean z10 = true;
        if ((eVar instanceof RequestHeader) && str != null) {
            if (!isConnected()) {
                HMSLog.i("HmsClient", "No connection now, the connection status:" + getConnectionStatus());
                if (getConnectionStatus() != 6) {
                    HMSLog.e("HmsClient", "post failed for not connected.");
                    callBack.onCallback(new ResponseHeader(1, CommonCode.ErrorCode.INTERNAL_ERROR, "Not Connected"), new JSONObject().toString());
                    return;
                }
                HMSLog.i("HmsClient", "in timeout-disconnect status, need to bind again.");
                c();
            }
            RequestHeader requestHeader = (RequestHeader) eVar;
            HMSLog.i("HmsClient", "post msg " + requestHeader);
            Activity cpActivity = u().getCpActivity();
            if (cpActivity != null) {
                z10 = false;
            }
            if (z10) {
                HMSLog.i("HmsClient", "Activity is null for " + u().getAppID());
            }
            if (z10) {
                baseAdapter = new BaseAdapter(this);
            } else {
                baseAdapter = new BaseAdapter(this, cpActivity);
            }
            baseAdapter.baseRequest(requestHeader.toJson(), str, requestHeader.getParcelable(), new a(this, callBack));
            return;
        }
        HMSLog.e("HmsClient", "arguments is invalid.");
        callBack.onCallback(new ResponseHeader(1, CommonCode.ErrorCode.ARGUMENTS_INVALID, "Args is invalid"), new JSONObject().toString());
    }

    public void updateSessionId(String str) {
        if (TextUtils.isEmpty(this.f22025e)) {
            this.f22025e = str;
        }
    }
}
