package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.input.focus.FocusAwareInputModifier;
import androidx.compose.ui.input.key.KeyInputModifier;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.rotary.RotaryInputModifierKt;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusModifier extends InspectorValueInfo implements ModifierLocalConsumer, ModifierLocalProvider<FocusModifier>, OwnerScope, OnPlacedModifier {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function1<FocusModifier, Unit> RefreshFocusProperties = new Function1<FocusModifier, Unit>() { // from class: androidx.compose.ui.focus.FocusModifier$Companion$RefreshFocusProperties$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(FocusModifier focusModifier) {
            invoke2(focusModifier);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull FocusModifier focusModifier) {
            Intrinsics.checkNotNullParameter(focusModifier, "focusModifier");
            FocusPropertiesKt.refreshFocusProperties(focusModifier);
        }
    };
    @Nullable
    private BeyondBoundsLayout beyondBoundsLayoutParent;
    @NotNull
    private final MutableVector<FocusModifier> children;
    @Nullable
    private FocusEventModifierLocal focusEventListener;
    @NotNull
    private final FocusProperties focusProperties;
    @Nullable
    private FocusPropertiesModifier focusPropertiesModifier;
    private boolean focusRequestedOnPlaced;
    @Nullable
    private FocusRequesterModifierLocal focusRequester;
    @NotNull
    private FocusStateImpl focusState;
    @Nullable
    private FocusModifier focusedChild;
    @NotNull
    private final MutableVector<KeyInputModifier> keyInputChildren;
    @Nullable
    private KeyInputModifier keyInputModifier;
    @Nullable
    private LayoutNodeWrapper layoutNodeWrapper;
    public ModifierLocalReadScope modifierLocalReadScope;
    @Nullable
    private FocusModifier parent;
    @Nullable
    private FocusAwareInputModifier<RotaryScrollEvent> rotaryScrollParent;

    /* compiled from: FocusModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Function1<FocusModifier, Unit> getRefreshFocusProperties() {
            return FocusModifier.RefreshFocusProperties;
        }

        private Companion() {
        }
    }

    /* compiled from: FocusModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.Captured.ordinal()] = 2;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ FocusModifier(FocusStateImpl focusStateImpl, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(focusStateImpl, (i10 & 2) != 0 ? InspectableValueKt.getNoInspectorInfo() : function1);
    }

    @Nullable
    public final BeyondBoundsLayout getBeyondBoundsLayoutParent() {
        return this.beyondBoundsLayoutParent;
    }

    @NotNull
    public final MutableVector<FocusModifier> getChildren() {
        return this.children;
    }

    @Nullable
    public final FocusEventModifierLocal getFocusEventListener() {
        return this.focusEventListener;
    }

    @NotNull
    public final FocusProperties getFocusProperties() {
        return this.focusProperties;
    }

    @Nullable
    public final FocusPropertiesModifier getFocusPropertiesModifier() {
        return this.focusPropertiesModifier;
    }

    public final boolean getFocusRequestedOnPlaced() {
        return this.focusRequestedOnPlaced;
    }

    @Nullable
    public final FocusRequesterModifierLocal getFocusRequester() {
        return this.focusRequester;
    }

    @NotNull
    public final FocusStateImpl getFocusState() {
        return this.focusState;
    }

    @Nullable
    public final FocusModifier getFocusedChild() {
        return this.focusedChild;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusModifier> getKey() {
        return FocusModifierKt.getModifierLocalParentFocusModifier();
    }

    @NotNull
    public final MutableVector<KeyInputModifier> getKeyInputChildren() {
        return this.keyInputChildren;
    }

    @Nullable
    public final KeyInputModifier getKeyInputModifier() {
        return this.keyInputModifier;
    }

    @Nullable
    public final LayoutNodeWrapper getLayoutNodeWrapper() {
        return this.layoutNodeWrapper;
    }

    @NotNull
    public final ModifierLocalReadScope getModifierLocalReadScope() {
        ModifierLocalReadScope modifierLocalReadScope = this.modifierLocalReadScope;
        if (modifierLocalReadScope != null) {
            return modifierLocalReadScope;
        }
        Intrinsics.throwUninitializedPropertyAccessException("modifierLocalReadScope");
        return null;
    }

    @Nullable
    public final FocusModifier getParent() {
        return this.parent;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public FocusModifier getValue() {
        return this;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        if (this.parent != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        MutableVector<FocusModifier> mutableVector;
        MutableVector<FocusModifier> mutableVector2;
        LayoutNodeWrapper layoutNodeWrapper;
        LayoutNode layoutNode$ui_release;
        Owner owner$ui_release;
        FocusManager focusManager;
        Intrinsics.checkNotNullParameter(scope, "scope");
        setModifierLocalReadScope(scope);
        FocusModifier focusModifier = (FocusModifier) scope.getCurrent(FocusModifierKt.getModifierLocalParentFocusModifier());
        if (!Intrinsics.areEqual(focusModifier, this.parent)) {
            if (focusModifier == null) {
                int i10 = WhenMappings.$EnumSwitchMapping$0[this.focusState.ordinal()];
                if ((i10 == 1 || i10 == 2) && (layoutNodeWrapper = this.layoutNodeWrapper) != null && (layoutNode$ui_release = layoutNodeWrapper.getLayoutNode$ui_release()) != null && (owner$ui_release = layoutNode$ui_release.getOwner$ui_release()) != null && (focusManager = owner$ui_release.getFocusManager()) != null) {
                    focusManager.clearFocus(true);
                }
            }
            FocusModifier focusModifier2 = this.parent;
            if (focusModifier2 != null && (mutableVector2 = focusModifier2.children) != null) {
                mutableVector2.remove(this);
            }
            if (focusModifier != null && (mutableVector = focusModifier.children) != null) {
                mutableVector.add(this);
            }
        }
        this.parent = focusModifier;
        FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) scope.getCurrent(FocusEventModifierKt.getModifierLocalFocusEvent());
        if (!Intrinsics.areEqual(focusEventModifierLocal, this.focusEventListener)) {
            FocusEventModifierLocal focusEventModifierLocal2 = this.focusEventListener;
            if (focusEventModifierLocal2 != null) {
                focusEventModifierLocal2.removeFocusModifier(this);
            }
            if (focusEventModifierLocal != null) {
                focusEventModifierLocal.addFocusModifier(this);
            }
        }
        this.focusEventListener = focusEventModifierLocal;
        FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) scope.getCurrent(FocusRequesterModifierKt.getModifierLocalFocusRequester());
        if (!Intrinsics.areEqual(focusRequesterModifierLocal, this.focusRequester)) {
            FocusRequesterModifierLocal focusRequesterModifierLocal2 = this.focusRequester;
            if (focusRequesterModifierLocal2 != null) {
                focusRequesterModifierLocal2.removeFocusModifier(this);
            }
            if (focusRequesterModifierLocal != null) {
                focusRequesterModifierLocal.addFocusModifier(this);
            }
        }
        this.focusRequester = focusRequesterModifierLocal;
        this.rotaryScrollParent = (FocusAwareInputModifier) scope.getCurrent(RotaryInputModifierKt.getModifierLocalRotaryScrollParent());
        this.beyondBoundsLayoutParent = (BeyondBoundsLayout) scope.getCurrent(androidx.compose.ui.layout.BeyondBoundsLayoutKt.getModifierLocalBeyondBoundsLayout());
        this.keyInputModifier = (KeyInputModifier) scope.getCurrent(KeyInputModifierKt.getModifierLocalKeyInput());
        this.focusPropertiesModifier = (FocusPropertiesModifier) scope.getCurrent(FocusPropertiesKt.getModifierLocalFocusProperties());
        FocusPropertiesKt.refreshFocusProperties(this);
    }

    @Override // androidx.compose.ui.layout.OnPlacedModifier
    public void onPlaced(@NotNull LayoutCoordinates coordinates) {
        boolean z10;
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        if (this.layoutNodeWrapper == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.layoutNodeWrapper = (LayoutNodeWrapper) coordinates;
        if (z10) {
            FocusPropertiesKt.refreshFocusProperties(this);
        }
        if (this.focusRequestedOnPlaced) {
            this.focusRequestedOnPlaced = false;
            FocusTransactionsKt.requestFocus(this);
        }
    }

    @ExperimentalComposeUiApi
    public final boolean propagateRotaryEvent(@NotNull RotaryScrollEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FocusAwareInputModifier<RotaryScrollEvent> focusAwareInputModifier = this.rotaryScrollParent;
        if (focusAwareInputModifier != null) {
            return focusAwareInputModifier.propagateFocusAwareEvent(event);
        }
        return false;
    }

    public final void setBeyondBoundsLayoutParent(@Nullable BeyondBoundsLayout beyondBoundsLayout) {
        this.beyondBoundsLayoutParent = beyondBoundsLayout;
    }

    public final void setFocusEventListener(@Nullable FocusEventModifierLocal focusEventModifierLocal) {
        this.focusEventListener = focusEventModifierLocal;
    }

    public final void setFocusPropertiesModifier(@Nullable FocusPropertiesModifier focusPropertiesModifier) {
        this.focusPropertiesModifier = focusPropertiesModifier;
    }

    public final void setFocusRequestedOnPlaced(boolean z10) {
        this.focusRequestedOnPlaced = z10;
    }

    public final void setFocusRequester(@Nullable FocusRequesterModifierLocal focusRequesterModifierLocal) {
        this.focusRequester = focusRequesterModifierLocal;
    }

    public final void setFocusState(@NotNull FocusStateImpl value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.focusState = value;
        FocusTransactionsKt.sendOnFocusEvent(this);
    }

    public final void setFocusedChild(@Nullable FocusModifier focusModifier) {
        this.focusedChild = focusModifier;
    }

    public final void setLayoutNodeWrapper(@Nullable LayoutNodeWrapper layoutNodeWrapper) {
        this.layoutNodeWrapper = layoutNodeWrapper;
    }

    public final void setModifierLocalReadScope(@NotNull ModifierLocalReadScope modifierLocalReadScope) {
        Intrinsics.checkNotNullParameter(modifierLocalReadScope, "<set-?>");
        this.modifierLocalReadScope = modifierLocalReadScope;
    }

    public final void setParent(@Nullable FocusModifier focusModifier) {
        this.parent = focusModifier;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusModifier(@NotNull FocusStateImpl initialFocus, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(initialFocus, "initialFocus");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.children = new MutableVector<>(new FocusModifier[16], 0);
        this.focusState = initialFocus;
        this.focusProperties = new FocusPropertiesImpl();
        this.keyInputChildren = new MutableVector<>(new KeyInputModifier[16], 0);
    }

    private static /* synthetic */ void getRotaryScrollParent$annotations() {
    }
}
