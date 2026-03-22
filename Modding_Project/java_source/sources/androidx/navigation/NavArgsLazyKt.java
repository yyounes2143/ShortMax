package androidx.navigation;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavArgsLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavArgsLazyKt {
    @NotNull
    private static final Class<Bundle>[] methodSignature = {Bundle.class};
    @NotNull
    private static final ArrayMap<KClass<? extends NavArgs>, Method> methodMap = new ArrayMap<>();

    @NotNull
    public static final ArrayMap<KClass<? extends NavArgs>, Method> getMethodMap() {
        return methodMap;
    }

    @NotNull
    public static final Class<Bundle>[] getMethodSignature() {
        return methodSignature;
    }
}
