package com.bytedance.sdk.openadsdk.multipro.aidl.oJ;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.IDislikeClosedListener;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class ex extends oJ {
    private static volatile ex ZYk;
    public static ConcurrentHashMap<String, RemoteCallbackList<IDislikeClosedListener>> oJ = new ConcurrentHashMap<>();

    public static ex oJ() {
        if (ZYk == null) {
            synchronized (ex.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new ex();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void executeDisLikeClosedCallback(String str, String str2) throws RemoteException {
        oJ(str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public synchronized void registerDisLikeClosedListener(String str, IDislikeClosedListener iDislikeClosedListener) throws RemoteException {
        RemoteCallbackList<IDislikeClosedListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iDislikeClosedListener);
        oJ.put(str, remoteCallbackList);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void unregisterDisLikeClosedListener(String str) throws RemoteException {
        if (!TextUtils.isEmpty(str)) {
            oJ.remove(str);
        }
    }

    private synchronized void oJ(String str, String str2) {
        RemoteCallbackList<IDislikeClosedListener> remoteCallbackList;
        try {
            ConcurrentHashMap<String, RemoteCallbackList<IDislikeClosedListener>> concurrentHashMap = oJ;
            if (concurrentHashMap != null && (remoteCallbackList = concurrentHashMap.get(str)) != null) {
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i10 = 0; i10 < beginBroadcast; i10++) {
                    IDislikeClosedListener broadcastItem = remoteCallbackList.getBroadcastItem(i10);
                    if (broadcastItem != null && "onItemClickClosed".equals(str2)) {
                        broadcastItem.onItemClickClosed();
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        } catch (Throwable th2) {
            QSm.oJ("MultiProcess", "dislike '" + str2 + "'  throws Exception :", th2);
        }
    }
}
