package com.bytedance.sdk.openadsdk.core.act;

import android.content.ComponentName;
import androidx.annotation.NonNull;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
/* loaded from: classes3.dex */
public class ActServiceConnection extends CustomTabsServiceConnection {
    private ZYk mConnectionCallback;

    public ActServiceConnection(ZYk zYk) {
        this.mConnectionCallback = zYk;
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient) {
        ZYk zYk = this.mConnectionCallback;
        if (zYk != null) {
            zYk.oJ(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        ZYk zYk = this.mConnectionCallback;
        if (zYk != null) {
            zYk.oJ();
        }
    }
}
