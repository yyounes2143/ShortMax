package com.applovin.impl;

import android.content.Intent;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class e5 implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b  reason: collision with root package name */
    private final String f7877b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference f7878c;

    /* renamed from: a  reason: collision with root package name */
    private boolean f7876a = true;

    /* renamed from: d  reason: collision with root package name */
    private final Set f7879d = new LinkedHashSet();

    /* renamed from: e  reason: collision with root package name */
    private final Object f7880e = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e5(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        this.f7877b = str;
        this.f7878c = new WeakReference(appLovinCommunicatorSubscriber);
    }

    public AppLovinCommunicatorSubscriber a() {
        return (AppLovinCommunicatorSubscriber) this.f7878c.get();
    }

    public String b() {
        return this.f7877b;
    }

    public boolean c() {
        return this.f7876a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e5)) {
            return false;
        }
        AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber = (AppLovinCommunicatorSubscriber) this.f7878c.get();
        e5 e5Var = (e5) obj;
        AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber2 = (AppLovinCommunicatorSubscriber) e5Var.f7878c.get();
        if (b().equals(e5Var.b())) {
            if (appLovinCommunicatorSubscriber != null) {
                if (appLovinCommunicatorSubscriber.equals(appLovinCommunicatorSubscriber2)) {
                    return true;
                }
            } else if (appLovinCommunicatorSubscriber == appLovinCommunicatorSubscriber2) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f7877b.hashCode();
        AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber = (AppLovinCommunicatorSubscriber) this.f7878c.get();
        int i11 = hashCode * 31;
        if (appLovinCommunicatorSubscriber != null) {
            i10 = appLovinCommunicatorSubscriber.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        boolean z10;
        if (a() == null) {
            com.applovin.impl.sdk.o.h("AppLovinCommunicator", "Message received for GC'd subscriber");
            return;
        }
        CommunicatorMessageImpl communicatorMessageImpl = (CommunicatorMessageImpl) intent;
        synchronized (this.f7880e) {
            try {
                if (!this.f7879d.contains(communicatorMessageImpl.getUniqueId())) {
                    this.f7879d.add(communicatorMessageImpl.getUniqueId());
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            a().onMessageReceived((AppLovinCommunicatorMessage) communicatorMessageImpl);
        }
    }

    public void a(boolean z10) {
        this.f7876a = z10;
    }
}
