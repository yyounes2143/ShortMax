package com.bytedance.bdtracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes3.dex */
public class c3 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || "android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()) || "android.net.wifi.STATE_CHANGE".equals(intent.getAction())) {
            t4.f12409b = t4.a(context);
        }
    }
}
