package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.Pfn;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.ba;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.cFZ;
import com.bytedance.sdk.openadsdk.multipro.aidl.oJ.ex;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class oJ {
    private static final oJ ZYk = new oJ();
    private IBinderPool oJ;
    private ZYk tB;
    private long ex = 0;
    private final ServiceConnection Pfn = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.oJ.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            ofl.oJ(new so("onServiceConnected") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.oJ.2.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.oJ = IBinderPool.Stub.asInterface(iBinder);
                    try {
                        oJ.this.oJ.asBinder().linkToDeath(oJ.this.f13374ba, 0);
                    } catch (RemoteException e10) {
                        QSm.oJ("TTAD.BinderPool", "onServiceConnected throws :", e10);
                    }
                    System.currentTimeMillis();
                    long unused = oJ.this.ex;
                    if (oJ.this.tB != null) {
                        oJ.this.tB.onServiceConnected();
                    }
                }
            }, 5);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: ba  reason: collision with root package name */
    private final IBinder.DeathRecipient f13374ba = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.oJ.3
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ofl.oJ(new so("binderDied") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.oJ.3.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (oJ.this.oJ.asBinder().isBinderAlive()) {
                            oJ.this.oJ.asBinder().unlinkToDeath(oJ.this.f13374ba, 0);
                        }
                    } catch (Exception e10) {
                        QSm.tB("TTAD.BinderPool", e10.getMessage());
                    }
                    oJ.this.oJ = null;
                    oJ.this.ex();
                }
            }, 5);
        }
    };

    private oJ() {
        ex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            tB();
        }
    }

    public void ZYk() {
        try {
            Context oJ = si.oJ();
            oJ.startService(new Intent(oJ, BinderPoolService.class));
        } catch (Exception unused) {
        }
    }

    public void tB() {
        try {
            Context oJ = si.oJ();
            oJ.bindService(new Intent(oJ, BinderPoolService.class), this.Pfn, 1);
            this.ex = System.currentTimeMillis();
        } catch (Throwable unused) {
        }
    }

    public static oJ oJ() {
        return ZYk;
    }

    public void oJ(ZYk zYk) {
        this.tB = zYk;
        if (this.oJ != null) {
            ofl.oJ(new so("onServiceConnected2") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    if (oJ.this.tB != null) {
                        oJ.this.tB.onServiceConnected();
                    }
                }
            }, 5);
        }
    }

    public IBinder oJ(int i10) {
        try {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                try {
                    IBinderPool iBinderPool = this.oJ;
                    if (iBinderPool != null) {
                        return iBinderPool.queryBinder(i10);
                    }
                    return null;
                } catch (RemoteException e10) {
                    QSm.tB("TTAD.BinderPool", e10.getMessage());
                    HyG.so("queryBinder error");
                    return null;
                }
            } else if (i10 != 0) {
                if (i10 != 1) {
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
                return Pfn.oJ();
            } else {
                return cFZ.oJ();
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
