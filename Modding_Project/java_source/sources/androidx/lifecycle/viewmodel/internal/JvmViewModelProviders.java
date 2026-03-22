package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: JvmViewModelProviders.kt */
@Metadata
/* loaded from: classes2.dex */
public final class JvmViewModelProviders {
    @NotNull
    public static final JvmViewModelProviders INSTANCE = new JvmViewModelProviders();

    private JvmViewModelProviders() {
    }

    @NotNull
    public final <T extends ViewModel> T createViewModel(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        try {
            Constructor<T> declaredConstructor = modelClass.getDeclaredConstructor(new Class[0]);
            if (Modifier.isPublic(declaredConstructor.getModifiers())) {
                try {
                    T newInstance = declaredConstructor.newInstance(new Object[0]);
                    Intrinsics.checkNotNull(newInstance);
                    return newInstance;
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException("Cannot create an instance of " + modelClass, e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException("Cannot create an instance of " + modelClass, e11);
                }
            }
            throw new RuntimeException("Cannot create an instance of " + modelClass);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e12);
        }
    }
}
