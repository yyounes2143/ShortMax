package com.bytedance.sdk.openadsdk.multipro.aidl.oJ;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class cFZ extends oJ {
    private static volatile cFZ ZYk;
    private static final Map<String, RemoteCallbackList<IRewardAdInteractionListener>> oJ = Collections.synchronizedMap(new HashMap());

    public static cFZ oJ() {
        if (ZYk == null) {
            synchronized (cFZ.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new cFZ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeRewardVideoCallback(String str, String str2, boolean z10, int i10, String str3, int i11, String str4) throws RemoteException {
        oJ(str, str2, z10, i10, str3, i11, str4);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerRewardVideoListener(String str, IRewardAdInteractionListener iRewardAdInteractionListener) throws RemoteException {
        RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iRewardAdInteractionListener);
        oJ.put(str, remoteCallbackList);
    }

    private synchronized void oJ(String str, String str2, boolean z10, int i10, String str3, int i11, String str4) {
        RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackList;
        try {
            Map<String, RemoteCallbackList<IRewardAdInteractionListener>> map = oJ;
            if (map != null) {
                if ("recycleRes".equals(str2)) {
                    remoteCallbackList = map.remove(str);
                } else {
                    remoteCallbackList = map.get(str);
                }
                RemoteCallbackList<IRewardAdInteractionListener> remoteCallbackList2 = remoteCallbackList;
                if (remoteCallbackList2 != null) {
                    int beginBroadcast = remoteCallbackList2.beginBroadcast();
                    for (int i12 = 0; i12 < beginBroadcast; i12++) {
                        IRewardAdInteractionListener broadcastItem = remoteCallbackList2.getBroadcastItem(i12);
                        if (broadcastItem != null) {
                            if ("onAdShow".equals(str2)) {
                                broadcastItem.onAdShow();
                            } else if ("onAdClose".equals(str2)) {
                                broadcastItem.onAdClose();
                            } else if ("onAdVideoBarClick".equals(str2)) {
                                broadcastItem.onAdVideoBarClick();
                            } else if ("onRewardVerify".equals(str2)) {
                                broadcastItem.onRewardVerify(z10, i10, str3, i11, str4);
                            } else if ("recycleRes".equals(str2)) {
                                broadcastItem.onDestroy();
                            }
                        }
                    }
                    remoteCallbackList2.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackList2.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            QSm.oJ("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th2);
        }
    }
}
