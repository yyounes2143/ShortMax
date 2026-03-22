package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusModifierKt;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableModifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Focusable.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusableKt {
    @NotNull
    private static final InspectableModifier focusGroupInspectorInfo;

    static {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.FocusableKt$special$$inlined$debugInspectorInfo$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("focusGroup");
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        focusGroupInspectorInfo = new InspectableModifier(noInspectorInfo);
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier focusGroup(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return FocusModifierKt.focusTarget(FocusPropertiesKt.focusProperties(modifier.then(focusGroupInspectorInfo), new Function1<FocusProperties, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusGroup$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FocusProperties focusProperties) {
                invoke2(focusProperties);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull FocusProperties focusProperties) {
                Intrinsics.checkNotNullParameter(focusProperties, "$this$focusProperties");
                focusProperties.setCanFocus(false);
            }
        }));
    }

    @NotNull
    public static final Modifier focusable(@NotNull Modifier modifier, final boolean z10, @Nullable final MutableInteractionSource mutableInteractionSource) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusable$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("focusable");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new FocusableKt$focusable$2(mutableInteractionSource, z10));
    }

    public static /* synthetic */ Modifier focusable$default(Modifier modifier, boolean z10, MutableInteractionSource mutableInteractionSource, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            mutableInteractionSource = null;
        }
        return focusable(modifier, z10, mutableInteractionSource);
    }

    @NotNull
    public static final Modifier focusableInNonTouchMode(@NotNull Modifier modifier, final boolean z10, @Nullable final MutableInteractionSource mutableInteractionSource) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusableInNonTouchMode$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("focusableInNonTouchMode");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.FocusableKt$focusableInNonTouchMode$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-618949501);
                final InputModeManager inputModeManager = (InputModeManager) composer.consume(CompositionLocalsKt.getLocalInputModeManager());
                Modifier focusable = FocusableKt.focusable(FocusPropertiesKt.focusProperties(Modifier.Companion, new Function1<FocusProperties, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusableInNonTouchMode$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(FocusProperties focusProperties) {
                        invoke2(focusProperties);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull FocusProperties focusProperties) {
                        Intrinsics.checkNotNullParameter(focusProperties, "$this$focusProperties");
                        focusProperties.setCanFocus(!InputMode.m2469equalsimpl0(InputModeManager.this.mo2475getInputModeaOaMEAU(), InputMode.Companion.m2474getTouchaOaMEAU()));
                    }
                }), z10, mutableInteractionSource);
                composer.endReplaceableGroup();
                return focusable;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Stable
    @ExperimentalFoundationApi
    public static final Modifier onPinnableParentAvailable(Modifier modifier, final Function1<? super PinnableParent, Unit> function1) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.FocusableKt$onPinnableParentAvailable$$inlined$debugInspectorInfo$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("onPinnableParentAvailable");
                    inspectorInfo.getProperties().set("onPinnableParentAvailable", Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return InspectableValueKt.inspectableWrapper(modifier, noInspectorInfo, Modifier.Companion.then(new PinnableParentConsumer(function1)));
    }
}
