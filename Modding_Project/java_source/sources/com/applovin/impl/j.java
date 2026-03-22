package com.applovin.impl;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.b6;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class j implements AppLovinCommunicatorSubscriber {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8147a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f8148b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashMap f8149c = new a();

    /* renamed from: d  reason: collision with root package name */
    private final Set f8150d = Collections.synchronizedSet(new HashSet());

    /* loaded from: classes2.dex */
    class a extends LinkedHashMap {
        a() {
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry entry) {
            if (size() > 16) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void onCreativeIdGenerated(String str, String str2);
    }

    public j(com.applovin.impl.sdk.k kVar) {
        this.f8147a = kVar;
        if (c()) {
            AppLovinCommunicator.getInstance(com.applovin.impl.sdk.k.o()).subscribe(this, "safedk_ad_info");
        }
    }

    public void b(b bVar) {
        this.f8150d.remove(bVar);
    }

    public void c(String str) {
        this.f8147a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f8147a.O();
            O.a("AdReviewManager", "Removing ad info for serve id: " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f8148b) {
            this.f8149c.remove(str);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return j.class.getSimpleName();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("safedk_ad_info".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle bundle = appLovinCommunicatorMessage.getMessageData().getBundle("public");
            if (bundle == null) {
                this.f8147a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8147a.O().k("AdReviewManager", "Received SafeDK ad info without public data");
                    return;
                }
                return;
            }
            Bundle bundle2 = appLovinCommunicatorMessage.getMessageData().getBundle("private");
            if (bundle2 == null) {
                this.f8147a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8147a.O().k("AdReviewManager", "Received SafeDK ad info without private data");
                }
            } else if (MaxAdFormat.formatFromString(bundle2.getString("ad_format")) == null) {
                this.f8147a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8147a.O().k("AdReviewManager", "Received SafeDK ad info without ad format");
                }
            } else {
                final String string = bundle2.getString("id");
                if (TextUtils.isEmpty(string)) {
                    this.f8147a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f8147a.O().k("AdReviewManager", "Received SafeDK ad info without serve id");
                        return;
                    }
                    return;
                }
                synchronized (this.f8148b) {
                    try {
                        this.f8147a.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o O = this.f8147a.O();
                            O.a("AdReviewManager", "Storing current SafeDK ad info for serve id: " + string + ", public data: " + bundle);
                        }
                        this.f8149c.put(string, bundle);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                final String string2 = bundle.getString("ad_review_creative_id");
                this.f8147a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = this.f8147a.O();
                    O2.a("AdReviewManager", "Received SafeDK ad info with Ad Review creative id: " + string2);
                }
                if (StringUtils.isValidString(string2) && !this.f8150d.isEmpty()) {
                    HashSet hashSet = new HashSet(this.f8150d);
                    this.f8147a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O3 = this.f8147a.O();
                        O3.a("AdReviewManager", "Notifying listeners: " + this.f8150d);
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        final b bVar = (b) it.next();
                        this.f8147a.r0().a((g5) new p6(this.f8147a, "creativeIdGenerated", new Runnable() { // from class: com.applovin.impl.mb
                            @Override // java.lang.Runnable
                            public final void run() {
                                j.this.a(bVar, string, string2);
                            }
                        }), b6.b.OTHER);
                    }
                }
            }
        }
    }

    public static String b() {
        return b(MobileAdsBridge.versionMethodName);
    }

    public Bundle a(String str) {
        Bundle bundle;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f8148b) {
            bundle = (Bundle) this.f8149c.get(str);
        }
        this.f8147a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f8147a.O();
            O.a("AdReviewManager", "Retrieved ad info (" + bundle + ") for serve id: " + str);
        }
        return bundle;
    }

    private static String b(String str) {
        try {
            return (String) Class.forName("com.applovin.quality.AppLovinQualityService").getMethod(str, null).invoke(null, null);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean c() {
        return StringUtils.isValidString(b());
    }

    public void a(b bVar) {
        this.f8150d.add(bVar);
    }

    public static String a() {
        return b("getSdkKey");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar, String str, String str2) {
        this.f8147a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f8147a.O();
            O.a("AdReviewManager", "Notifying Ad Review creative id generated for listener: " + bVar);
        }
        bVar.onCreativeIdGenerated(str, str2);
    }
}
