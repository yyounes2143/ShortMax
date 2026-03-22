package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavArgs;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import ms.i;
import org.jetbrains.annotations.NotNull;
import zs.a;
/* compiled from: NavArgsLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavArgsLazy<Args extends NavArgs> implements i<Args> {
    private final Function0<Bundle> argumentProducer;
    private Args cached;
    private final KClass<Args> navArgsClass;

    public NavArgsLazy(@NotNull KClass<Args> navArgsClass, @NotNull Function0<Bundle> argumentProducer) {
        Intrinsics.checkParameterIsNotNull(navArgsClass, "navArgsClass");
        Intrinsics.checkParameterIsNotNull(argumentProducer, "argumentProducer");
        this.navArgsClass = navArgsClass;
        this.argumentProducer = argumentProducer;
    }

    @Override // ms.i
    public boolean isInitialized() {
        if (this.cached != null) {
            return true;
        }
        return false;
    }

    @Override // ms.i
    @NotNull
    public Args getValue() {
        Args args = this.cached;
        if (args == null) {
            Bundle invoke = this.argumentProducer.invoke();
            Method method = NavArgsLazyKt.getMethodMap().get(this.navArgsClass);
            if (method == null) {
                Class b10 = a.b(this.navArgsClass);
                Class<Bundle>[] methodSignature = NavArgsLazyKt.getMethodSignature();
                method = b10.getMethod("fromBundle", (Class[]) Arrays.copyOf(methodSignature, methodSignature.length));
                NavArgsLazyKt.getMethodMap().put(this.navArgsClass, method);
                Intrinsics.checkExpressionValueIsNotNull(method, "navArgsClass.java.getMet…hod\n                    }");
            }
            Object invoke2 = method.invoke(null, invoke);
            if (invoke2 != null) {
                Args args2 = (Args) invoke2;
                this.cached = args2;
                return args2;
            }
            throw new TypeCastException("null cannot be cast to non-null type Args");
        }
        return args;
    }
}
