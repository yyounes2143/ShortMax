package com.apm.insight.runtime.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.apm.insight.runtime.m;
import com.applovin.sdk.AppLovinEventTypes;
import com.ss.texturerender.TextureRenderKeys;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BatteryWatcher.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private int f7166a;

    /* compiled from: BatteryWatcher.java */
    /* loaded from: classes2.dex */
    class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    d.this.f7166a = (int) ((intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, 0) * 100.0f) / intent.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, 100));
                }
            } catch (Throwable unused) {
            }
        }

        /* synthetic */ a(d dVar, byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(final Context context) {
        m.a().a(new Runnable() { // from class: com.apm.insight.runtime.a.d.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    context.registerReceiver(new a(d.this, (byte) 0), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        });
    }

    public final int a() {
        return this.f7166a;
    }
}
