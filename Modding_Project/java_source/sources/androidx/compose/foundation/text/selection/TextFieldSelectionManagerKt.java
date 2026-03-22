package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldSelectionManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldSelectionManagerKt {

    /* compiled from: TextFieldSelectionManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            iArr[Handle.Cursor.ordinal()] = 1;
            iArr[Handle.SelectionStart.ordinal()] = 2;
            iArr[Handle.SelectionEnd.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void TextFieldSelectionHandle(final boolean z10, @NotNull final ResolvedTextDirection direction, @NotNull final TextFieldSelectionManager manager, @Nullable Composer composer, final int i10) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Composer startRestartGroup = composer.startRestartGroup(-1344558920);
        Boolean valueOf = Boolean.valueOf(z10);
        startRestartGroup.startReplaceableGroup(511388516);
        boolean changed = startRestartGroup.changed(valueOf) | startRestartGroup.changed(manager);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = manager.handleDragObserver$foundation_release(z10);
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
        int i11 = i10 << 3;
        AndroidSelectionHandles_androidKt.m805SelectionHandle8fL75g(manager.m893getHandlePositiontuRUvjQ$foundation_release(z10), z10, direction, TextRange.m3696getReversedimpl(manager.getValue$foundation_release().m3874getSelectiond9O1mEE()), SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, textDragObserver, new TextFieldSelectionManagerKt$TextFieldSelectionHandle$1(textDragObserver, null)), null, startRestartGroup, (i11 & 112) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i11 & 896));
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i12) {
                    TextFieldSelectionManagerKt.TextFieldSelectionHandle(z10, direction, manager, composer2, i10 | 1);
                }
            });
        }
    }

    /* renamed from: calculateSelectionMagnifierCenterAndroid-O0kMr_c  reason: not valid java name */
    public static final long m894calculateSelectionMagnifierCenterAndroidO0kMr_c(@NotNull TextFieldSelectionManager manager, long j10) {
        int i10;
        int m3697getStartimpl;
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        LayoutCoordinates layoutCoordinates;
        TextLayoutResultProxy layoutResult2;
        LayoutCoordinates innerTextFieldCoordinates;
        boolean z10;
        Intrinsics.checkNotNullParameter(manager, "manager");
        if (manager.getValue$foundation_release().getText().length() == 0) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        Handle draggingHandle = manager.getDraggingHandle();
        if (draggingHandle == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$0[draggingHandle.ordinal()];
        }
        if (i10 != -1) {
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    m3697getStartimpl = TextRange.m3692getEndimpl(manager.getValue$foundation_release().m3874getSelectiond9O1mEE());
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                m3697getStartimpl = TextRange.m3697getStartimpl(manager.getValue$foundation_release().m3874getSelectiond9O1mEE());
            }
            int o10 = e.o(manager.getOffsetMapping$foundation_release().originalToTransformed(m3697getStartimpl), StringsKt.j0(manager.getValue$foundation_release().getText()));
            TextFieldState state$foundation_release = manager.getState$foundation_release();
            if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                long m1636getCenterF1C5BW0 = value.getBoundingBox(o10).m1636getCenterF1C5BW0();
                TextFieldState state$foundation_release2 = manager.getState$foundation_release();
                if (state$foundation_release2 != null && (layoutCoordinates = state$foundation_release2.getLayoutCoordinates()) != null) {
                    TextFieldState state$foundation_release3 = manager.getState$foundation_release();
                    if (state$foundation_release3 != null && (layoutResult2 = state$foundation_release3.getLayoutResult()) != null && (innerTextFieldCoordinates = layoutResult2.getInnerTextFieldCoordinates()) != null) {
                        Offset m891getCurrentDragPosition_m7T9E = manager.m891getCurrentDragPosition_m7T9E();
                        if (m891getCurrentDragPosition_m7T9E != null) {
                            float m1606getXimpl = Offset.m1606getXimpl(innerTextFieldCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates, m891getCurrentDragPosition_m7T9E.m1616unboximpl()));
                            int lineForOffset = value.getLineForOffset(o10);
                            int lineStart = value.getLineStart(lineForOffset);
                            int lineEnd = value.getLineEnd(lineForOffset, true);
                            if (TextRange.m3697getStartimpl(manager.getValue$foundation_release().m3874getSelectiond9O1mEE()) > TextRange.m3692getEndimpl(manager.getValue$foundation_release().m3874getSelectiond9O1mEE())) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            float horizontalPosition = TextSelectionDelegateKt.getHorizontalPosition(value, lineStart, true, z10);
                            float horizontalPosition2 = TextSelectionDelegateKt.getHorizontalPosition(value, lineEnd, false, z10);
                            float m10 = e.m(m1606getXimpl, Math.min(horizontalPosition, horizontalPosition2), Math.max(horizontalPosition, horizontalPosition2));
                            if (Math.abs(m1606getXimpl - m10) > IntSize.m4209getWidthimpl(j10) / 2) {
                                return Offset.Companion.m1621getUnspecifiedF1C5BW0();
                            }
                            return layoutCoordinates.mo3338localPositionOfR5De75A(innerTextFieldCoordinates, OffsetKt.Offset(m10, Offset.m1607getYimpl(m1636getCenterF1C5BW0)));
                        }
                        return Offset.Companion.m1621getUnspecifiedF1C5BW0();
                    }
                    return Offset.Companion.m1621getUnspecifiedF1C5BW0();
                }
                return Offset.Companion.m1621getUnspecifiedF1C5BW0();
            }
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        return Offset.Companion.m1621getUnspecifiedF1C5BW0();
    }

    public static final boolean isSelectionHandleInVisibleBound(@NotNull TextFieldSelectionManager textFieldSelectionManager, boolean z10) {
        LayoutCoordinates layoutCoordinates;
        Rect visibleBounds;
        Intrinsics.checkNotNullParameter(textFieldSelectionManager, "<this>");
        TextFieldState state$foundation_release = textFieldSelectionManager.getState$foundation_release();
        if (state$foundation_release != null && (layoutCoordinates = state$foundation_release.getLayoutCoordinates()) != null && (visibleBounds = SelectionManagerKt.visibleBounds(layoutCoordinates)) != null) {
            return SelectionManagerKt.m869containsInclusiveUv8p0NA(visibleBounds, textFieldSelectionManager.m893getHandlePositiontuRUvjQ$foundation_release(z10));
        }
        return false;
    }
}
