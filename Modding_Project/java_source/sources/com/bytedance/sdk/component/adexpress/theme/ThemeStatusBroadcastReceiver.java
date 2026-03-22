package com.bytedance.sdk.component.adexpress.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ThemeStatusBroadcastReceiver extends BroadcastReceiver {
    private WeakReference<oJ> oJ;

    public void oJ(oJ oJVar) {
        this.oJ = new WeakReference<>(oJVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("theme_status_change", 0);
        WeakReference<oJ> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().onThemeChanged(intExtra);
        }
    }
}
