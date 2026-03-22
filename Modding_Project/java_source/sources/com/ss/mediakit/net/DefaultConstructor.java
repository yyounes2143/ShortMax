package com.ss.mediakit.net;

import android.os.Handler;
/* loaded from: classes6.dex */
public class DefaultConstructor implements CreateConstructor {
    @Override // com.ss.mediakit.net.CreateConstructor
    public BaseDNS createDns(String str, AVMDLNetClient aVMDLNetClient, int i10, Handler handler) {
        try {
            return new HTTPDNS(str, aVMDLNetClient, i10, handler);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
