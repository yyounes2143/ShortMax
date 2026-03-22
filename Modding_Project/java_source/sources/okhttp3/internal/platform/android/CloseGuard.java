package okhttp3.internal.platform.android;

import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CloseGuard.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CloseGuard {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Companion f64149d = new Companion(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Method f64150a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Method f64151b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Method f64152c;

    /* compiled from: CloseGuard.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloseGuard a() {
            Method method;
            Method method2;
            Method method3;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method = cls.getMethod("get", new Class[0]);
                method3 = cls.getMethod(MRAIDPresenter.OPEN, String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception unused) {
                method = null;
                method2 = null;
                method3 = null;
            }
            return new CloseGuard(method, method3, method2);
        }

        private Companion() {
        }
    }

    public CloseGuard(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
        this.f64150a = method;
        this.f64151b = method2;
        this.f64152c = method3;
    }

    @Nullable
    public final Object a(@NotNull String closer) {
        Intrinsics.checkNotNullParameter(closer, "closer");
        Method method = this.f64150a;
        if (method != null) {
            try {
                Object invoke = method.invoke(null, new Object[0]);
                Method method2 = this.f64151b;
                Intrinsics.checkNotNull(method2);
                method2.invoke(invoke, closer);
                return invoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final boolean b(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Method method = this.f64152c;
            Intrinsics.checkNotNull(method);
            method.invoke(obj, new Object[0]);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
