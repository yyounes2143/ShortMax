package com.bytedance.sdk.openadsdk.multipro.aidl.oJ;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class Pfn extends oJ {
    private static volatile Pfn ZYk;
    private static final Map<String, RemoteCallbackList<IFullScreenVideoAdInteractionListener>> oJ = Collections.synchronizedMap(new HashMap());

    public static Pfn oJ() {
        if (ZYk == null) {
            synchronized (Pfn.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new Pfn();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeFullVideoCallback(String str, String str2) throws RemoteException {
        oJ(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerFullVideoListener(String str, IFullScreenVideoAdInteractionListener iFullScreenVideoAdInteractionListener) throws RemoteException {
        RemoteCallbackList<IFullScreenVideoAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iFullScreenVideoAdInteractionListener);
        oJ.put(str, remoteCallbackList);
    }

    private synchronized void oJ(String str, String str2) {
        RemoteCallbackList<IFullScreenVideoAdInteractionListener> remoteCallbackList;
        try {
            Map<String, RemoteCallbackList<IFullScreenVideoAdInteractionListener>> map = oJ;
            if (map != null) {
                if ("recycleRes".equals(str2)) {
                    remoteCallbackList = map.remove(str);
                } else {
                    remoteCallbackList = map.get(str);
                }
                if (remoteCallbackList != null) {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    for (int i10 = 0; i10 < beginBroadcast; i10++) {
                        IFullScreenVideoAdInteractionListener broadcastItem = remoteCallbackList.getBroadcastItem(i10);
                        if (broadcastItem != null) {
                            if ("onAdShow".equals(str2)) {
                                broadcastItem.onAdShow();
                            } else if ("onAdClose".equals(str2)) {
                                broadcastItem.onAdClose();
                            } else if ("onAdVideoBarClick".equals(str2)) {
                                broadcastItem.onAdVideoBarClick();
                            } else if ("recycleRes".equals(str2)) {
                                broadcastItem.onDestroy();
                            }
                        }
                    }
                    remoteCallbackList.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackList.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            QSm.oJ("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th2);
        }
    }
}
