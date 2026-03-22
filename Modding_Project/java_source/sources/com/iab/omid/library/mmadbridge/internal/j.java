package com.iab.omid.library.mmadbridge.internal;

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
    private static j f23032d = new j();

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Context> f23033a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23034b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23035c = false;

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
                z10 = jVar.f23035c;
                z11 = true;
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                jVar = j.this;
                z10 = jVar.f23035c;
                z11 = false;
            } else {
                return;
            }
            jVar.a(z11, z10);
            j.this.f23034b = z11;
        }
    }

    public static j b() {
        return f23032d;
    }

    public void a() {
        Context context = this.f23033a.get();
        if (context == null) {
            return;
        }
        boolean isDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        a(this.f23034b, isDeviceLocked);
        this.f23035c = isDeviceLocked;
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        this.f23033a = new WeakReference<>(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    public void a(boolean z10, boolean z11) {
        if ((z11 || z10) == (this.f23035c || this.f23034b)) {
            return;
        }
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.c().b()) {
            aVar.getAdSessionStatePublisher().b(z11 || z10);
        }
    }
}
