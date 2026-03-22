package com.facebook.appevents.iap;

import android.content.Context;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InAppPurchaseUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class InAppPurchaseUtils {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final InAppPurchaseUtils f15024a = new InAppPurchaseUtils();

    /* compiled from: InAppPurchaseUtils.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum BillingClientVersion {
        NONE(DevicePublicKeyStringDef.NONE),
        V1("Android-GPBL-V1"),
        V2_V4("Android-GPBL-V2-V4"),
        V5_V7("Android-GPBL-V5-V7");
        
        @NotNull
        private final String type;

        BillingClientVersion(String str) {
            this.type = str;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }
    }

    /* compiled from: InAppPurchaseUtils.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum IAPProductType {
        INAPP("inapp"),
        SUBS("subs");
        
        @NotNull
        private final String type;

        IAPProductType(String str) {
            this.type = str;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }
    }

    private InAppPurchaseUtils() {
    }

    @Nullable
    public static final Class<?> a(@NotNull String className) {
        if (o4.a.d(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(className, "className");
            try {
                return Class.forName(className);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, InAppPurchaseUtils.class);
            return null;
        }
    }

    @Nullable
    public static final Class<?> b(@NotNull Context context, @NotNull String className) {
        if (o4.a.d(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(className, "className");
            try {
                return context.getClassLoader().loadClass(className);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, InAppPurchaseUtils.class);
            return null;
        }
    }

    @Nullable
    public static final Method c(@NotNull Class<?> clazz, @NotNull String methodName, @NotNull Class<?>... args) {
        if (o4.a.d(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            Intrinsics.checkNotNullParameter(methodName, "methodName");
            Intrinsics.checkNotNullParameter(args, "args");
            try {
                return clazz.getDeclaredMethod(methodName, (Class[]) Arrays.copyOf(args, args.length));
            } catch (NoSuchMethodException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, InAppPurchaseUtils.class);
            return null;
        }
    }

    @Nullable
    public static final Method d(@NotNull Class<?> clazz, @NotNull String methodName, @NotNull Class<?>... args) {
        if (o4.a.d(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            Intrinsics.checkNotNullParameter(methodName, "methodName");
            Intrinsics.checkNotNullParameter(args, "args");
            try {
                return clazz.getMethod(methodName, (Class[]) Arrays.copyOf(args, args.length));
            } catch (NoSuchMethodException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, InAppPurchaseUtils.class);
            return null;
        }
    }

    @Nullable
    public static final Object e(@NotNull Class<?> clazz, @NotNull Method method, @Nullable Object obj, @NotNull Object... args) {
        if (o4.a.d(InAppPurchaseUtils.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            Intrinsics.checkNotNullParameter(method, "method");
            Intrinsics.checkNotNullParameter(args, "args");
            if (obj != null) {
                obj = clazz.cast(obj);
            }
            try {
                return method.invoke(obj, Arrays.copyOf(args, args.length));
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, InAppPurchaseUtils.class);
            return null;
        }
    }
}
