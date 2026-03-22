package com.bytedance.sdk.openadsdk.multipro.aidl.ZYk;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class oJ extends IAppOpenAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.oJ.ex.ZYk oJ;

    public oJ(com.bytedance.sdk.openadsdk.oJ.ex.ZYk zYk) {
        this.oJ = zYk;
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdClicked() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.oJ.2
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.oJ();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdSkip() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.ZYk();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onAdTimeOver() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.oJ.4
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.oJ != null) {
                    oJ.this.oJ.tB();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener
    public void onDestroy() throws RemoteException {
        oJ();
    }

    private void oJ() {
        this.oJ = null;
    }
}
