package com.bytedance.sdk.openadsdk.multipro.aidl.ZYk;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IDislikeClosedListener;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import com.bytedance.sdk.openadsdk.tB.kkU;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class ZYk extends IDislikeClosedListener.Stub {
    private final String ZYk;
    private final cFZ.oJ oJ;

    public ZYk(String str, cFZ.oJ oJVar) {
        this.ZYk = str;
        this.oJ = oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.IDislikeClosedListener
    public void onItemClickClosed() throws RemoteException {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ZYk.1
            @Override // java.lang.Runnable
            public void run() {
                if (ZYk.this.oJ != null) {
                    ZYk.this.oJ.oJ();
                    kkU.oJ(6, ZYk.this.ZYk);
                }
            }
        });
    }
}
