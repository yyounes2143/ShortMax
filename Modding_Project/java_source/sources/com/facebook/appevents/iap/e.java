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
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: InAppPurchaseBillingClientWrapperV5V7.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class e implements c {
    @Nullable
    private static e Q;
    @NotNull
    private final Method A;
    @NotNull
    private final Method B;
    @NotNull
    private final Method C;
    @NotNull
    private final Method D;
    @NotNull
    private final Method E;
    @NotNull
    private final Method F;
    @NotNull
    private final Method G;
    @NotNull
    private final Method H;
    @NotNull
    private final Method I;
    @NotNull
    private final Method J;
    @NotNull
    private final Method K;
    @NotNull
    private final Method L;
    @NotNull
    private final Method M;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f15066a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f15067b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Class<?> f15068c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Class<?> f15069d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Class<?> f15070e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Class<?> f15071f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f15072g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Class<?> f15073h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Class<?> f15074i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Class<?> f15075j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final Class<?> f15076k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final Class<?> f15077l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Class<?> f15078m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final Class<?> f15079n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final Class<?> f15080o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final Class<?> f15081p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final Class<?> f15082q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final Class<?> f15083r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final Method f15084s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final Method f15085t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final Method f15086u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final Method f15087v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final Method f15088w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final Method f15089x;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final Method f15090y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private final Method f15091z;
    @NotNull
    public static final a N = new a(null);
    private static final String O = e.class.getCanonicalName();
    @NotNull
    private static final AtomicBoolean P = new AtomicBoolean(false);
    @NotNull
    private static final Map<String, JSONObject> R = new ConcurrentHashMap();
    @NotNull
    private static final Map<String, JSONObject> S = new ConcurrentHashMap();
    @NotNull
    private static final Map<String, JSONObject> T = new ConcurrentHashMap();

    /* compiled from: InAppPurchaseBillingClientWrapperV5V7.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements InvocationHandler {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object a(Context context, Class<?> cls, Class<?> cls2, Class<?> cls3) {
            Object e10;
            Method d10 = InAppPurchaseUtils.d(cls, "newBuilder", Context.class);
            Method d11 = InAppPurchaseUtils.d(cls2, "setListener", cls3);
            Method d12 = InAppPurchaseUtils.d(cls2, "enablePendingPurchases", new Class[0]);
            Method d13 = InAppPurchaseUtils.d(cls2, "build", new Class[0]);
            if (d13 == null || d11 == null || d10 == null || d12 == null || (e10 = InAppPurchaseUtils.e(cls2, d11, InAppPurchaseUtils.e(cls, d10, null, context), Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, this))) == null) {
                return null;
            }
            return InAppPurchaseUtils.e(cls2, d13, InAppPurchaseUtils.e(cls2, d12, e10, new Object[0]), new Object[0]);
        }

        private final e b(Context context) {
            Class<?> a10 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingClient");
            Class<?> a11 = InAppPurchaseUtils.a("com.android.billingclient.api.Purchase");
            Class<?> a12 = InAppPurchaseUtils.a("com.android.billingclient.api.ProductDetails");
            Class<?> a13 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchaseHistoryRecord");
            Class<?> a14 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryProductDetailsParams$Product");
            Class<?> a15 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingResult");
            Class<?> a16 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryProductDetailsParams");
            Class<?> a17 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryPurchaseHistoryParams");
            Class<?> a18 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryPurchasesParams");
            Class<?> a19 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryProductDetailsParams$Builder");
            Class<?> a20 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryPurchaseHistoryParams$Builder");
            Class<?> a21 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryPurchasesParams$Builder");
            Class<?> a22 = InAppPurchaseUtils.a("com.android.billingclient.api.QueryProductDetailsParams$Product$Builder");
            Class<?> a23 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingClient$Builder");
            Class<?> a24 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchasesUpdatedListener");
            Class<?> a25 = InAppPurchaseUtils.a("com.android.billingclient.api.BillingClientStateListener");
            Class<?> a26 = InAppPurchaseUtils.a("com.android.billingclient.api.ProductDetailsResponseListener");
            Class<?> a27 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchasesResponseListener");
            Class<?> a28 = InAppPurchaseUtils.a("com.android.billingclient.api.PurchaseHistoryResponseListener");
            if (a10 != null && a11 != null && a12 != null && a13 != null && a14 != null && a15 != null && a16 != null && a17 != null && a18 != null && a19 != null && a20 != null && a21 != null && a22 != null && a23 != null && a24 != null && a25 != null && a26 != null && a27 != null && a28 != null) {
                Method d10 = InAppPurchaseUtils.d(a10, "queryPurchasesAsync", a18, a27);
                Method d11 = InAppPurchaseUtils.d(a18, "newBuilder", new Class[0]);
                Method d12 = InAppPurchaseUtils.d(a21, "build", new Class[0]);
                Method d13 = InAppPurchaseUtils.d(a21, "setProductType", String.class);
                Method d14 = InAppPurchaseUtils.d(a11, "getOriginalJson", new Class[0]);
                Method d15 = InAppPurchaseUtils.d(a10, "queryPurchaseHistoryAsync", a17, a28);
                Method d16 = InAppPurchaseUtils.d(a17, "newBuilder", new Class[0]);
                Method d17 = InAppPurchaseUtils.d(a20, "build", new Class[0]);
                Method d18 = InAppPurchaseUtils.d(a20, "setProductType", String.class);
                Method d19 = InAppPurchaseUtils.d(a13, "getOriginalJson", new Class[0]);
                Method d20 = InAppPurchaseUtils.d(a10, "queryProductDetailsAsync", a16, a26);
                Method d21 = InAppPurchaseUtils.d(a16, "newBuilder", new Class[0]);
                Method d22 = InAppPurchaseUtils.d(a19, "build", new Class[0]);
                Method d23 = InAppPurchaseUtils.d(a19, "setProductList", List.class);
                Method d24 = InAppPurchaseUtils.d(a14, "newBuilder", new Class[0]);
                Method d25 = InAppPurchaseUtils.d(a22, "build", new Class[0]);
                Method d26 = InAppPurchaseUtils.d(a22, "setProductId", String.class);
                Method d27 = InAppPurchaseUtils.d(a22, "setProductType", String.class);
                Method d28 = InAppPurchaseUtils.d(a12, "toString", new Class[0]);
                Method d29 = InAppPurchaseUtils.d(a10, "startConnection", a25);
                Method d30 = InAppPurchaseUtils.d(a15, "getResponseCode", new Class[0]);
                if (d10 != null && d11 != null && d12 != null && d13 != null && d14 != null && d15 != null && d16 != null && d17 != null && d18 != null && d19 != null && d20 != null && d21 != null && d22 != null && d23 != null && d24 != null && d25 != null && d26 != null && d27 != null && d28 != null && d29 != null && d30 != null) {
                    Object a29 = a(context, a10, a23, a24);
                    if (a29 == null) {
                        Log.w(e.h(), "Failed to build a Google Play billing library wrapper for in-app purchase auto-logging");
                        return null;
                    }
                    e.n(new e(a29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a25, a26, a27, a28, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, null));
                    return e.e();
                }
                Log.w(e.h(), "Failed to create Google Play billing library wrapper for in-app purchase auto-logging");
                return null;
            }
            Log.w(e.h(), "Failed to create Google Play billing library wrapper for in-app purchase auto-logging");
            return null;
        }

        @NotNull
        public final Map<String, JSONObject> c() {
            return e.d();
        }

        @Nullable
        public final synchronized e d(@NotNull Context context) {
            e e10;
            Intrinsics.checkNotNullParameter(context, "context");
            e10 = e.e();
            if (e10 == null) {
                e10 = b(context);
            }
            return e10;
        }

        @NotNull
        public final Map<String, JSONObject> e() {
            return e.f();
        }

        @NotNull
        public final Map<String, JSONObject> f() {
            return e.g();
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object proxy, @NotNull Method m10, @Nullable Object[] objArr) {
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            Intrinsics.checkNotNullParameter(m10, "m");
            return null;
        }

        private a() {
        }
    }

    /* compiled from: InAppPurchaseBillingClientWrapperV5V7.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class b implements InvocationHandler {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Object[] f15092a;

        public b(@Nullable Object[] objArr) {
            this.f15092a = objArr;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object proxy, @NotNull Method m10, @Nullable Object[] objArr) {
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            Intrinsics.checkNotNullParameter(m10, "m");
            String name = m10.getName();
            if (name != null) {
                switch (name.hashCode()) {
                    case -1642587947:
                        if (name.equals("onPurchaseHistoryResponse")) {
                            e.l(e.this, this.f15092a, objArr);
                            return null;
                        }
                        return null;
                    case -1599362358:
                        if (name.equals("onQueryPurchasesResponse")) {
                            e.m(e.this, this.f15092a, objArr);
                            return null;
                        }
                        return null;
                    case -79406125:
                        if (name.equals("onBillingSetupFinished")) {
                            e.j(e.this, this.f15092a, objArr);
                            return null;
                        }
                        return null;
                    case 1227540564:
                        if (name.equals("onBillingServiceDisconnected")) {
                            e.i(e.this, this.f15092a, objArr);
                            return null;
                        }
                        return null;
                    case 1940131955:
                        if (name.equals("onProductDetailsResponse")) {
                            e.k(e.this, this.f15092a, objArr);
                            return null;
                        }
                        return null;
                    default:
                        return null;
                }
            }
            return null;
        }
    }

    public /* synthetic */ e(Object obj, Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Class cls6, Class cls7, Class cls8, Class cls9, Class cls10, Class cls11, Class cls12, Class cls13, Class cls14, Class cls15, Class cls16, Class cls17, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, Method method8, Method method9, Method method10, Method method11, Method method12, Method method13, Method method14, Method method15, Method method16, Method method17, Method method18, Method method19, Method method20, Method method21, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, cls, cls2, cls3, cls4, cls5, cls6, cls7, cls8, cls9, cls10, cls11, cls12, cls13, cls14, cls15, cls16, cls17, method, method2, method3, method4, method5, method6, method7, method8, method9, method10, method11, method12, method13, method14, method15, method16, method17, method18, method19, method20, method21);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(e this$0, InAppPurchaseUtils.IAPProductType productType, Runnable completionHandler) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(productType, "$productType");
            Intrinsics.checkNotNullParameter(completionHandler, "$completionHandler");
            InAppPurchaseUtils.e(this$0.f15067b, this$0.f15089x, this$0.p(), this$0.s(productType), Proxy.newProxyInstance(this$0.f15083r.getClassLoader(), new Class[]{this$0.f15083r}, new b(new Object[]{productType, completionHandler})));
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    private final void B(Runnable runnable) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            InAppPurchaseUtils.e(this.f15067b, this.L, p(), Proxy.newProxyInstance(this.f15080o.getClassLoader(), new Class[]{this.f15080o}, new b(new Object[]{runnable})));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final /* synthetic */ Map d() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return R;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final /* synthetic */ e e() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return Q;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final /* synthetic */ Map f() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return T;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final /* synthetic */ Map g() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return S;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final /* synthetic */ String h() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            return O;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final /* synthetic */ void i(e eVar, Object[] objArr, Object[] objArr2) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            eVar.t(objArr, objArr2);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final /* synthetic */ void j(e eVar, Object[] objArr, Object[] objArr2) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            eVar.u(objArr, objArr2);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final /* synthetic */ void k(e eVar, Object[] objArr, Object[] objArr2) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            eVar.v(objArr, objArr2);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final /* synthetic */ void l(e eVar, Object[] objArr, Object[] objArr2) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            eVar.w(objArr, objArr2);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final /* synthetic */ void m(e eVar, Object[] objArr, Object[] objArr2) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            eVar.x(objArr, objArr2);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final /* synthetic */ void n(e eVar) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Q = eVar;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    private final void o(Runnable runnable) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (P.get()) {
                runnable.run();
            } else {
                B(runnable);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final Object r(InAppPurchaseUtils.IAPProductType iAPProductType, List<String> list) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            if (list.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                Object e10 = InAppPurchaseUtils.e(this.f15079n, this.H, InAppPurchaseUtils.e(this.f15079n, this.J, InAppPurchaseUtils.e(this.f15079n, this.I, InAppPurchaseUtils.e(this.f15071f, this.G, null, new Object[0]), str), iAPProductType.getType()), new Object[0]);
                if (e10 != null) {
                    arrayList.add(e10);
                }
            }
            return InAppPurchaseUtils.e(this.f15076k, this.E, InAppPurchaseUtils.e(this.f15076k, this.F, InAppPurchaseUtils.e(this.f15073h, this.D, null, new Object[0]), arrayList), new Object[0]);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final Object s(InAppPurchaseUtils.IAPProductType iAPProductType) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return InAppPurchaseUtils.e(this.f15077l, this.f15091z, InAppPurchaseUtils.e(this.f15077l, this.A, InAppPurchaseUtils.e(this.f15074i, this.f15090y, null, new Object[0]), iAPProductType.getType()), new Object[0]);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final void t(Object[] objArr, Object[] objArr2) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            P.set(false);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void u(Object[] objArr, Object[] objArr2) {
        Runnable runnable;
        if (!o4.a.d(this) && objArr2 != null) {
            try {
                if (objArr2.length != 0) {
                    if (Intrinsics.areEqual(InAppPurchaseUtils.e(this.f15072g, this.M, objArr2[0], new Object[0]), (Object) 0)) {
                        P.set(true);
                        if (objArr != null && objArr.length != 0) {
                            Object obj = objArr[0];
                            if ((obj instanceof Runnable) && (runnable = (Runnable) obj) != null) {
                                runnable.run();
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    private final void v(Object[] objArr, Object[] objArr2) {
        Object t02;
        Object obj;
        String str;
        String q10;
        if (o4.a.d(this)) {
            return;
        }
        if (objArr != null) {
            try {
                t02 = n.t0(objArr, 0);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return;
            }
        } else {
            t02 = null;
        }
        if (objArr2 != null) {
            obj = n.t0(objArr2, 1);
        } else {
            obj = null;
        }
        if (obj != null && (obj instanceof List)) {
            for (Object obj2 : (List) obj) {
                try {
                    Object e10 = InAppPurchaseUtils.e(this.f15069d, this.K, obj2, new Object[0]);
                    if (e10 instanceof String) {
                        str = (String) e10;
                    } else {
                        str = null;
                    }
                    if (str != null && (q10 = q(str)) != null) {
                        JSONObject jSONObject = new JSONObject(q10);
                        if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                            String productId = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                            Map<String, JSONObject> map = T;
                            Intrinsics.checkNotNullExpressionValue(productId, "productId");
                            map.put(productId, jSONObject);
                        }
                    }
                } catch (Exception unused) {
                }
            }
            if (t02 != null && (t02 instanceof Runnable)) {
                ((Runnable) t02).run();
            }
        }
    }

    private final void w(Object[] objArr, Object[] objArr2) {
        Object t02;
        Object obj;
        String str;
        if (o4.a.d(this)) {
            return;
        }
        if (objArr != null) {
            try {
                t02 = n.t0(objArr, 0);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return;
            }
        } else {
            t02 = null;
        }
        if (t02 != null && (t02 instanceof InAppPurchaseUtils.IAPProductType)) {
            Object t03 = n.t0(objArr, 1);
            if (!(t03 instanceof Runnable)) {
                return;
            }
            if (objArr2 != null) {
                obj = n.t0(objArr2, 1);
            } else {
                obj = null;
            }
            if (obj != null && (obj instanceof List)) {
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    try {
                        Object e10 = InAppPurchaseUtils.e(this.f15070e, this.B, obj2, new Object[0]);
                        if (e10 instanceof String) {
                            str = (String) e10;
                        } else {
                            str = null;
                        }
                        if (str != null) {
                            JSONObject jSONObject = new JSONObject(str);
                            if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                                String productId = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                                if (!T.containsKey(productId)) {
                                    Intrinsics.checkNotNullExpressionValue(productId, "productId");
                                    arrayList.add(productId);
                                }
                                if (t02 == InAppPurchaseUtils.IAPProductType.INAPP) {
                                    Map<String, JSONObject> map = R;
                                    Intrinsics.checkNotNullExpressionValue(productId, "productId");
                                    map.put(productId, jSONObject);
                                } else {
                                    Map<String, JSONObject> map2 = S;
                                    Intrinsics.checkNotNullExpressionValue(productId, "productId");
                                    map2.put(productId, jSONObject);
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                if (!arrayList.isEmpty()) {
                    y((InAppPurchaseUtils.IAPProductType) t02, arrayList, (Runnable) t03);
                } else {
                    ((Runnable) t03).run();
                }
            }
        }
    }

    private final void x(Object[] objArr, Object[] objArr2) {
        Object t02;
        Object obj;
        String str;
        if (o4.a.d(this)) {
            return;
        }
        if (objArr != null) {
            try {
                t02 = n.t0(objArr, 0);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return;
            }
        } else {
            t02 = null;
        }
        if (t02 != null && (t02 instanceof InAppPurchaseUtils.IAPProductType)) {
            Object t03 = n.t0(objArr, 1);
            if (!(t03 instanceof Runnable)) {
                return;
            }
            if (objArr2 != null) {
                obj = n.t0(objArr2, 1);
            } else {
                obj = null;
            }
            if (obj != null && (obj instanceof List)) {
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    Object e10 = InAppPurchaseUtils.e(this.f15068c, this.f15088w, obj2, new Object[0]);
                    if (e10 instanceof String) {
                        str = (String) e10;
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                            String productId = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                            if (!T.containsKey(productId)) {
                                Intrinsics.checkNotNullExpressionValue(productId, "productId");
                                arrayList.add(productId);
                            }
                            if (t02 == InAppPurchaseUtils.IAPProductType.INAPP) {
                                Map<String, JSONObject> map = R;
                                Intrinsics.checkNotNullExpressionValue(productId, "productId");
                                map.put(productId, jSONObject);
                            } else {
                                Map<String, JSONObject> map2 = S;
                                Intrinsics.checkNotNullExpressionValue(productId, "productId");
                                map2.put(productId, jSONObject);
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    y((InAppPurchaseUtils.IAPProductType) t02, arrayList, (Runnable) t03);
                } else {
                    ((Runnable) t03).run();
                }
            }
        }
    }

    private final void y(final InAppPurchaseUtils.IAPProductType iAPProductType, final List<String> list, final Runnable runnable) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            o(new Runnable() { // from class: y1.j
                @Override // java.lang.Runnable
                public final void run() {
                    com.facebook.appevents.iap.e.z(com.facebook.appevents.iap.e.this, runnable, iAPProductType, list);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(e this$0, Runnable completionHandler, InAppPurchaseUtils.IAPProductType productType, List productIds) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(completionHandler, "$completionHandler");
            Intrinsics.checkNotNullParameter(productType, "$productType");
            Intrinsics.checkNotNullParameter(productIds, "$productIds");
            Object newProxyInstance = Proxy.newProxyInstance(this$0.f15081p.getClassLoader(), new Class[]{this$0.f15081p}, new b(new Object[]{completionHandler}));
            Object r10 = this$0.r(productType, productIds);
            if (r10 != null) {
                InAppPurchaseUtils.e(this$0.f15067b, this$0.C, this$0.p(), r10, newProxyInstance);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
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
            o(new Runnable() { // from class: y1.i
                @Override // java.lang.Runnable
                public final void run() {
                    com.facebook.appevents.iap.e.A(com.facebook.appevents.iap.e.this, productType, completionHandler);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @NotNull
    public Object p() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f15066a;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public final String q(@NotNull String productDetailsString) {
        List<String> c10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(productDetailsString, "productDetailsString");
            MatchResult f10 = Regex.f(new Regex("jsonString='(.*?)'"), productDetailsString, 0, 2, null);
            if (f10 == null || (c10 = f10.c()) == null) {
                return null;
            }
            return (String) CollectionsKt.t0(c10, 1);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private e(Object obj, Class<?> cls, Class<?> cls2, Class<?> cls3, Class<?> cls4, Class<?> cls5, Class<?> cls6, Class<?> cls7, Class<?> cls8, Class<?> cls9, Class<?> cls10, Class<?> cls11, Class<?> cls12, Class<?> cls13, Class<?> cls14, Class<?> cls15, Class<?> cls16, Class<?> cls17, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, Method method8, Method method9, Method method10, Method method11, Method method12, Method method13, Method method14, Method method15, Method method16, Method method17, Method method18, Method method19, Method method20, Method method21) {
        this.f15066a = obj;
        this.f15067b = cls;
        this.f15068c = cls2;
        this.f15069d = cls3;
        this.f15070e = cls4;
        this.f15071f = cls5;
        this.f15072g = cls6;
        this.f15073h = cls7;
        this.f15074i = cls8;
        this.f15075j = cls9;
        this.f15076k = cls10;
        this.f15077l = cls11;
        this.f15078m = cls12;
        this.f15079n = cls13;
        this.f15080o = cls14;
        this.f15081p = cls15;
        this.f15082q = cls16;
        this.f15083r = cls17;
        this.f15084s = method;
        this.f15085t = method2;
        this.f15086u = method3;
        this.f15087v = method4;
        this.f15088w = method5;
        this.f15089x = method6;
        this.f15090y = method7;
        this.f15091z = method8;
        this.A = method9;
        this.B = method10;
        this.C = method11;
        this.D = method12;
        this.E = method13;
        this.F = method14;
        this.G = method15;
        this.H = method16;
        this.I = method17;
        this.J = method18;
        this.K = method19;
        this.L = method20;
        this.M = method21;
    }
}
