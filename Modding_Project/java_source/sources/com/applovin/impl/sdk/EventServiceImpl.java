package com.applovin.impl.sdk;

import android.content.Intent;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.p6;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.network.d;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class EventServiceImpl implements AppLovinEventService {
    public static final List<String> ALLOW_PRE_INIT_EVENT_TYPES = Arrays.asList("landing", "paused", "resumed", "cf_start", "tos_ok", "gdpr_ok");

    /* renamed from: a  reason: collision with root package name */
    private final k f9508a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f9509b = new AtomicBoolean();

    public EventServiceImpl(k kVar) {
        this.f9508a = kVar;
    }

    private void c(final String str, final Map map, final Map map2) {
        if (map.containsKey("items")) {
            Object obj = map.get("items");
            if (!(obj instanceof List)) {
                a("Invalid 'items' value: expected a list.");
                return;
            }
            for (Object obj2 : (List) obj) {
                if (!(obj2 instanceof Map)) {
                    a("Invalid element in 'items': expected a map.");
                    return;
                }
            }
        }
        b6 r02 = this.f9508a.r0();
        k kVar = this.f9508a;
        r02.a((g5) new p6(kVar, false, "track_event:" + str, new Runnable() { // from class: com.applovin.impl.sdk.z
            @Override // java.lang.Runnable
            public final void run() {
                EventServiceImpl.this.b(str, map, map2);
            }
        }), b6.b.OTHER);
    }

    private String d() {
        return ((String) this.f9508a.a(v4.f10346s0)) + "4.0/pix";
    }

    public void maybeTrackAppOpenEvent() {
        if (this.f9509b.compareAndSet(false, true)) {
            this.f9508a.G().trackEvent("landing");
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        Map<String, ?> map2 = CollectionUtils.map(map);
        map2.put("transaction_id", str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    public void trackEventSynchronously(String str) {
        this.f9508a.O();
        if (o.a()) {
            o O = this.f9508a.O();
            O.a("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        }
        com.applovin.impl.r1 r1Var = new com.applovin.impl.r1(str, new HashMap());
        boolean contains = this.f9508a.c(v4.f10402z0).contains(r1Var.c());
        Map a10 = a(r1Var, true, contains);
        HashMap hashMap = new HashMap(r1Var.d());
        if (((Boolean) this.f9508a.a(v4.f10359t5)).booleanValue() || ((Boolean) this.f9508a.a(v4.f10319o5)).booleanValue()) {
            hashMap.putAll(a10);
            a10 = null;
        }
        this.f9508a.f0().e(com.applovin.impl.sdk.network.d.b().d(d()).a(c()).b(a10).c(hashMap).a(a(r1Var, contains)).c(((Boolean) this.f9508a.a(v4.D5)).booleanValue()).a(((Boolean) this.f9508a.a(v4.f10205a5)).booleanValue()).a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        Map<String, ?> map2 = CollectionUtils.map(map);
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Throwable th2) {
            o.c("AppLovinEventService", "Unable to track in app purchase - invalid purchase intent", th2);
            this.f9508a.E().a("AppLovinEventService", "trackIAP", th2);
        }
        trackEvent("iap", map2);
    }

    private void a(final String str, final Map map) {
        final boolean contains = ALLOW_PRE_INIT_EVENT_TYPES.contains(str);
        this.f9508a.r0().a((g5) new p6(this.f9508a, contains, "submitTrackEventPostback", new Runnable() { // from class: com.applovin.impl.sdk.y
            @Override // java.lang.Runnable
            public final void run() {
                EventServiceImpl.this.a(str, map, contains);
            }
        }), b6.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, Map map, Map map2) {
        Map map3 = CollectionUtils.map("AppLovin-Event", str);
        map3.put("AppLovin-SDK-Name", "AppLovin-MAX");
        d.b d10 = com.applovin.impl.sdk.network.d.b().d(b()).a(a()).a(map3).c(a(str, map, map2)).a(((Boolean) this.f9508a.a(v4.f10205a5)).booleanValue()).a(s4.a.a(((Integer) this.f9508a.a(v4.f10295l5)).intValue())).d(false);
        if (this.f9508a.t0().c()) {
            d10.b(CollectionUtils.map("axon_test_code", "1"));
        }
        this.f9508a.f0().e(d10.a());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, ?> map) {
        trackEvent(str, map, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, ?> map, Map<String, Object> map2) {
        if (TextUtils.isEmpty(str)) {
            a("Unable to track empty event");
        } else if (this.f9508a.c(v4.A0).contains(str)) {
            c(str, map, map2);
        } else {
            a(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Map map, boolean z10) {
        com.applovin.impl.r1 r1Var = new com.applovin.impl.r1(str, map);
        boolean contains = this.f9508a.c(v4.f10402z0).contains(r1Var.c());
        Map a10 = a(r1Var, false, contains);
        HashMap hashMap = new HashMap(r1Var.d());
        if (((Boolean) this.f9508a.a(v4.f10359t5)).booleanValue() || ((Boolean) this.f9508a.a(v4.f10319o5)).booleanValue()) {
            hashMap.putAll(a10);
            a10 = null;
        }
        this.f9508a.f0().e(com.applovin.impl.sdk.network.d.b().d(d()).a(c()).a(a(r1Var, contains)).b(a10).c(hashMap).c(((Boolean) this.f9508a.a(v4.D5)).booleanValue()).a(((Boolean) this.f9508a.a(v4.f10205a5)).booleanValue()).d(z10).a(s4.a.a(((Integer) this.f9508a.a(v4.f10287k5)).intValue())).a());
    }

    private String c() {
        return ((String) this.f9508a.a(v4.f10354t0)) + "4.0/pix";
    }

    private String b() {
        return ((String) this.f9508a.a(v4.f10362u0)) + "v1/app";
    }

    private void a(String str) {
        o.h("AppLovinEventService", str);
        if (k7.c(this.f9508a)) {
            throw new IllegalArgumentException(str);
        }
    }

    private Map a(com.applovin.impl.r1 r1Var, boolean z10, boolean z11) {
        Map a10 = this.f9508a.B().a((Map) null, z10, false);
        a10.put("event_id", r1Var.b());
        a10.put(CampaignEx.JSON_KEY_ST_TS, Long.toString(r1Var.a()));
        if (z11) {
            a10.put(NotificationCompat.CATEGORY_EVENT, r1Var.c());
        } else {
            a10.put(NotificationCompat.CATEGORY_EVENT, "postinstall");
            a10.put("sub_event", r1Var.c());
        }
        return k7.a(a10);
    }

    private Map a(com.applovin.impl.r1 r1Var, boolean z10) {
        HashMap hashMap = new HashMap();
        if (z10) {
            hashMap.put("AppLovin-Event", r1Var.c());
        } else {
            hashMap.put("AppLovin-Event", "postinstall");
            hashMap.put("AppLovin-Sub-Event", r1Var.c());
        }
        return hashMap;
    }

    private Map a(String str, Map map, Map map2) {
        HashMap hashMap = new HashMap();
        com.applovin.impl.r1 r1Var = new com.applovin.impl.r1(str, map);
        hashMap.put("id", r1Var.b());
        hashMap.put("name", r1Var.c());
        hashMap.put("data", r1Var.d());
        hashMap.put("timestamp", com.applovin.impl.h1.a(r1Var.a()));
        Map E = this.f9508a.B().E();
        hashMap.put("app_info", E);
        hashMap.put("device_info", this.f9508a.B().o());
        CollectionUtils.putObjectToStringIfValid("dedupe_id", map2.get("dedupe_id"), hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("connectEventKey", this.f9508a.r());
        CollectionUtils.putStringIfValid("eventId", this.f9508a.F(), hashMap2);
        hashMap2.put("version", AppLovinSdk.VERSION);
        hashMap2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f9508a.j0());
        hashMap2.put("platform", this.f9508a.B().y());
        if (((Boolean) this.f9508a.a(v4.G3)).booleanValue()) {
            CollectionUtils.putStringIfValid("art", this.f9508a.s(), hashMap2);
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("firstVisitTs", E.get("ia_v2"));
        hashMap3.put("lastVisitTs", E.get("last_launch_ms"));
        hashMap3.put("visitCount", E.get("app_launch_count"));
        hashMap3.put("currentVisitStartTs", E.get("alts_ms"));
        hashMap2.put("visitInfo", hashMap3);
        hashMap.put("axon", hashMap2);
        return hashMap;
    }

    private String a() {
        return ((String) this.f9508a.a(v4.f10370v0)) + "v1/app";
    }
}
