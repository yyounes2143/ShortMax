package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Transformable.kt */
@Metadata
/* loaded from: classes.dex */
public final class TransformableKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e4  */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.ui.input.pointer.PointerId, T] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:19:0x0065). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitTwoDowns(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, boolean r18, rs.c<? super kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableKt.awaitTwoDowns(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, rs.c):java.lang.Object");
    }

    static /* synthetic */ Object awaitTwoDowns$default(AwaitPointerEventScope awaitPointerEventScope, boolean z10, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return awaitTwoDowns(awaitPointerEventScope, z10, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(2:3|(9:5|6|7|(1:(1:(4:11|12|13|14)(2:17|18))(1:19))(2:23|(1:25)(1:26))|20|(1:22)|12|13|14))|28|6|7|(0)(0)|20|(0)|12|13|14) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f6 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object detectZoom(androidx.compose.ui.input.pointer.PointerInputScope r22, androidx.compose.runtime.State<java.lang.Boolean> r23, androidx.compose.runtime.State<? extends androidx.compose.foundation.gestures.TransformableState> r24, rs.c<? super kotlin.Unit> r25) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableKt.detectZoom(androidx.compose.ui.input.pointer.PointerInputScope, androidx.compose.runtime.State, androidx.compose.runtime.State, rs.c):java.lang.Object");
    }

    @NotNull
    public static final Modifier transformable(@NotNull Modifier modifier, @NotNull final TransformableState state, final boolean z10, final boolean z11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.gestures.TransformableKt$transformable$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("transformable");
                    inspectorInfo.getProperties().set("state", TransformableState.this);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("lockRotationOnZoomPan", Boolean.valueOf(z10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.gestures.TransformableKt$transformable$2
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
                composer.startReplaceableGroup(1509335853);
                State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(TransformableState.this, composer, 0);
                State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z10), composer, 0);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new TransformableKt$transformable$2$block$1$1(rememberUpdatedState2, rememberUpdatedState, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Modifier pointerInput = z11 ? SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, Unit.f60915a, (Function2) rememberedValue) : Modifier.Companion;
                composer.endReplaceableGroup();
                return pointerInput;
            }
        });
    }

    public static /* synthetic */ Modifier transformable$default(Modifier modifier, TransformableState transformableState, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = true;
        }
        return transformable(modifier, transformableState, z10, z11);
    }
}
