package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModifierLocalProviderEntity.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModifierLocalProviderEntity implements Function0<Unit> {
    @NotNull
    private final MutableVector<ModifierLocalConsumerEntity> consumers;
    private boolean isAttached;
    @NotNull
    private final LayoutNode layoutNode;
    @NotNull
    private final ModifierLocalProvider<?> modifier;
    @Nullable
    private ModifierLocalProviderEntity next;
    @Nullable
    private ModifierLocalProviderEntity prev;

    public ModifierLocalProviderEntity(@NotNull LayoutNode layoutNode, @NotNull ModifierLocalProvider<?> modifier) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.layoutNode = layoutNode;
        this.modifier = modifier;
        this.consumers = new MutableVector<>(new ModifierLocalConsumerEntity[16], 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void invalidateConsumersOf(androidx.compose.ui.modifier.ModifierLocal<?> r6, boolean r7) {
        /*
            r5 = this;
            if (r7 == 0) goto Lf
            androidx.compose.ui.modifier.ModifierLocalProvider<?> r7 = r5.modifier
            androidx.compose.ui.modifier.ProvidableModifierLocal r7 = r7.getKey()
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
            if (r7 == 0) goto Lf
            return
        Lf:
            androidx.compose.runtime.collection.MutableVector<androidx.compose.ui.node.ModifierLocalConsumerEntity> r7 = r5.consumers
            int r0 = r7.getSize()
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L28
            java.lang.Object[] r7 = r7.getContent()
            r3 = r1
        L1e:
            r4 = r7[r3]
            androidx.compose.ui.node.ModifierLocalConsumerEntity r4 = (androidx.compose.ui.node.ModifierLocalConsumerEntity) r4
            r4.invalidateConsumersOf(r6)
            int r3 = r3 + r2
            if (r3 < r0) goto L1e
        L28:
            androidx.compose.ui.node.ModifierLocalProviderEntity r7 = r5.next
            if (r7 == 0) goto L32
            r7.invalidateConsumersOf(r6, r2)
            kotlin.Unit r7 = kotlin.Unit.f60915a
            goto L33
        L32:
            r7 = 0
        L33:
            if (r7 != 0) goto L53
            androidx.compose.ui.node.LayoutNode r7 = r5.layoutNode
            androidx.compose.runtime.collection.MutableVector r7 = r7.get_children$ui_release()
            int r0 = r7.getSize()
            if (r0 <= 0) goto L53
            java.lang.Object[] r7 = r7.getContent()
        L45:
            r3 = r7[r1]
            androidx.compose.ui.node.LayoutNode r3 = (androidx.compose.ui.node.LayoutNode) r3
            androidx.compose.ui.node.ModifierLocalProviderEntity r3 = r3.getModifierLocalsHead$ui_release()
            r3.invalidateConsumersOf(r6, r2)
            int r1 = r1 + r2
            if (r1 < r0) goto L45
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.ModifierLocalProviderEntity.invalidateConsumersOf(androidx.compose.ui.modifier.ModifierLocal, boolean):void");
    }

    public final void attach() {
        this.isAttached = true;
        int i10 = 0;
        invalidateConsumersOf(this.modifier.getKey(), false);
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int size = mutableVector.getSize();
        if (size > 0) {
            ModifierLocalConsumerEntity[] content = mutableVector.getContent();
            do {
                content[i10].attach();
                i10++;
            } while (i10 < size);
        }
    }

    public final void attachDelayed() {
        this.isAttached = true;
        Owner owner$ui_release = this.layoutNode.getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.registerOnEndApplyChangesListener(this);
        }
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int size = mutableVector.getSize();
        if (size > 0) {
            ModifierLocalConsumerEntity[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].attachDelayed();
                i10++;
            } while (i10 < size);
        }
    }

    public final void detach() {
        this.isAttached = false;
        MutableVector<ModifierLocalConsumerEntity> mutableVector = this.consumers;
        int size = mutableVector.getSize();
        if (size > 0) {
            ModifierLocalConsumerEntity[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].detach();
                i10++;
            } while (i10 < size);
            invalidateConsumersOf(this.modifier.getKey(), false);
        }
        invalidateConsumersOf(this.modifier.getKey(), false);
    }

    @Nullable
    public final ModifierLocalProvider<?> findModifierLocalProvider(@NotNull ModifierLocal<?> local) {
        ModifierLocalProviderEntity modifierLocalsTail$ui_release;
        ModifierLocalProvider<?> findModifierLocalProvider;
        Intrinsics.checkNotNullParameter(local, "local");
        if (Intrinsics.areEqual(this.modifier.getKey(), local)) {
            return this.modifier;
        }
        ModifierLocalProviderEntity modifierLocalProviderEntity = this.prev;
        if (modifierLocalProviderEntity == null || (findModifierLocalProvider = modifierLocalProviderEntity.findModifierLocalProvider(local)) == null) {
            LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
            if (parent$ui_release != null && (modifierLocalsTail$ui_release = parent$ui_release.getModifierLocalsTail$ui_release()) != null) {
                return modifierLocalsTail$ui_release.findModifierLocalProvider(local);
            }
            return null;
        }
        return findModifierLocalProvider;
    }

    @NotNull
    public final MutableVector<ModifierLocalConsumerEntity> getConsumers() {
        return this.consumers;
    }

    @NotNull
    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    @NotNull
    public final ModifierLocalProvider<?> getModifier() {
        return this.modifier;
    }

    @Nullable
    public final ModifierLocalProviderEntity getNext() {
        return this.next;
    }

    @Nullable
    public final ModifierLocalProviderEntity getPrev() {
        return this.prev;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    public final boolean isAttached() {
        return this.isAttached;
    }

    public final void setNext(@Nullable ModifierLocalProviderEntity modifierLocalProviderEntity) {
        this.next = modifierLocalProviderEntity;
    }

    public final void setPrev(@Nullable ModifierLocalProviderEntity modifierLocalProviderEntity) {
        this.prev = modifierLocalProviderEntity;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2() {
        if (this.isAttached) {
            invalidateConsumersOf(this.modifier.getKey(), false);
        }
    }
}
