package com.applovin.impl;

import android.content.IntentFilter;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class d5 {

    /* renamed from: a  reason: collision with root package name */
    private final Set f7800a = new HashSet(32);

    /* renamed from: b  reason: collision with root package name */
    private final Object f7801b = new Object();

    public boolean a(String str) {
        synchronized (this.f7801b) {
            try {
                for (e5 e5Var : this.f7800a) {
                    if (str.equals(e5Var.b())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        e5 a10;
        if (!StringUtils.isValidString(str)) {
            return;
        }
        synchronized (this.f7801b) {
            a10 = a(str, appLovinCommunicatorSubscriber);
        }
        if (a10 != null) {
            a10.a(false);
            AppLovinBroadcastManager.unregisterReceiver(a10);
        }
    }

    public boolean a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        if (appLovinCommunicatorSubscriber != null && StringUtils.isValidString(str)) {
            synchronized (this.f7801b) {
                try {
                    e5 a10 = a(str, appLovinCommunicatorSubscriber);
                    if (a10 != null) {
                        com.applovin.impl.sdk.o.h("AppLovinCommunicator", "Attempting to re-subscribe subscriber (" + appLovinCommunicatorSubscriber + ") to topic (" + str + ")");
                        if (!a10.c()) {
                            a10.a(true);
                            AppLovinBroadcastManager.registerReceiver(a10, new IntentFilter(str));
                        }
                        return true;
                    }
                    e5 e5Var = new e5(str, appLovinCommunicatorSubscriber);
                    this.f7800a.add(e5Var);
                    AppLovinBroadcastManager.registerReceiver(e5Var, new IntentFilter(str));
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        com.applovin.impl.sdk.o.h("AppLovinCommunicator", "Unable to subscribe - invalid subscriber (" + appLovinCommunicatorSubscriber + ") or topic (" + str + ")");
        return false;
    }

    private e5 a(String str, AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
        for (e5 e5Var : this.f7800a) {
            if (str.equals(e5Var.b()) && appLovinCommunicatorSubscriber.equals(e5Var.a())) {
                return e5Var;
            }
        }
        return null;
    }
}
