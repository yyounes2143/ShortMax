package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BringIntoViewResponder.kt */
@Metadata
/* loaded from: classes.dex */
public final class BringIntoViewResponderKt {
    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier bringIntoViewResponder(@NotNull Modifier modifier, @NotNull final BringIntoViewResponder responder) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(responder, "responder");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.relocation.BringIntoViewResponderKt$bringIntoViewResponder$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("bringIntoViewResponder");
                    inspectorInfo.getProperties().set("responder", BringIntoViewResponder.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.relocation.BringIntoViewResponderKt$bringIntoViewResponder$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
                composer.startReplaceableGroup(-852052847);
                BringIntoViewParent rememberDefaultBringIntoViewParent = BringIntoViewResponder_androidKt.rememberDefaultBringIntoViewParent(composer, 0);
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(rememberDefaultBringIntoViewParent);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new BringIntoViewResponderModifier(rememberDefaultBringIntoViewParent);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                BringIntoViewResponderModifier bringIntoViewResponderModifier = (BringIntoViewResponderModifier) rememberedValue;
                bringIntoViewResponderModifier.setResponder(BringIntoViewResponder.this);
                composer.endReplaceableGroup();
                return bringIntoViewResponderModifier;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean completelyOverlaps(Rect rect, Rect rect2) {
        if (rect.getLeft() <= rect2.getLeft() && rect.getTop() <= rect2.getTop() && rect.getRight() >= rect2.getRight() && rect.getBottom() >= rect2.getBottom()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect localRectOf(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, Rect rect) {
        return rect.m1643translatek4lQ0M(layoutCoordinates.localBoundingBoxOf(layoutCoordinates2, false).m1641getTopLeftF1C5BW0());
    }
}
