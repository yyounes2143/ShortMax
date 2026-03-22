package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CreationExtras.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CreationExtrasKt {
    public static final boolean contains(@NotNull CreationExtras creationExtras, @NotNull CreationExtras.Key<?> key) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return creationExtras.getExtras$lifecycle_viewmodel_release().containsKey(key);
    }

    @NotNull
    public static final MutableCreationExtras plus(@NotNull CreationExtras creationExtras, @NotNull CreationExtras creationExtras2) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        Intrinsics.checkNotNullParameter(creationExtras2, "creationExtras");
        return new MutableCreationExtras(p0.q(creationExtras.getExtras$lifecycle_viewmodel_release(), creationExtras2.getExtras$lifecycle_viewmodel_release()));
    }

    public static final void plusAssign(@NotNull MutableCreationExtras mutableCreationExtras, @NotNull CreationExtras creationExtras) {
        Intrinsics.checkNotNullParameter(mutableCreationExtras, "<this>");
        Intrinsics.checkNotNullParameter(creationExtras, "creationExtras");
        mutableCreationExtras.getExtras$lifecycle_viewmodel_release().putAll(creationExtras.getExtras$lifecycle_viewmodel_release());
    }
}
