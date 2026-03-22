package com.facebook.appevents.iap;

import androidx.annotation.RestrictTo;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InAppPurchaseSkuDetailsWrapper.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f15100g = new a(null);
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static h f15101h;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f15102a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f15103b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Method f15104c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Method f15105d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Method f15106e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Method f15107f;

    /* compiled from: InAppPurchaseSkuDetailsWrapper.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final h a() {
            Class<?> a10 = InAppPurchaseUtils.a("com.android.billingclient.api.SkuDetailsParams");
            Class<?> a11 = InAppPurchaseUtils.a("com.android.billingclient.api.SkuDetailsParams$Builder");
            if (a10 == null || a11 == null) {
                return null;
            }
            Method d10 = InAppPurchaseUtils.d(a10, "newBuilder", new Class[0]);
            Method d11 = InAppPurchaseUtils.d(a11, "setType", String.class);
            Method d12 = InAppPurchaseUtils.d(a11, "setSkusList", List.class);
            Method d13 = InAppPurchaseUtils.d(a11, "build", new Class[0]);
            if (d10 == null || d11 == null || d12 == null || d13 == null) {
                return null;
            }
            h.b(new h(a10, a11, d10, d11, d12, d13));
            return h.a();
        }

        @Nullable
        public final synchronized h b() {
            h a10;
            a10 = h.a();
            if (a10 == null) {
                a10 = a();
            }
            return a10;
        }

        private a() {
        }
    }

    public h(@NotNull Class<?> skuDetailsParamsClazz, @NotNull Class<?> builderClazz, @NotNull Method newBuilderMethod, @NotNull Method setTypeMethod, @NotNull Method setSkusListMethod, @NotNull Method buildMethod) {
        Intrinsics.checkNotNullParameter(skuDetailsParamsClazz, "skuDetailsParamsClazz");
        Intrinsics.checkNotNullParameter(builderClazz, "builderClazz");
        Intrinsics.checkNotNullParameter(newBuilderMethod, "newBuilderMethod");
        Intrinsics.checkNotNullParameter(setTypeMethod, "setTypeMethod");
        Intrinsics.checkNotNullParameter(setSkusListMethod, "setSkusListMethod");
        Intrinsics.checkNotNullParameter(buildMethod, "buildMethod");
        this.f15102a = skuDetailsParamsClazz;
        this.f15103b = builderClazz;
        this.f15104c = newBuilderMethod;
        this.f15105d = setTypeMethod;
        this.f15106e = setSkusListMethod;
        this.f15107f = buildMethod;
    }

    public static final /* synthetic */ h a() {
        if (o4.a.d(h.class)) {
            return null;
        }
        try {
            return f15101h;
        } catch (Throwable th2) {
            o4.a.b(th2, h.class);
            return null;
        }
    }

    public static final /* synthetic */ void b(h hVar) {
        if (o4.a.d(h.class)) {
            return;
        }
        try {
            f15101h = hVar;
        } catch (Throwable th2) {
            o4.a.b(th2, h.class);
        }
    }

    @Nullable
    public final Object c(@NotNull InAppPurchaseUtils.IAPProductType productType, @Nullable List<String> list) {
        Object e10;
        Object e11;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(productType, "productType");
            Object e12 = InAppPurchaseUtils.e(this.f15102a, this.f15104c, null, new Object[0]);
            if (e12 != null && (e10 = InAppPurchaseUtils.e(this.f15103b, this.f15105d, e12, productType.getType())) != null && (e11 = InAppPurchaseUtils.e(this.f15103b, this.f15106e, e10, list)) != null) {
                return InAppPurchaseUtils.e(this.f15103b, this.f15107f, e11, new Object[0]);
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public final Class<?> d() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f15102a;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }
}
