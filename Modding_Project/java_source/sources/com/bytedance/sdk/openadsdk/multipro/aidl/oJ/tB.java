package com.bytedance.sdk.openadsdk.multipro.aidl.oJ;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.ICommonPermissionListener;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class tB extends oJ {
    private static volatile tB ZYk;
    private static final HashMap<String, RemoteCallbackList<ICommonPermissionListener>> oJ = new HashMap<>();

    public static tB oJ() {
        if (ZYk == null) {
            synchronized (tB.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void broadcastPermissionListener(String str, String str2) throws RemoteException {
        RemoteCallbackList<ICommonPermissionListener> remove = oJ.remove(str);
        if (remove == null) {
            return;
        }
        int beginBroadcast = remove.beginBroadcast();
        for (int i10 = 0; i10 < beginBroadcast; i10++) {
            ICommonPermissionListener broadcastItem = remove.getBroadcastItem(i10);
            if (broadcastItem != null) {
                if (str2 == null) {
                    broadcastItem.onGranted();
                } else {
                    broadcastItem.onDenied(str2);
                }
            }
        }
        remove.finishBroadcast();
        remove.kill();
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ, com.bytedance.sdk.openadsdk.IListenerManager
    public void registerPermissionListener(String str, ICommonPermissionListener iCommonPermissionListener) throws RemoteException {
        if (iCommonPermissionListener == null) {
            return;
        }
        RemoteCallbackList<ICommonPermissionListener> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(iCommonPermissionListener);
        oJ.put(str, remoteCallbackList);
    }
}
