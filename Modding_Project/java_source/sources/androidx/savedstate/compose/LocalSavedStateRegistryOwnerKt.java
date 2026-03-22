package androidx.savedstate.compose;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: LocalSavedStateRegistryOwner.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLocalSavedStateRegistryOwner.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalSavedStateRegistryOwner.android.kt\nandroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,68:1\n12574#2,2:69\n*S KotlinDebug\n*F\n+ 1 LocalSavedStateRegistryOwner.android.kt\nandroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt\n*L\n51#1:69,2\n*E\n"})
/* loaded from: classes2.dex */
public final class LocalSavedStateRegistryOwnerKt {
    @NotNull
    private static final ProvidableCompositionLocal<SavedStateRegistryOwner> LocalSavedStateRegistryOwner;

    static {
        Object d10;
        ProvidableCompositionLocal providableCompositionLocal;
        ProvidableCompositionLocal<SavedStateRegistryOwner> providableCompositionLocal2 = null;
        try {
            Result.a aVar = Result.f60901b;
            ClassLoader classLoader = SavedStateRegistryOwner.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            Method method = classLoader.loadClass("androidx.compose.ui.platform.AndroidCompositionLocals_androidKt").getMethod("getLocalSavedStateRegistryOwner", new Class[0]);
            Annotation[] annotations = method.getAnnotations();
            Intrinsics.checkNotNullExpressionValue(annotations, "getAnnotations(...)");
            int length = annotations.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    if (annotations[i10] instanceof c) {
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
            d10 = Result.d(f.a(th2));
        }
        if (!Result.i(d10)) {
            providableCompositionLocal2 = d10;
        }
        ProvidableCompositionLocal<SavedStateRegistryOwner> providableCompositionLocal3 = providableCompositionLocal2;
        if (providableCompositionLocal3 == null) {
            providableCompositionLocal3 = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: t.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    SavedStateRegistryOwner LocalSavedStateRegistryOwner$lambda$3$lambda$2;
                    LocalSavedStateRegistryOwner$lambda$3$lambda$2 = LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner$lambda$3$lambda$2();
                    return LocalSavedStateRegistryOwner$lambda$3$lambda$2;
                }
            });
        }
        LocalSavedStateRegistryOwner = providableCompositionLocal3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SavedStateRegistryOwner LocalSavedStateRegistryOwner$lambda$3$lambda$2() {
        throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
    }

    @NotNull
    public static final ProvidableCompositionLocal<SavedStateRegistryOwner> getLocalSavedStateRegistryOwner() {
        return LocalSavedStateRegistryOwner;
    }
}
