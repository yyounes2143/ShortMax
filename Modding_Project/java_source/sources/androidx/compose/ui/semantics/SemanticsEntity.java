package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.EntityList;
import androidx.compose.ui.node.LayoutNodeEntity;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsEntity.kt */
@Metadata
/* loaded from: classes.dex */
public final class SemanticsEntity extends LayoutNodeEntity<SemanticsEntity, SemanticsModifier> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SemanticsEntity(@NotNull LayoutNodeWrapper wrapped, @NotNull SemanticsModifier modifier) {
        super(wrapped, modifier);
        Intrinsics.checkNotNullParameter(wrapped, "wrapped");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
    }

    private final boolean getUseMinimumTouchTarget() {
        if (SemanticsConfigurationKt.getOrNull(getModifier().getSemanticsConfiguration(), SemanticsActions.INSTANCE.getOnClick()) != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final SemanticsConfiguration collapsedSemanticsConfiguration() {
        SemanticsEntity next = getNext();
        SemanticsEntity semanticsEntity = null;
        if (next == null) {
            LayoutNodeWrapper wrapped$ui_release = getLayoutNodeWrapper().getWrapped$ui_release();
            if (wrapped$ui_release != null) {
                while (wrapped$ui_release != null && !EntityList.m3435has0OSVbXo(wrapped$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) {
                    wrapped$ui_release = wrapped$ui_release.getWrapped$ui_release();
                }
                if (wrapped$ui_release != null && (next = (SemanticsEntity) EntityList.m3437head0OSVbXo(wrapped$ui_release.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w())) != null) {
                    LayoutNodeWrapper layoutNodeWrapper = next.getLayoutNodeWrapper();
                    while (layoutNodeWrapper != null) {
                        if (next != null) {
                            semanticsEntity = next;
                            break;
                        }
                        layoutNodeWrapper = layoutNodeWrapper.getWrapped$ui_release();
                        if (layoutNodeWrapper != null) {
                            next = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w());
                        } else {
                            next = null;
                        }
                    }
                }
            }
        } else {
            LayoutNodeWrapper layoutNodeWrapper2 = next.getLayoutNodeWrapper();
            while (layoutNodeWrapper2 != null) {
                if (next != null) {
                    semanticsEntity = next;
                    break;
                }
                layoutNodeWrapper2 = layoutNodeWrapper2.getWrapped$ui_release();
                if (layoutNodeWrapper2 != null) {
                    next = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper2.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w());
                } else {
                    next = null;
                }
            }
        }
        if (semanticsEntity != null && !getModifier().getSemanticsConfiguration().isClearingSemantics()) {
            SemanticsConfiguration copy = getModifier().getSemanticsConfiguration().copy();
            copy.collapsePeer$ui_release(semanticsEntity.collapsedSemanticsConfiguration());
            return copy;
        }
        return getModifier().getSemanticsConfiguration();
    }

    @Nullable
    public final SemanticsEntity nearestSemantics$ui_release(@NotNull Function1<? super SemanticsEntity, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LayoutNodeWrapper layoutNodeWrapper = getLayoutNodeWrapper();
        SemanticsEntity semanticsEntity = this;
        while (layoutNodeWrapper != null) {
            while (semanticsEntity != null) {
                if (predicate.invoke(semanticsEntity).booleanValue()) {
                    return semanticsEntity;
                }
                semanticsEntity = semanticsEntity.getNext();
            }
            layoutNodeWrapper = layoutNodeWrapper.getWrapped$ui_release();
            if (layoutNodeWrapper != null) {
                semanticsEntity = (SemanticsEntity) EntityList.m3437head0OSVbXo(layoutNodeWrapper.m3485getEntitiesCHwCgZE(), EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w());
            } else {
                semanticsEntity = null;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void onAttach() {
        super.onAttach();
        Owner owner$ui_release = getLayoutNode().getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.onSemanticsChange();
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void onDetach() {
        super.onDetach();
        Owner owner$ui_release = getLayoutNode().getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.onSemanticsChange();
        }
    }

    @NotNull
    public String toString() {
        return super.toString() + " id: " + getModifier().getId() + " config: " + getModifier().getSemanticsConfiguration();
    }

    @NotNull
    public final Rect touchBoundsInRoot() {
        if (!isAttached()) {
            return Rect.Companion.getZero();
        }
        if (!getUseMinimumTouchTarget()) {
            return LayoutCoordinatesKt.boundsInRoot(getLayoutNodeWrapper());
        }
        return getLayoutNodeWrapper().touchBoundsInRoot();
    }
}
