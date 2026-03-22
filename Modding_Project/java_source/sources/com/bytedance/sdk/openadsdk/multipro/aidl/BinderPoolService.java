package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.jFA;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.Pfn;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.ba;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.cFZ;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.ex;
/* loaded from: classes3.dex */
public class BinderPoolService extends Service {
    public static volatile boolean oJ;
    private static boolean tB;
    private final Binder ZYk = new oJ();

    /* loaded from: classes3.dex */
    public static class oJ extends IBinderPool.Stub {
        @Override // com.bytedance.sdk.openadsdk.IBinderPool
        public IBinder queryBinder(int i10) throws RemoteException {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return null;
                                }
                                return com.bytedance.sdk.openadsdk.multipro.aidl.oJ.ZYk.oJ();
                            }
                            return ex.oJ();
                        }
                        return ba.ZYk();
                    }
                    return com.bytedance.sdk.openadsdk.multipro.aidl.oJ.tB.oJ();
                }
                return Pfn.oJ();
            }
            return cFZ.oJ();
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.ZYk;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        si.ZYk(getApplicationContext());
        oJ = true;
        if (!tB) {
            jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService.1
                @Override // java.lang.Runnable
                public void run() {
                    PiB.ib().oJ(BinderPoolService.this.getApplicationContext());
                }
            });
        }
        tB = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
