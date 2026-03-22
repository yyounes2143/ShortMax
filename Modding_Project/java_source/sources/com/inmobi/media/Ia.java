package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import androidx.webkit.ProxyConfig;
import com.adjust.sdk.Constants;
import com.inmobi.media.Ia;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Ia implements La {

    /* renamed from: a  reason: collision with root package name */
    public final Ha f23739a;

    /* renamed from: b  reason: collision with root package name */
    public final C3085nc f23740b;

    /* renamed from: c  reason: collision with root package name */
    public final String f23741c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f23742d;

    public Ia(Ha ha2, C3085nc c3085nc) {
        this.f23739a = ha2;
        this.f23740b = c3085nc;
        String id2 = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(id2, "toString(...)");
        this.f23741c = id2;
        this.f23742d = new AtomicBoolean(false);
        C2883b5 c2883b5 = Aa.f23471a;
        if (c2883b5 != null) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(this, "listener");
            c2883b5.f23856b.put(id2, new WeakReference(this));
            Iterator it = c2883b5.f23856b.entrySet().iterator();
            while (it.hasNext()) {
                Object next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                if (((WeakReference) ((Map.Entry) next).getValue()).get() == null) {
                    it.remove();
                }
            }
        }
        F3 f32 = Aa.f23472b;
        if (f32 != null) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(this, "listener");
            f32.f23856b.put(id2, new WeakReference(this));
            Iterator it2 = f32.f23856b.entrySet().iterator();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                Intrinsics.checkNotNullExpressionValue(next2, "next(...)");
                if (((WeakReference) ((Map.Entry) next2).getValue()).get() == null) {
                    it2.remove();
                }
            }
        }
    }

    public static final void a(Ia this$0, String json) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(json, "$json");
        this$0.getClass();
        try {
            for (C3274za c3274za : this$0.a(json)) {
                this$0.c(c3274za.f25508e);
                a(c3274za);
            }
        } catch (JSONException unused) {
            a(this$0, (short) 2243);
            Ha ha2 = this$0.f23739a;
            if (ha2 != null) {
                EnumC3077n4[] enumC3077n4Arr = EnumC3077n4.f25050a;
                ((Yb) ha2).a("", -104, "Ping JSON is invalid", System.currentTimeMillis(), 0);
            }
        } catch (Exception e10) {
            a(this$0, (short) 2244);
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        } catch (NoClassDefFoundError e11) {
            a(this$0, (short) 2245);
            S5 s53 = S5.f24132a;
            C2947f2 event = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
    }

    public final void b(final String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue()).execute(new Runnable() { // from class: ub.l0
            @Override // java.lang.Runnable
            public final void run() {
                Ia.a(Ia.this, json);
            }
        });
    }

    public final void c(String priority) {
        C3085nc c3085nc = this.f23740b;
        if (c3085nc != null) {
            Intrinsics.checkNotNullParameter(priority, "priority");
            Map a10 = c3085nc.a();
            a10.put("trigger", priority);
            Oa.a("PingStarted", a10);
        }
    }

    public static void a(C3274za c3274za) {
        Objects.toString(c3274za);
        if (Intrinsics.areEqual(c3274za.f25508e, Constants.HIGH)) {
            C2883b5 c2883b5 = Aa.f23471a;
            if (c2883b5 != null) {
                c2883b5.b(c3274za);
                return;
            }
            return;
        }
        F3 f32 = Aa.f23472b;
        if (f32 != null) {
            f32.b(c3274za);
        }
    }

    public final List a(String str) {
        String host;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = new JSONArray(str);
        if (jSONArray.length() == 0) {
            a(this, (short) 2253);
            Ha ha2 = this.f23739a;
            if (ha2 != null) {
                EnumC3077n4[] enumC3077n4Arr = EnumC3077n4.f25050a;
                ((Yb) ha2).a("", -105, "Ping array is empty", System.currentTimeMillis(), 0);
            }
            return CollectionsKt.n();
        }
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i10);
            if (optJSONObject == null) {
                a(this, (short) 2254);
            } else {
                String optString = optJSONObject.optString("id");
                if (optString != null && !StringsKt.t0(optString)) {
                    String optString2 = optJSONObject.optString("url");
                    if (optString2 != null && !StringsKt.t0(optString2)) {
                        Intrinsics.checkNotNull(optString2);
                        try {
                            URI uri = new URI(optString2);
                            if ((Intrinsics.areEqual(uri.getScheme(), ProxyConfig.MATCH_HTTP) || Intrinsics.areEqual(uri.getScheme(), "https")) && (host = uri.getHost()) != null && !StringsKt.t0(host)) {
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                JSONObject optJSONObject2 = optJSONObject.optJSONObject(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS);
                                if (optJSONObject2 != null) {
                                    Iterator<String> keys = optJSONObject2.keys();
                                    while (keys.hasNext()) {
                                        String next = keys.next();
                                        Intrinsics.checkNotNull(next);
                                        String optString3 = optJSONObject2.optString(next, "");
                                        Intrinsics.checkNotNullExpressionValue(optString3, "optString(...)");
                                        linkedHashMap.put(next, optString3);
                                    }
                                }
                                boolean optBoolean = optJSONObject.optBoolean("allowRedirects", true);
                                String optString4 = optJSONObject.optString(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, Constants.NORMAL);
                                boolean optBoolean2 = optJSONObject.optBoolean("ackRequired", false);
                                Intrinsics.checkNotNull(optString);
                                String str2 = optString4 == null ? Constants.NORMAL : optString4;
                                String str3 = this.f23741c;
                                C3085nc c3085nc = this.f23740b;
                                arrayList.add(new C3274za(optString2, optString, linkedHashMap, optBoolean, str2, optBoolean2, 0, str3, System.currentTimeMillis(), null, c3085nc != null ? c3085nc.f25062a : null));
                            }
                        } catch (Exception unused) {
                        }
                        a(this, (short) 2256);
                        Ha ha3 = this.f23739a;
                        if (ha3 != null) {
                            Intrinsics.checkNotNull(optString);
                            EnumC3077n4[] enumC3077n4Arr2 = EnumC3077n4.f25050a;
                            ((Yb) ha3).a(optString, -102, "Ping url is invalid", System.currentTimeMillis(), 0);
                        }
                    } else {
                        a(this, (short) 2252);
                        Ha ha4 = this.f23739a;
                        if (ha4 != null) {
                            Intrinsics.checkNotNull(optString);
                            EnumC3077n4[] enumC3077n4Arr3 = EnumC3077n4.f25050a;
                            ((Yb) ha4).a(optString, -103, "Ping URL is missing", System.currentTimeMillis(), 0);
                        }
                    }
                } else {
                    a(this, (short) 2255);
                    Ha ha5 = this.f23739a;
                    if (ha5 != null) {
                        Intrinsics.checkNotNull(optString);
                        EnumC3077n4[] enumC3077n4Arr4 = EnumC3077n4.f25050a;
                        ((Yb) ha5).a(optString, -101, "Ping ID is missing", System.currentTimeMillis(), 0);
                    }
                }
            }
        }
        return arrayList;
    }

    public static void a(Ia ia2, short s10) {
        C3085nc c3085nc = ia2.f23740b;
        if (c3085nc != null) {
            Intrinsics.checkNotNullParameter("unknown", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
            Map a10 = c3085nc.a();
            a10.put("errorCode", Short.valueOf(s10));
            a10.put("trigger", "unknown");
            a10.put("retryCount", String.valueOf(0));
            Oa.a("PingFailed", a10);
        }
    }
}
