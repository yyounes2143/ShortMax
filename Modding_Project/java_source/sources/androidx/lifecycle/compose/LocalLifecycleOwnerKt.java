package androidx.lifecycle.compose;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.lifecycle.LifecycleOwner;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LocalLifecycleOwner.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLocalLifecycleOwner.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalLifecycleOwner.android.kt\nandroidx/lifecycle/compose/LocalLifecycleOwnerKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,66:1\n12574#2,2:67\n*S KotlinDebug\n*F\n+ 1 LocalLifecycleOwner.android.kt\nandroidx/lifecycle/compose/LocalLifecycleOwnerKt\n*L\n49#1:67,2\n*E\n"})
/* loaded from: classes2.dex */
public final class LocalLifecycleOwnerKt {
    @NotNull
    private static final ProvidableCompositionLocal<LifecycleOwner> LocalLifecycleOwner;

    static {
        Object d10;
        ProvidableCompositionLocal providableCompositionLocal;
        ProvidableCompositionLocal<LifecycleOwner> providableCompositionLocal2 = null;
        try {
            Result.a aVar = Result.f60901b;
            ClassLoader classLoader = LifecycleOwner.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            Method method = classLoader.loadClass("androidx.compose.ui.platform.AndroidCompositionLocals_androidKt").getMethod("getLocalLifecycleOwner", new Class[0]);
            Annotation[] annotations = method.getAnnotations();
            int length = annotations.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    if (annotations[i10] instanceof ms.c) {
                        break;
                    }
                    i10++;
                } else {
                    Object invoke = method.invoke(null, new Object[0]);
                    if (invoke instanceof ProvidableCompositionLocal) {
                        providableCompositionLocal = (ProvidableCompositionLocal) invoke;
                    }
                }
            }
            providableCompositionLocal = null;
            d10 = Result.d(providableCompositionLocal);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (!Result.i(d10)) {
            providableCompositionLocal2 = d10;
        }
        ProvidableCompositionLocal<LifecycleOwner> providableCompositionLocal3 = providableCompositionLocal2;
        if (providableCompositionLocal3 == null) {
            providableCompositionLocal3 = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.lifecycle.compose.u
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    LifecycleOwner LocalLifecycleOwner$lambda$3$lambda$2;
                    LocalLifecycleOwner$lambda$3$lambda$2 = LocalLifecycleOwnerKt.LocalLifecycleOwner$lambda$3$lambda$2();
                    return LocalLifecycleOwner$lambda$3$lambda$2;
                }
            });
        }
        LocalLifecycleOwner = providableCompositionLocal3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleOwner LocalLifecycleOwner$lambda$3$lambda$2() {
        throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
    }

    @NotNull
    public static final ProvidableCompositionLocal<LifecycleOwner> getLocalLifecycleOwner() {
        return LocalLifecycleOwner;
    }

    public static /* synthetic */ void getLocalLifecycleOwner$annotations() {
    }
}
