package com.bytedance.sdk.openadsdk.multipro.aidl.ZYk;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class tB extends IFullScreenVideoAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.oJ.tB.ZYk oJ;

    public tB(com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk) {
        this.oJ = zYk;
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.tB.3
            @Override // java.lang.Runnable
            public void run() {
                if (tB.this.oJ != null) {
                    tB.this.oJ.ZYk();
                }
                tB.this.oJ();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.tB.1
            @Override // java.lang.Runnable
            public void run() {
                if (tB.this.oJ != null) {
                    tB.this.oJ.oJ();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.tB.2
            @Override // java.lang.Runnable
            public void run() {
                if (tB.this.oJ != null) {
                    tB.this.oJ.onAdClicked();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ() {
        this.oJ = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onDestroy() throws RemoteException {
    }
}
