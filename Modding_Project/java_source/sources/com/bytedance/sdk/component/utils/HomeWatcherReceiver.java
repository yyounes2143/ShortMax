package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes3.dex */
public class HomeWatcherReceiver extends BroadcastReceiver {
    private oJ oJ;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk();

        void oJ();
    }

    public void oJ(oJ oJVar) {
        this.oJ = oJVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            String action = intent.getAction();
            Log.i("HomeReceiver", "onReceive: action: ".concat(String.valueOf(action)));
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                String stringExtra = intent.getStringExtra("reason");
                Log.i("HomeReceiver", "reason: ".concat(String.valueOf(stringExtra)));
                if ("homekey".equals(stringExtra)) {
                    Log.i("HomeReceiver", "homekey");
                    oJ oJVar = this.oJ;
                    if (oJVar != null) {
                        oJVar.oJ();
                    }
                } else if ("recentapps".equals(stringExtra)) {
                    Log.i("HomeReceiver", "long press home key or activity switch");
                    oJ oJVar2 = this.oJ;
                    if (oJVar2 != null) {
                        oJVar2.ZYk();
                    }
                } else if ("assist".equals(stringExtra)) {
                    Log.i("HomeReceiver", "assist");
                }
            }
        } catch (Throwable unused) {
        }
    }
}
