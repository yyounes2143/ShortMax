package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@InternalComposeApi
@Metadata
/* loaded from: classes.dex */
public final class MovableContentStateReference {
    public static final int $stable = 8;
    @NotNull
    private final Anchor anchor;
    @NotNull
    private final ControlledComposition composition;
    @NotNull
    private final MovableContent<Object> content;
    @NotNull
    private List<? extends Pair<RecomposeScopeImpl, ? extends Object>> invalidations;
    @NotNull
    private final PersistentCompositionLocalMap locals;
    @Nullable
    private final List<MovableContentStateReference> nestedReferences;
    @Nullable
    private final Object parameter;
    @NotNull
    private final SlotTable slotTable;

    public MovableContentStateReference(@NotNull MovableContent<Object> movableContent, @Nullable Object obj, @NotNull ControlledComposition controlledComposition, @NotNull SlotTable slotTable, @NotNull Anchor anchor, @NotNull List<? extends Pair<RecomposeScopeImpl, ? extends Object>> list, @NotNull PersistentCompositionLocalMap persistentCompositionLocalMap, @Nullable List<MovableContentStateReference> list2) {
        this.content = movableContent;
        this.parameter = obj;
        this.composition = controlledComposition;
        this.slotTable = slotTable;
        this.anchor = anchor;
        this.invalidations = list;
        this.locals = persistentCompositionLocalMap;
        this.nestedReferences = list2;
    }

    @NotNull
    public final Anchor getAnchor$runtime() {
        return this.anchor;
    }

    @NotNull
    public final ControlledComposition getComposition$runtime() {
        return this.composition;
    }

    @NotNull
    public final MovableContent<Object> getContent$runtime() {
        return this.content;
    }

    @NotNull
    public final List<Pair<RecomposeScopeImpl, Object>> getInvalidations$runtime() {
        return this.invalidations;
    }

    @NotNull
    public final PersistentCompositionLocalMap getLocals$runtime() {
        return this.locals;
    }

    @Nullable
    public final List<MovableContentStateReference> getNestedReferences$runtime() {
        return this.nestedReferences;
    }

    @Nullable
    public final Object getParameter$runtime() {
        return this.parameter;
    }

    @NotNull
    public final SlotTable getSlotTable$runtime() {
        return this.slotTable;
    }

    public final void setInvalidations$runtime(@NotNull List<? extends Pair<RecomposeScopeImpl, ? extends Object>> list) {
        this.invalidations = list;
    }

    public final void transferPendingInvalidations$runtime() {
        ControlledComposition controlledComposition = this.composition;
        Intrinsics.checkNotNull(controlledComposition, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl");
        this.invalidations = CollectionsKt.K0(this.invalidations, ((CompositionImpl) controlledComposition).extractInvalidationsOf$runtime(this.anchor));
    }
}
