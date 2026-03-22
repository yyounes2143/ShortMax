package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusPropertiesKt {
    @NotNull
    private static final ProvidableModifierLocal<FocusPropertiesModifier> ModifierLocalFocusProperties = ModifierLocalKt.modifierLocalOf(new Function0<FocusPropertiesModifier>() { // from class: androidx.compose.ui.focus.FocusPropertiesKt$ModifierLocalFocusProperties$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final FocusPropertiesModifier invoke() {
            return null;
        }
    });

    public static final void clear(@NotNull FocusProperties focusProperties) {
        Intrinsics.checkNotNullParameter(focusProperties, "<this>");
        focusProperties.setCanFocus(true);
        FocusRequester.Companion companion = FocusRequester.Companion;
        focusProperties.setNext(companion.getDefault());
        focusProperties.setPrevious(companion.getDefault());
        focusProperties.setUp(companion.getDefault());
        focusProperties.setDown(companion.getDefault());
        focusProperties.setLeft(companion.getDefault());
        focusProperties.setRight(companion.getDefault());
        focusProperties.setStart(companion.getDefault());
        focusProperties.setEnd(companion.getDefault());
    }

    @NotNull
    public static final Modifier focusProperties(@NotNull Modifier modifier, @NotNull final Function1<? super FocusProperties, Unit> scope) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(scope, "scope");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.focus.FocusPropertiesKt$focusProperties$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("focusProperties");
                    inspectorInfo.getProperties().set(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new FocusPropertiesModifier(scope, noInspectorInfo));
    }

    @NotNull
    public static final ProvidableModifierLocal<FocusPropertiesModifier> getModifierLocalFocusProperties() {
        return ModifierLocalFocusProperties;
    }

    public static final void refreshFocusProperties(@NotNull final FocusModifier focusModifier) {
        OwnerSnapshotObserver snapshotObserver;
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapper = focusModifier.getLayoutNodeWrapper();
        if (layoutNodeWrapper == null) {
            return;
        }
        clear(focusModifier.getFocusProperties());
        Owner owner$ui_release = layoutNodeWrapper.getLayoutNode$ui_release().getOwner$ui_release();
        if (owner$ui_release != null && (snapshotObserver = owner$ui_release.getSnapshotObserver()) != null) {
            snapshotObserver.observeReads$ui_release(focusModifier, FocusModifier.Companion.getRefreshFocusProperties(), new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusPropertiesKt$refreshFocusProperties$1
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
                    FocusPropertiesModifier focusPropertiesModifier = FocusModifier.this.getFocusPropertiesModifier();
                    if (focusPropertiesModifier != null) {
                        focusPropertiesModifier.calculateProperties(FocusModifier.this.getFocusProperties());
                    }
                }
            });
        }
        setUpdatedProperties(focusModifier, focusModifier.getFocusProperties());
    }

    public static final void setUpdatedProperties(@NotNull FocusModifier focusModifier, @NotNull FocusProperties properties) {
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        Intrinsics.checkNotNullParameter(properties, "properties");
        if (properties.getCanFocus()) {
            FocusTransactionsKt.activateNode(focusModifier);
        } else {
            FocusTransactionsKt.deactivateNode(focusModifier);
        }
    }
}
