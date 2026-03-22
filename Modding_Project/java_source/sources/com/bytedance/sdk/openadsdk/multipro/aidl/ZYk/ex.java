package com.bytedance.sdk.openadsdk.multipro.aidl.ZYk;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class ex extends IRewardAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJ;

    public ex(com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar) {
        this.oJ = oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ex.3
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.oJ != null) {
                    ex.this.oJ.ZYk();
                }
                ex.this.oJ();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ex.1
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.oJ != null) {
                    ex.this.oJ.oJ();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ex.2
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.oJ != null) {
                    ex.this.oJ.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onRewardVerify(final boolean z10, final int i10, final String str, final int i11, final String str2) throws RemoteException {
        if (this.oJ == null) {
            return;
        }
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ex.4
            @Override // java.lang.Runnable
            public void run() {
                if (ex.this.oJ != null) {
                    ex.this.oJ.oJ(z10, i10, str, i11, str2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ() {
        this.oJ = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onDestroy() throws RemoteException {
    }
}
