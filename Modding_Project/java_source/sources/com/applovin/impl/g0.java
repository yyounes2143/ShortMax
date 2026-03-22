package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class g0 implements AppLovinBroadcastManager.Receiver {

    /* renamed from: c  reason: collision with root package name */
    private static final Set f7950c = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private final d7 f7951a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7952b;

    private g0(long j10, final boolean z10, com.applovin.impl.sdk.k kVar, final Runnable runnable) {
        this.f7951a = d7.a(j10, z10, kVar, new Runnable() { // from class: com.applovin.impl.ba
            @Override // java.lang.Runnable
            public final void run() {
                g0.this.a(z10, runnable);
            }
        });
        this.f7952b = kVar;
        f7950c.add(this);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    public long b() {
        return this.f7951a.c();
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f7951a.d();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.f7951a.e();
        }
    }

    public static g0 a(long j10, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        return a(j10, false, kVar, runnable);
    }

    public static g0 a(long j10, boolean z10, com.applovin.impl.sdk.k kVar, Runnable runnable) {
        return new g0(j10, z10, kVar, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10, Runnable runnable) {
        if (!z10) {
            a();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a() {
        this.f7951a.a();
        AppLovinBroadcastManager.unregisterReceiver(this);
        f7950c.remove(this);
    }
}
