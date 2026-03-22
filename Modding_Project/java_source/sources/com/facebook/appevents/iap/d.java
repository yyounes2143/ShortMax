package com.facebook.appevents.iap;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: InAppPurchaseBillingClientWrapperV2V4.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class d implements com.facebook.appevents.iap.c {
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static d f15039s;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f15044a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f15045b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Class<?> f15046c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Class<?> f15047d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Class<?> f15048e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Class<?> f15049f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f15050g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Class<?> f15051h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Method f15052i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Method f15053j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final Method f15054k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final Method f15055l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Method f15056m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final Method f15057n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final Method f15058o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final h f15059p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final b f15037q = new b(null);

    /* renamed from: r  reason: collision with root package name */
    private static final String f15038r = d.class.getCanonicalName();
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final AtomicBoolean f15040t = new AtomicBoolean(false);
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private static final Map<String, JSONObject> f15041u = new ConcurrentHashMap();
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final Map<String, JSONObject> f15042v = new ConcurrentHashMap();
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private static final Map<String, JSONObject> f15043w = new ConcurrentHashMap();

    /* compiled from: InAppPurchaseBillingClientWrapperV2V4.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements InvocationHandler {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f15060a;

        public a(@Nullable Runnable runnable) {
            this.f15060a = runnable;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object proxy, @NotNull Method m10, @Nullable Object[] objArr) {
            Object obj;
            Method d10;
            if (o4.a.d(this)) {
                return null;
            }
            try {
                Intrinsics.checkNotNullParameter(proxy, "proxy");
                Intrinsics.checkNotNullParameter(m10, "m");
                if (Intrinsics.areEqual(m10.getName(), "onBillingSetupFinished")) {
                    if (objArr != null) {
                        obj = n.t0(objArr, 0);
                    } else {
                        obj = null;
                    }
                    Class<?> a10 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingResult");
                    if (a10 != null && (d10 = InAppPurchaseUtils.d(a10, "getResponseCode", new Class[0])) != null && Intrinsics.areEqual(InAppPurchaseUtils.e(a10, d10, obj, new Object[0]), (Object) 0)) {
                        d.f15037q.g().set(true);
                        Runnable runnable = this.f15060a;
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                } else {
                    String name = m10.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "m.name");
                    if (StringsKt.F(name, "onBillingServiceDisconnected", false, 2, null)) {
                        d.f15037q.g().set(false);
                    }
                }
                return null;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }
    }

    /* compiled from: InAppPurchaseBillingClientWrapperV2V4.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object a(Context context, Class<?> cls) {
            Object e10;
            Object e11;
            Object e12;
            Class<?> a10 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingClient$Builder");
            Class<?> a11 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchasesUpdatedListener");
            if (a10 == null || a11 == null) {
                return null;
            }
            Method d10 = InAppPurchaseUtils.d(cls, "newBuilder", Context.class);
            Method d11 = InAppPurchaseUtils.d(a10, "enablePendingPurchases", new Class[0]);
            Method d12 = InAppPurchaseUtils.d(a10, "setListener", a11);
            Method d13 = InAppPurchaseUtils.d(a10, "build", new Class[0]);
            if (d10 == null || d11 == null || d12 == null || d13 == null || (e10 = InAppPurchaseUtils.e(cls, d10, null, context)) == null || (e11 = InAppPurchaseUtils.e(a10, d12, e10, Proxy.newProxyInstance(a11.getClassLoader(), new Class[]{a11}, new C0252d()))) == null || (e12 = InAppPurchaseUtils.e(a10, d11, e11, new Object[0])) == null) {
                return null;
            }
            return InAppPurchaseUtils.e(a10, d13, e12, new Object[0]);
        }

        private final d b(Context context) {
            h b10 = h.f15100g.b();
            if (b10 == null) {
                return null;
            }
            Class<?> a10 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingClient");
            Class<?> a11 = InAppPurchaseUtils.a("com.android.billingclient.api.Purchase");
            Class<?> a12 = InAppPurchaseUtils.a("com.android.billingclient.api.Purchase$PurchasesResult");
            Class<?> a13 = InAppPurchaseUtils.a("com.android.billingclient.api.SkuDetails");
            Class<?> a14 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchaseHistoryRecord");
            Class<?> a15 = InAppPurchaseUtils.a("com.android.billingclient.api.SkuDetailsResponseListener");
            Class<?> a16 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchaseHistoryResponseListener");
            if (a10 != null && a12 != null && a11 != null && a13 != null && a15 != null && a14 != null && a16 != null) {
                Method d10 = InAppPurchaseUtils.d(a10, "queryPurchases", String.class);
                Method d11 = InAppPurchaseUtils.d(a12, "getPurchasesList", new Class[0]);
                Method d12 = InAppPurchaseUtils.d(a11, "getOriginalJson", new Class[0]);
                Method d13 = InAppPurchaseUtils.d(a13, "getOriginalJson", new Class[0]);
                Method d14 = InAppPurchaseUtils.d(a14, "getOriginalJson", new Class[0]);
                Method d15 = InAppPurchaseUtils.d(a10, "querySkuDetailsAsync", b10.d(), a15);
                Method d16 = InAppPurchaseUtils.d(a10, "queryPurchaseHistoryAsync", String.class, a16);
                if (d10 != null && d11 != null && d12 != null && d13 != null && d14 != null && d15 != null && d16 != null) {
                    Object a17 = a(context, a10);
                    if (a17 == null) {
                        Log.w(d.l(), "Failed to build a Google Play billing library wrapper for in-app purchase auto-logging");
                        return null;
                    }
                    d.o(new d(a17, a10, a12, a11, a13, a14, a15, a16, d10, d11, d12, d13, d14, d15, d16, b10, null));
                    return d.g();
                }
                Log.w(d.l(), "Failed to create Google Play billing library wrapper for in-app purchase auto-logging");
                return null;
            }
            Log.w(d.l(), "Failed to create Google Play billing library wrapper for in-app purchase auto-logging");
            return null;
        }

        @NotNull
        public final Map<String, JSONObject> c() {
            return d.f();
        }

        @Nullable
        public final synchronized d d(@NotNull Context context) {
            d g10;
            Intrinsics.checkNotNullParameter(context, "context");
            g10 = d.g();
            if (g10 == null) {
                g10 = b(context);
            }
            return g10;
        }

        @NotNull
        public final Map<String, JSONObject> e() {
            return d.j();
        }

        @NotNull
        public final Map<String, JSONObject> f() {
            return d.k();
        }

        @NotNull
        public final AtomicBoolean g() {
            return d.m();
        }

        private b() {
        }
    }

    /* compiled from: InAppPurchaseBillingClientWrapperV2V4.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class c implements InvocationHandler {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private InAppPurchaseUtils.IAPProductType f15061a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private Runnable f15062b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d f15063c;

        public c(@NotNull d dVar, @NotNull InAppPurchaseUtils.IAPProductType skuType, Runnable completionHandler) {
            Intrinsics.checkNotNullParameter(skuType, "skuType");
            Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
            this.f15063c = dVar;
            this.f15061a = skuType;
            this.f15062b = completionHandler;
        }

        public void a(@NotNull Object proxy, @NotNull Method method, @Nullable Object[] objArr) {
            Object obj;
            String str;
            if (o4.a.d(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(proxy, "proxy");
                Intrinsics.checkNotNullParameter(method, "method");
                if (!Intrinsics.areEqual(method.getName(), "onPurchaseHistoryResponse")) {
                    return;
                }
                if (objArr != null) {
                    obj = n.t0(objArr, 1);
                } else {
                    obj = null;
                }
                if (obj != null && (obj instanceof List)) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : (List) obj) {
                        try {
                            Object e10 = InAppPurchaseUtils.e(d.h(this.f15063c), d.d(this.f15063c), obj2, new Object[0]);
                            if (e10 instanceof String) {
                                str = (String) e10;
                            } else {
                                str = null;
                            }
                            if (str != null) {
                                JSONObject jSONObject = new JSONObject(str);
                                if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                                    String skuID = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                                    Intrinsics.checkNotNullExpressionValue(skuID, "skuID");
                                    arrayList.add(skuID);
                                    if (this.f15061a == InAppPurchaseUtils.IAPProductType.INAPP) {
                                        d.f15037q.c().put(skuID, jSONObject);
                                    } else {
                                        d.f15037q.f().put(skuID, jSONObject);
                                    }
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        d.n(this.f15063c, this.f15061a, arrayList, this.f15062b);
                    } else {
                        this.f15062b.run();
                    }
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Method method, Object[] objArr) {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                a(obj, method, objArr);
                return Unit.f60915a;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }
    }

    /* compiled from: InAppPurchaseBillingClientWrapperV2V4.kt */
    @Metadata
    /* renamed from: com.facebook.appevents.iap.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0252d implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object proxy, @NotNull Method m10, @Nullable Object[] objArr) {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                Intrinsics.checkNotNullParameter(proxy, "proxy");
                Intrinsics.checkNotNullParameter(m10, "m");
                return null;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }
    }

    /* compiled from: InAppPurchaseBillingClientWrapperV2V4.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class e implements InvocationHandler {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private Runnable f15064a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f15065b;

        public e(@NotNull d dVar, Runnable completionHandler) {
            Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
            this.f15065b = dVar;
            this.f15064a = completionHandler;
        }

        public void a(@NotNull Object proxy, @NotNull Method m10, @Nullable Object[] objArr) {
            Object obj;
            String str;
            if (o4.a.d(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(proxy, "proxy");
                Intrinsics.checkNotNullParameter(m10, "m");
                if (!Intrinsics.areEqual(m10.getName(), "onSkuDetailsResponse")) {
                    return;
                }
                if (objArr != null) {
                    obj = n.t0(objArr, 1);
                } else {
                    obj = null;
                }
                if (obj != null && (obj instanceof List)) {
                    for (Object obj2 : (List) obj) {
                        try {
                            Object e10 = InAppPurchaseUtils.e(d.i(this.f15065b), d.e(this.f15065b), obj2, new Object[0]);
                            if (e10 instanceof String) {
                                str = (String) e10;
                            } else {
                                str = null;
                            }
                            if (str != null) {
                                JSONObject jSONObject = new JSONObject(str);
                                if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                                    String skuID = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                                    Map<String, JSONObject> e11 = d.f15037q.e();
                                    Intrinsics.checkNotNullExpressionValue(skuID, "skuID");
                                    e11.put(skuID, jSONObject);
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                    this.f15064a.run();
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Method method, Object[] objArr) {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                a(obj, method, objArr);
                return Unit.f60915a;
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }
    }

    public /* synthetic */ d(Object obj, Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Class cls6, Class cls7, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, h hVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, cls, cls2, cls3, cls4, cls5, cls6, cls7, method, method2, method3, method4, method5, method6, method7, hVar);
    }

    public static final /* synthetic */ Method d(d dVar) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return dVar.f15056m;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ Method e(d dVar) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return dVar.f15055l;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ Map f() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f15041u;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ d g() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f15039s;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ Class h(d dVar) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return dVar.f15049f;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ Class i(d dVar) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return dVar.f15048e;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ Map j() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f15043w;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ Map k() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f15042v;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ String l() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f15038r;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ AtomicBoolean m() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f15040t;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final /* synthetic */ void n(d dVar, InAppPurchaseUtils.IAPProductType iAPProductType, List list, Runnable runnable) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            dVar.s(iAPProductType, list, runnable);
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    public static final /* synthetic */ void o(d dVar) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            f15039s = dVar;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    private final void p(Runnable runnable) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (f15040t.get()) {
                runnable.run();
            } else {
                u(runnable);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(d this$0, InAppPurchaseUtils.IAPProductType productType, Runnable completionHandler) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(productType, "$productType");
            Intrinsics.checkNotNullParameter(completionHandler, "$completionHandler");
            InAppPurchaseUtils.e(this$0.f15045b, this$0.f15058o, this$0.q(), productType.getType(), Proxy.newProxyInstance(this$0.f15051h.getClassLoader(), new Class[]{this$0.f15051h}, new c(this$0, productType, completionHandler)));
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    private final void s(final InAppPurchaseUtils.IAPProductType iAPProductType, final List<String> list, final Runnable runnable) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            p(new Runnable() { // from class: y1.h
                @Override // java.lang.Runnable
                public final void run() {
                    com.facebook.appevents.iap.d.t(com.facebook.appevents.iap.d.this, runnable, iAPProductType, list);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(d this$0, Runnable completionHandler, InAppPurchaseUtils.IAPProductType skuType, List skuIDs) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(completionHandler, "$completionHandler");
            Intrinsics.checkNotNullParameter(skuType, "$skuType");
            Intrinsics.checkNotNullParameter(skuIDs, "$skuIDs");
            Object newProxyInstance = Proxy.newProxyInstance(this$0.f15050g.getClassLoader(), new Class[]{this$0.f15050g}, new e(this$0, completionHandler));
            InAppPurchaseUtils.e(this$0.f15045b, this$0.f15057n, this$0.q(), this$0.f15059p.c(skuType, skuIDs), newProxyInstance);
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    private final void u(Runnable runnable) {
        Method d10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            Class<?> a10 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingClientStateListener");
            if (a10 == null || (d10 = InAppPurchaseUtils.d(this.f15045b, "startConnection", a10)) == null) {
                return;
            }
            InAppPurchaseUtils.e(this.f15045b, d10, q(), Proxy.newProxyInstance(a10.getClassLoader(), new Class[]{a10}, new a(runnable)));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // com.facebook.appevents.iap.c
    public void a(@NotNull final InAppPurchaseUtils.IAPProductType productType, @NotNull final Runnable completionHandler) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(productType, "productType");
            Intrinsics.checkNotNullParameter(completionHandler, "completionHandler");
            p(new Runnable() { // from class: y1.g
                @Override // java.lang.Runnable
                public final void run() {
                    com.facebook.appevents.iap.d.r(com.facebook.appevents.iap.d.this, productType, completionHandler);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @NotNull
    public Object q() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f15044a;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private d(Object obj, Class<?> cls, Class<?> cls2, Class<?> cls3, Class<?> cls4, Class<?> cls5, Class<?> cls6, Class<?> cls7, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, h hVar) {
        this.f15044a = obj;
        this.f15045b = cls;
        this.f15046c = cls2;
        this.f15047d = cls3;
        this.f15048e = cls4;
        this.f15049f = cls5;
        this.f15050g = cls6;
        this.f15051h = cls7;
        this.f15052i = method;
        this.f15053j = method2;
        this.f15054k = method3;
        this.f15055l = method4;
        this.f15056m = method5;
        this.f15057n = method6;
        this.f15058o = method7;
        this.f15059p = hVar;
    }
}
