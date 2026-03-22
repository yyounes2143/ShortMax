package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateViewModelFactory.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public final class SavedStateViewModelFactory_androidKt {
    @NotNull
    private static final List<Class<?>> ANDROID_VIEWMODEL_SIGNATURE = CollectionsKt.q(Application.class, SavedStateHandle.class);
    @NotNull
    private static final List<Class<?>> VIEWMODEL_SIGNATURE = CollectionsKt.e(SavedStateHandle.class);

    public static final /* synthetic */ List access$getANDROID_VIEWMODEL_SIGNATURE$p() {
        return ANDROID_VIEWMODEL_SIGNATURE;
    }

    public static final /* synthetic */ List access$getVIEWMODEL_SIGNATURE$p() {
        return VIEWMODEL_SIGNATURE;
    }

    @Nullable
    public static final <T> Constructor<T> findMatchingConstructor(@NotNull Class<T> modelClass, @NotNull List<? extends Class<?>> signature) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Iterator it = ArrayIteratorKt.iterator(modelClass.getConstructors());
        while (it.hasNext()) {
            Constructor<T> constructor = (Constructor) it.next();
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
            List x12 = kotlin.collections.n.x1(parameterTypes);
            if (Intrinsics.areEqual(signature, x12)) {
                Intrinsics.checkNotNull(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactory_androidKt.findMatchingConstructor>");
                return constructor;
            } else if (signature.size() == x12.size() && x12.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final <T extends ViewModel> T newInstance(@NotNull Class<T> modelClass, @NotNull Constructor<T> constructor, @NotNull Object... params) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(params, "params");
        try {
            return constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e12.getCause());
        }
    }
}
