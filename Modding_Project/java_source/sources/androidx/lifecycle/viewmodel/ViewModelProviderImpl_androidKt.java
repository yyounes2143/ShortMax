package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import zs.a;
/* compiled from: ViewModelProviderImpl.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewModelProviderImpl_androidKt {
    @NotNull
    public static final <VM extends ViewModel> VM createViewModel(@NotNull ViewModelProvider.Factory factory, @NotNull KClass<VM> modelClass, @NotNull CreationExtras extras) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        try {
            try {
                return (VM) factory.create(modelClass, extras);
            } catch (AbstractMethodError unused) {
                return (VM) factory.create(a.b(modelClass));
            }
        } catch (AbstractMethodError unused2) {
            return (VM) factory.create(a.b(modelClass), extras);
        }
    }
}
