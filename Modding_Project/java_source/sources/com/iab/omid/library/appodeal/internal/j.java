package com.iab.omid.library.appodeal.internal;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public class j {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: d  reason: collision with root package name */
    private static j f22632d = new j();

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Context> f22633a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22634b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22635c = false;

    /* loaded from: classes5.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            j jVar;
            boolean z10;
            boolean z11;
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                jVar = j.this;
                z10 = jVar.f22635c;
                z11 = true;
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                jVar = j.this;
                z10 = jVar.f22635c;
                z11 = false;
            } else {
                return;
            }
            jVar.a(z11, z10);
            j.this.f22634b = z11;
        }
    }

    public static j b() {
        return f22632d;
    }

    public void a() {
        KeyguardManager keyguardManager;
        Context context = this.f22633a.get();
        if (context == null || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
            return;
        }
        boolean isDeviceLocked = keyguardManager.isDeviceLocked();
        a(this.f22634b, isDeviceLocked);
        this.f22635c = isDeviceLocked;
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        this.f22633a = new WeakReference<>(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void a(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f22635c || this.f22634b)) {
            return;
        }
        for (com.iab.omid.library.appodeal.adsession.a aVar : c.c().b()) {
            aVar.d().b(z11 || z10);
        }
    }
}
