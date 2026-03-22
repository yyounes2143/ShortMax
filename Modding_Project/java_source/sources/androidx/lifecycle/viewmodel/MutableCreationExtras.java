package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreationExtras.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MutableCreationExtras extends CreationExtras {
    public MutableCreationExtras() {
        this(null, 1, null);
    }

    @Override // androidx.lifecycle.viewmodel.CreationExtras
    @Nullable
    public <T> T get(@NotNull CreationExtras.Key<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) getExtras$lifecycle_viewmodel_release().get(key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void set(@NotNull CreationExtras.Key<T> key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        getExtras$lifecycle_viewmodel_release().put(key, t10);
    }

    public MutableCreationExtras(@NotNull Map<CreationExtras.Key<?>, ? extends Object> initialExtras) {
        Intrinsics.checkNotNullParameter(initialExtras, "initialExtras");
        getExtras$lifecycle_viewmodel_release().putAll(initialExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MutableCreationExtras(@NotNull CreationExtras initialExtras) {
        this(initialExtras.getExtras$lifecycle_viewmodel_release());
        Intrinsics.checkNotNullParameter(initialExtras, "initialExtras");
    }

    public /* synthetic */ MutableCreationExtras(CreationExtras creationExtras, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }
}
