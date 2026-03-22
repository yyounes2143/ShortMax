package com.huawei.hms.api;

import android.os.Bundle;
import com.huawei.hms.core.aidl.DataBuffer;
import com.huawei.hms.core.aidl.c;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.core.aidl.f;
import com.huawei.hms.core.aidl.h;
import com.huawei.hms.support.api.client.AidlApiClient;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.InnerApiClient;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.transport.DatagramTransport;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public class IPCTransport implements DatagramTransport {
    private static final String TAG = "IPCTransport";
    private int apiLevel;
    private final e mEntity;
    private final Class<? extends e> mResponseClass;
    private final String mURI;

    public IPCTransport(String str, e eVar, Class<? extends e> cls) {
        this.mURI = str;
        this.mEntity = eVar;
        this.mResponseClass = cls;
    }

    private int syncCall(ApiClient apiClient, c cVar) {
        if (apiClient instanceof InnerApiClient) {
            DataBuffer dataBuffer = new DataBuffer(this.mURI, ProtocolNegotiate.getInstance().getVersion());
            f a10 = com.huawei.hms.core.aidl.b.a(dataBuffer.f());
            dataBuffer.c(a10.g(this.mEntity, new Bundle()));
            h hVar = new h();
            hVar.c(apiClient.getAppID());
            hVar.d(apiClient.getPackageName());
            hVar.e(61200300);
            hVar.b(((AidlApiClient) apiClient).getApiNameList());
            hVar.f(apiClient.getSessionId());
            hVar.a(this.apiLevel);
            dataBuffer.f22106b = a10.g(hVar, new Bundle());
            try {
                AidlApiClient aidlApiClient = (AidlApiClient) apiClient;
                if (aidlApiClient.getService() == null) {
                    HMSLog.e(TAG, "HuaweiApiClient is not binded to service yet.");
                    return CommonCode.ErrorCode.INTERNAL_ERROR;
                }
                aidlApiClient.getService().c(dataBuffer, cVar);
                return 0;
            } catch (Exception e10) {
                HMSLog.e(TAG, "sync call ex:" + e10);
                return CommonCode.ErrorCode.INTERNAL_ERROR;
            }
        }
        if (apiClient instanceof AidlApiClient) {
            AidlApiClient aidlApiClient2 = (AidlApiClient) apiClient;
            DataBuffer dataBuffer2 = new DataBuffer(this.mURI, ProtocolNegotiate.getInstance().getVersion());
            dataBuffer2.c(com.huawei.hms.core.aidl.b.a(dataBuffer2.f()).g(this.mEntity, new Bundle()));
            try {
                aidlApiClient2.getService().c(dataBuffer2, cVar);
                return 0;
            } catch (Exception e11) {
                HMSLog.e(TAG, "sync call ex:" + e11);
            }
        }
        return CommonCode.ErrorCode.INTERNAL_ERROR;
    }

    @Override // com.huawei.hms.support.api.transport.DatagramTransport
    public final void post(ApiClient apiClient, DatagramTransport.a aVar) {
        send(apiClient, aVar);
    }

    @Override // com.huawei.hms.support.api.transport.DatagramTransport
    public final void send(ApiClient apiClient, DatagramTransport.a aVar) {
        int syncCall = syncCall(apiClient, new IPCCallback(this.mResponseClass, aVar));
        if (syncCall != 0 && aVar != null) {
            aVar.a(syncCall, null);
        }
    }

    public IPCTransport(String str, e eVar, Class<? extends e> cls, int i10) {
        this.mURI = str;
        this.mEntity = eVar;
        this.mResponseClass = cls;
        this.apiLevel = i10;
    }
}
