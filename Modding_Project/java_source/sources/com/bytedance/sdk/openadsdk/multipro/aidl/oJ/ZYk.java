package com.bytedance.sdk.openadsdk.multipro.aidl.oJ;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.IAppOpenAdInteractionListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private static volatile ZYk ZYk;
    private static final Map<String, RemoteCallbackList<IAppOpenAdInteractionListener>> oJ = Collections.synchronizedMap(new HashMap());

    public static ZYk oJ() {
        if (ZYk == null) {
            synchronized (ZYk.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new ZYk();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeAppOpenAdCallback(String str, String str2) throws RemoteException {
        oJ(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerAppOpenAdListener(String str, IAppOpenAdInteractionListener iAppOpenAdInteractionListener) throws RemoteException {
        RemoteCallbackList<IAppOpenAdInteractionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iAppOpenAdInteractionListener);
        oJ.put(str, remoteCallbackList);
    }

    private synchronized void oJ(String str, String str2) {
        RemoteCallbackList<IAppOpenAdInteractionListener> remoteCallbackList;
        try {
            Map<String, RemoteCallbackList<IAppOpenAdInteractionListener>> map = oJ;
            if (map != null) {
                if ("recycleRes".equals(str2)) {
                    remoteCallbackList = map.remove(str);
                } else {
                    remoteCallbackList = map.get(str);
                }
                if (remoteCallbackList != null) {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    for (int i10 = 0; i10 < beginBroadcast; i10++) {
                        IAppOpenAdInteractionListener broadcastItem = remoteCallbackList.getBroadcastItem(i10);
                        if (broadcastItem != null) {
                            if ("onAdShow".equals(str2)) {
                                broadcastItem.onAdShow();
                            } else if ("onAdClicked".equals(str2)) {
                                broadcastItem.onAdClicked();
                            } else if ("onAdSkip".equals(str2)) {
                                broadcastItem.onAdSkip();
                            } else if ("onAdTimeOver".equals(str2)) {
                                broadcastItem.onAdTimeOver();
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
            QSm.oJ("MultiProcess", "appOpenAd1 method " + str2 + " throws Exception :", th2);
        }
    }
}
