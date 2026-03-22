package com.applovin.communicator;

import android.content.Context;
import com.applovin.impl.communicator.MessagingServiceImpl;
import com.applovin.impl.d5;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class AppLovinCommunicator {

    /* renamed from: e  reason: collision with root package name */
    private static AppLovinCommunicator f7276e;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f7277f = new Object();

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ int f7278g = 0;

    /* renamed from: a  reason: collision with root package name */
    private k f7279a;

    /* renamed from: b  reason: collision with root package name */
    private o f7280b;

    /* renamed from: c  reason: collision with root package name */
    private final d5 f7281c = new d5();

    /* renamed from: d  reason: collision with root package name */
    private final MessagingServiceImpl f7282d = new MessagingServiceImpl();

    public static AppLovinCommunicator getInstance() {
        return getInstance(k.o());
    }

    public void a(k kVar) {
        this.f7279a = kVar;
        this.f7280b = kVar.O();
        a("Attached SDK instance: " + kVar + "...");
    }

    public AppLovinCommunicatorMessagingService getMessagingService() {
        return this.f7282d;
    }

    public boolean hasSubscriber(String str) {
        return this.f7281c.a(str);
    }

    public boolean respondsToTopic(String str) {
        return this.f7279a.u().a(str);
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        subscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    public String toString() {
        return "AppLovinCommunicator{sdk=" + this.f7279a + '}';
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, String str) {
        unsubscribe(appLovinCommunicatorSubscriber, Collections.singletonList(str));
    }

    @Deprecated
    public static AppLovinCommunicator getInstance(Context context) {
        synchronized (f7277f) {
            try {
                if (f7276e == null) {
                    f7276e = new AppLovinCommunicator();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f7276e;
    }

    public void subscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            if (this.f7281c.a(appLovinCommunicatorSubscriber, str)) {
                this.f7282d.maybeSendStickyMessages(str);
            } else {
                a("Unable to subscribe " + appLovinCommunicatorSubscriber + " to topic: " + str);
            }
        }
    }

    public void unsubscribe(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber, List<String> list) {
        for (String str : list) {
            a("Unsubscribing " + appLovinCommunicatorSubscriber + " from topic: " + str);
            this.f7281c.b(appLovinCommunicatorSubscriber, str);
        }
    }

    private void a(String str) {
        if (this.f7280b == null || !o.a()) {
            return;
        }
        this.f7280b.a("AppLovinCommunicator", str);
    }
}
