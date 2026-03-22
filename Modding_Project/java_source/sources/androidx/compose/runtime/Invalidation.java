package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Composer.kt */
@Metadata
/* loaded from: classes.dex */
public final class Invalidation {
    @Nullable
    private Object instances;
    private int location;
    @NotNull
    private final RecomposeScopeImpl scope;

    public Invalidation(@NotNull RecomposeScopeImpl recomposeScopeImpl, int i10, @Nullable Object obj) {
        this.scope = recomposeScopeImpl;
        this.location = i10;
        this.instances = obj;
    }

    @Nullable
    public final Object getInstances() {
        return this.instances;
    }

    public final int getLocation() {
        return this.location;
    }

    @NotNull
    public final RecomposeScopeImpl getScope() {
        return this.scope;
    }

    public final boolean isInvalid() {
        return this.scope.isInvalidFor(this.instances);
    }

    public final void setInstances(@Nullable Object obj) {
        this.instances = obj;
    }

    public final void setLocation(int i10) {
        this.location = i10;
    }
}
