package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewModelLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewModelLazy<VM extends ViewModel> implements ms.i<VM> {
    @Nullable
    private VM cached;
    @NotNull
    private final Function0<CreationExtras> extrasProducer;
    @NotNull
    private final Function0<ViewModelProvider.Factory> factoryProducer;
    @NotNull
    private final Function0<ViewModelStore> storeProducer;
    @NotNull
    private final KClass<VM> viewModelClass;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(@NotNull KClass<VM> viewModelClass, @NotNull Function0<? extends ViewModelStore> storeProducer, @NotNull Function0<? extends ViewModelProvider.Factory> factoryProducer) {
        this(viewModelClass, storeProducer, factoryProducer, null, 8, null);
        Intrinsics.checkNotNullParameter(viewModelClass, "viewModelClass");
        Intrinsics.checkNotNullParameter(storeProducer, "storeProducer");
        Intrinsics.checkNotNullParameter(factoryProducer, "factoryProducer");
    }

    @Override // ms.i
    public boolean isInitialized() {
        if (this.cached != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelLazy(@NotNull KClass<VM> viewModelClass, @NotNull Function0<? extends ViewModelStore> storeProducer, @NotNull Function0<? extends ViewModelProvider.Factory> factoryProducer, @NotNull Function0<? extends CreationExtras> extrasProducer) {
        Intrinsics.checkNotNullParameter(viewModelClass, "viewModelClass");
        Intrinsics.checkNotNullParameter(storeProducer, "storeProducer");
        Intrinsics.checkNotNullParameter(factoryProducer, "factoryProducer");
        Intrinsics.checkNotNullParameter(extrasProducer, "extrasProducer");
        this.viewModelClass = viewModelClass;
        this.storeProducer = storeProducer;
        this.factoryProducer = factoryProducer;
        this.extrasProducer = extrasProducer;
    }

    @Override // ms.i
    @NotNull
    public VM getValue() {
        VM vm2 = this.cached;
        if (vm2 == null) {
            VM vm3 = (VM) ViewModelProvider.Companion.create(this.storeProducer.invoke(), this.factoryProducer.invoke(), this.extrasProducer.invoke()).get(this.viewModelClass);
            this.cached = vm3;
            return vm3;
        }
        return vm2;
    }

    public /* synthetic */ ViewModelLazy(KClass kClass, Function0 function0, Function0 function02, Function0 function03, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, function0, function02, (i10 & 8) != 0 ? new Function0() { // from class: androidx.lifecycle.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CreationExtras.Empty empty;
                empty = CreationExtras.Empty.INSTANCE;
                return empty;
            }
        } : function03);
    }
}
