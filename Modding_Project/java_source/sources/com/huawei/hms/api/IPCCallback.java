package com.huawei.hms.api;

import android.os.RemoteException;
import android.text.TextUtils;
import com.huawei.hms.core.aidl.DataBuffer;
import com.huawei.hms.core.aidl.c;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.core.aidl.f;
import com.huawei.hms.core.aidl.i;
import com.huawei.hms.support.api.transport.DatagramTransport;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public class IPCCallback extends c.a {
    private static final String TAG = "IPCCallback";
    private final DatagramTransport.a mCallback;
    private final Class<? extends e> mResponseClass;

    public IPCCallback(Class<? extends e> cls, DatagramTransport.a aVar) {
        this.mResponseClass = cls;
        this.mCallback = aVar;
    }

    @Override // com.huawei.hms.core.aidl.c
    public void call(DataBuffer dataBuffer) throws RemoteException {
        e eVar;
        if (dataBuffer != null && !TextUtils.isEmpty(dataBuffer.f22105a)) {
            f a10 = com.huawei.hms.core.aidl.b.a(dataBuffer.f());
            if (dataBuffer.e() > 0) {
                eVar = newResponseInstance();
                if (eVar != null) {
                    a10.f(dataBuffer.d(), eVar);
                }
            } else {
                eVar = null;
            }
            DatagramTransport.a aVar = this.mCallback;
            if (aVar != null) {
                if (dataBuffer.f22106b != null) {
                    i iVar = new i();
                    a10.f(dataBuffer.f22106b, iVar);
                    this.mCallback.a(iVar.a(), eVar);
                    return;
                }
                aVar.a(0, eVar);
                return;
            }
            return;
        }
        HMSLog.e(TAG, "In call, URI cannot be empty.");
        throw new RemoteException();
    }

    protected e newResponseInstance() {
        Class<? extends e> cls = this.mResponseClass;
        if (cls != null) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException | InstantiationException e10) {
                HMSLog.e(TAG, "In newResponseInstance, instancing exception." + e10.getMessage());
                return null;
            }
        }
        return null;
    }
}
