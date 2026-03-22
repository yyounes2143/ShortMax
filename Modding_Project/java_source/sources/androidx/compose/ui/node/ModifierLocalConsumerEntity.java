package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ModifierLocalConsumerEntity.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModifierLocalConsumerEntity implements Function0<Unit>, OwnerScope, ModifierLocalReadScope {
    private boolean isAttached;
    @NotNull
    private final ModifierLocalConsumer modifier;
    @NotNull
    private final MutableVector<ModifierLocal<?>> modifierLocalsRead;
    @NotNull
    private ModifierLocalProviderEntity provider;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function1<ModifierLocalConsumerEntity, Unit> onReadValuesChanged = new Function1<ModifierLocalConsumerEntity, Unit>() { // from class: androidx.compose.ui.node.ModifierLocalConsumerEntity$Companion$onReadValuesChanged$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ModifierLocalConsumerEntity modifierLocalConsumerEntity) {
            invoke2(modifierLocalConsumerEntity);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull ModifierLocalConsumerEntity node) {
            Intrinsics.checkNotNullParameter(node, "node");
            node.notifyConsumerOfChanges();
        }
    };
    @NotNull
    private static final ModifierLocalReadScope DetachedModifierLocalReadScope = new ModifierLocalReadScope() { // from class: androidx.compose.ui.node.ModifierLocalConsumerEntity$Companion$DetachedModifierLocalReadScope$1
        @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
        public <T> T getCurrent(@NotNull ModifierLocal<T> modifierLocal) {
            Intrinsics.checkNotNullParameter(modifierLocal, "<this>");
            return modifierLocal.getDefaultFactory$ui_release().invoke();
        }
    };

    /* compiled from: ModifierLocalConsumerEntity.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ModifierLocalReadScope getDetachedModifierLocalReadScope() {
            return ModifierLocalConsumerEntity.DetachedModifierLocalReadScope;
        }

        @NotNull
        public final Function1<ModifierLocalConsumerEntity, Unit> getOnReadValuesChanged() {
            return ModifierLocalConsumerEntity.onReadValuesChanged;
        }

        private Companion() {
        }
    }

    public ModifierLocalConsumerEntity(@NotNull ModifierLocalProviderEntity provider, @NotNull ModifierLocalConsumer modifier) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.provider = provider;
        this.modifier = modifier;
        this.modifierLocalsRead = new MutableVector<>(new ModifierLocal[16], 0);
    }

    public final void attach() {
        this.isAttached = true;
        notifyConsumerOfChanges();
    }

    public final void attachDelayed() {
        this.isAttached = true;
        invalidateConsumer();
    }

    public final void detach() {
        this.modifier.onModifierLocalsUpdated(DetachedModifierLocalReadScope);
        this.isAttached = false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
    public <T> T getCurrent(@NotNull ModifierLocal<T> modifierLocal) {
        Intrinsics.checkNotNullParameter(modifierLocal, "<this>");
        this.modifierLocalsRead.add(modifierLocal);
        ModifierLocalProvider<?> findModifierLocalProvider = this.provider.findModifierLocalProvider(modifierLocal);
        if (findModifierLocalProvider == null) {
            return modifierLocal.getDefaultFactory$ui_release().invoke();
        }
        return (T) findModifierLocalProvider.getValue();
    }

    @NotNull
    public final ModifierLocalConsumer getModifier() {
        return this.modifier;
    }

    @NotNull
    public final ModifierLocalProviderEntity getProvider() {
        return this.provider;
    }

    public final void invalidateConsumer() {
        Owner owner$ui_release = this.provider.getLayoutNode().getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.registerOnEndApplyChangesListener(this);
        }
    }

    public final void invalidateConsumersOf(@NotNull ModifierLocal<?> local) {
        Owner owner$ui_release;
        Intrinsics.checkNotNullParameter(local, "local");
        if (this.modifierLocalsRead.contains(local) && (owner$ui_release = this.provider.getLayoutNode().getOwner$ui_release()) != null) {
            owner$ui_release.registerOnEndApplyChangesListener(this);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    public final boolean isAttached() {
        return this.isAttached;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return this.isAttached;
    }

    public final void notifyConsumerOfChanges() {
        if (!this.isAttached) {
            return;
        }
        this.modifierLocalsRead.clear();
        LayoutNodeKt.requireOwner(this.provider.getLayoutNode()).getSnapshotObserver().observeReads$ui_release(this, onReadValuesChanged, new Function0<Unit>() { // from class: androidx.compose.ui.node.ModifierLocalConsumerEntity$notifyConsumerOfChanges$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ModifierLocalConsumerEntity.this.getModifier().onModifierLocalsUpdated(ModifierLocalConsumerEntity.this);
            }
        });
    }

    public final void setProvider(@NotNull ModifierLocalProviderEntity modifierLocalProviderEntity) {
        Intrinsics.checkNotNullParameter(modifierLocalProviderEntity, "<set-?>");
        this.provider = modifierLocalProviderEntity;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2() {
        notifyConsumerOfChanges();
    }
}
