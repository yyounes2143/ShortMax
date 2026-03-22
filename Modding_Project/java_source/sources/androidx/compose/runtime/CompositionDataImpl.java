package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import androidx.compose.runtime.tooling.CompositionInstance;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/CompositionDataImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5012:1\n1#2:5013\n*E\n"})
/* loaded from: classes.dex */
public final class CompositionDataImpl implements CompositionData, CompositionInstance {
    public static final int $stable = 8;
    @NotNull
    private final Composition composition;

    public CompositionDataImpl(@NotNull Composition composition) {
        this.composition = composition;
    }

    private final CompositionContext getContext(Composition composition) {
        CompositionImpl compositionImpl;
        if (composition instanceof CompositionImpl) {
            compositionImpl = (CompositionImpl) composition;
        } else {
            compositionImpl = null;
        }
        if (compositionImpl == null) {
            return null;
        }
        return compositionImpl.getParent();
    }

    private final SlotTable getSlotTable() {
        Composition composition = this.composition;
        Intrinsics.checkNotNull(composition, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl");
        return ((CompositionImpl) composition).getSlotTable$runtime();
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof CompositionDataImpl) && Intrinsics.areEqual(this.composition, ((CompositionDataImpl) obj).composition)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @Nullable
    public CompositionGroup find(@NotNull Object obj) {
        return getSlotTable().find(obj);
    }

    @Override // androidx.compose.runtime.tooling.CompositionInstance
    @Nullable
    public CompositionGroup findContextGroup() {
        SlotTable slotTable;
        CompositionContext context;
        Integer findSubcompositionContextGroup;
        Composition parent = getParent(this.composition);
        if (parent == null || (slotTable = getSlotTable(parent)) == null || (context = getContext(this.composition)) == null || (findSubcompositionContextGroup = ComposeStackTraceBuilderKt.findSubcompositionContextGroup(slotTable, context)) == null) {
            return null;
        }
        return SlotTableKt.compositionGroupOf(slotTable, findSubcompositionContextGroup.intValue());
    }

    @NotNull
    public final Composition getComposition() {
        return this.composition;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    @NotNull
    public Iterable<CompositionGroup> getCompositionGroups() {
        return getSlotTable().getCompositionGroups();
    }

    @Override // androidx.compose.runtime.tooling.CompositionInstance
    @Nullable
    public CompositionInstance getParent() {
        Composition parent = getParent(this.composition);
        if (parent != null) {
            return new CompositionDataImpl(parent);
        }
        return null;
    }

    public int hashCode() {
        return this.composition.hashCode() * 31;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        return getSlotTable().isEmpty();
    }

    private final Composition getParent(Composition composition) {
        CompositionContext context = getContext(composition);
        if (context != null) {
            return context.getComposition$runtime();
        }
        return null;
    }

    private final SlotTable getSlotTable(Composition composition) {
        CompositionImpl compositionImpl = composition instanceof CompositionImpl ? (CompositionImpl) composition : null;
        if (compositionImpl != null) {
            return compositionImpl.getSlotTable$runtime();
        }
        return null;
    }

    @Override // androidx.compose.runtime.tooling.CompositionInstance
    @NotNull
    public CompositionData getData() {
        return this;
    }
}
