package com.applovin.impl.sdk;

import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.LinkedList;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private final Queue f9950a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    private final Object f9951b = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f9951b) {
            try {
                if (b() <= 25) {
                    this.f9950a.offer(appLovinAdImpl);
                } else {
                    o.h("AppLovinSdk", "Maximum queue capacity reached - discarding ad...");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int size;
        synchronized (this.f9951b) {
            size = this.f9950a.size();
        }
        return size;
    }

    boolean c() {
        boolean z10;
        synchronized (this.f9951b) {
            if (b() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdImpl d() {
        AppLovinAdImpl appLovinAdImpl;
        synchronized (this.f9951b) {
            appLovinAdImpl = (AppLovinAdImpl) this.f9950a.peek();
        }
        return appLovinAdImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f9951b) {
            this.f9950a.remove(appLovinAdImpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdImpl a() {
        AppLovinAdImpl appLovinAdImpl;
        synchronized (this.f9951b) {
            try {
                appLovinAdImpl = !c() ? (AppLovinAdImpl) this.f9950a.poll() : null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return appLovinAdImpl;
    }
}
