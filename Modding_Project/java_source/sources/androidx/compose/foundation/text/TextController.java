package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate;
import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoreText.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextController implements RememberObserver {
    @NotNull
    private final Modifier coreModifiers;
    public TextDragObserver longPressDragObserver;
    @NotNull
    private final MeasurePolicy measurePolicy;
    @NotNull
    private Modifier selectionModifiers;
    @Nullable
    private SelectionRegistrar selectionRegistrar;
    @NotNull
    private Modifier semanticsModifier;
    @NotNull
    private final TextState state;

    public TextController(@NotNull TextState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
        this.measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.TextController$measurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return IntSize.m4208getHeightimpl(TextDelegate.m767layoutNN6EwU$default(TextController.this.getState().getTextDelegate(), ConstraintsKt.Constraints(0, i10, 0, Integer.MAX_VALUE), intrinsicMeasureScope.getLayoutDirection(), null, 4, null).m3683getSizeYbymL2g());
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                TextController.this.getState().getTextDelegate().layoutIntrinsics(intrinsicMeasureScope.getLayoutDirection());
                return TextController.this.getState().getTextDelegate().getMaxIntrinsicWidth();
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x005b, code lost:
                r3 = r5.selectionRegistrar;
             */
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @org.jetbrains.annotations.NotNull
            /* renamed from: measure-3p2s80s */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public androidx.compose.ui.layout.MeasureResult mo42measure3p2s80s(@org.jetbrains.annotations.NotNull androidx.compose.ui.layout.MeasureScope r19, @org.jetbrains.annotations.NotNull java.util.List<? extends androidx.compose.ui.layout.Measurable> r20, long r21) {
                /*
                    Method dump skipped, instructions count: 322
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.TextController$measurePolicy$1.mo42measure3p2s80s(androidx.compose.ui.layout.MeasureScope, java.util.List, long):androidx.compose.ui.layout.MeasureResult");
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return IntSize.m4208getHeightimpl(TextDelegate.m767layoutNN6EwU$default(TextController.this.getState().getTextDelegate(), ConstraintsKt.Constraints(0, i10, 0, Integer.MAX_VALUE), intrinsicMeasureScope.getLayoutDirection(), null, 4, null).m3683getSizeYbymL2g());
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                TextController.this.getState().getTextDelegate().layoutIntrinsics(intrinsicMeasureScope.getLayoutDirection());
                return TextController.this.getState().getTextDelegate().getMinIntrinsicWidth();
            }
        };
        Modifier.Companion companion = Modifier.Companion;
        this.coreModifiers = OnGloballyPositionedModifierKt.onGloballyPositioned(drawTextAndSelectionBehind(companion), new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.foundation.text.TextController$coreModifiers$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                invoke2(layoutCoordinates);
                return Unit.f60915a;
            }

            /* JADX WARN: Code restructure failed: missing block: B:6:0x0038, code lost:
                r5 = r4.this$0.selectionRegistrar;
             */
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke2(@org.jetbrains.annotations.NotNull androidx.compose.ui.layout.LayoutCoordinates r5) {
                /*
                    r4 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                    androidx.compose.foundation.text.TextController r0 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.TextState r0 = r0.getState()
                    r0.setLayoutCoordinates(r5)
                    androidx.compose.foundation.text.TextController r0 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.selection.SelectionRegistrar r0 = androidx.compose.foundation.text.TextController.access$getSelectionRegistrar$p(r0)
                    androidx.compose.foundation.text.TextController r1 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.TextState r1 = r1.getState()
                    long r1 = r1.getSelectableId()
                    boolean r0 = androidx.compose.foundation.text.selection.SelectionRegistrarKt.hasSelection(r0, r1)
                    if (r0 == 0) goto L56
                    long r0 = androidx.compose.ui.layout.LayoutCoordinatesKt.positionInWindow(r5)
                    androidx.compose.foundation.text.TextController r5 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.TextState r5 = r5.getState()
                    long r2 = r5.m800getPreviousGlobalPositionF1C5BW0()
                    boolean r5 = androidx.compose.ui.geometry.Offset.m1603equalsimpl0(r0, r2)
                    if (r5 != 0) goto L4d
                    androidx.compose.foundation.text.TextController r5 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.selection.SelectionRegistrar r5 = androidx.compose.foundation.text.TextController.access$getSelectionRegistrar$p(r5)
                    if (r5 == 0) goto L4d
                    androidx.compose.foundation.text.TextController r2 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.TextState r2 = r2.getState()
                    long r2 = r2.getSelectableId()
                    r5.notifyPositionChange(r2)
                L4d:
                    androidx.compose.foundation.text.TextController r5 = androidx.compose.foundation.text.TextController.this
                    androidx.compose.foundation.text.TextState r5 = r5.getState()
                    r5.m802setPreviousGlobalPositionk4lQ0M(r0)
                L56:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.TextController$coreModifiers$1.invoke2(androidx.compose.ui.layout.LayoutCoordinates):void");
            }
        });
        this.semanticsModifier = createSemanticsModifierFor(state.getTextDelegate().getText());
        this.selectionModifiers = companion;
    }

    private final Modifier createSemanticsModifierFor(final AnnotatedString annotatedString) {
        return SemanticsModifierKt.semantics$default(Modifier.Companion, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.text.TextController$createSemanticsModifierFor$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                SemanticsPropertiesKt.setText(semantics, AnnotatedString.this);
                final TextController textController = this;
                SemanticsPropertiesKt.getTextLayoutResult$default(semantics, null, new Function1<List<TextLayoutResult>, Boolean>() { // from class: androidx.compose.foundation.text.TextController$createSemanticsModifierFor$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull List<TextLayoutResult> it) {
                        boolean z10;
                        Intrinsics.checkNotNullParameter(it, "it");
                        if (TextController.this.getState().getLayoutResult() != null) {
                            TextLayoutResult layoutResult = TextController.this.getState().getLayoutResult();
                            Intrinsics.checkNotNull(layoutResult);
                            it.add(layoutResult);
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        return Boolean.valueOf(z10);
                    }
                }, 1, null);
            }
        }, 1, null);
    }

    @Stable
    private final Modifier drawTextAndSelectionBehind(Modifier modifier) {
        return DrawModifierKt.drawBehind(GraphicsLayerModifierKt.m1979graphicsLayerpANQ8Wg$default(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65535, null), new Function1<DrawScope, Unit>() { // from class: androidx.compose.foundation.text.TextController$drawTextAndSelectionBehind$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                invoke2(drawScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull DrawScope drawBehind) {
                SelectionRegistrar selectionRegistrar;
                int offset;
                int offset2;
                Map<Long, Selection> subselections;
                Intrinsics.checkNotNullParameter(drawBehind, "$this$drawBehind");
                TextLayoutResult layoutResult = TextController.this.getState().getLayoutResult();
                if (layoutResult != null) {
                    TextController textController = TextController.this;
                    textController.getState().getDrawScopeInvalidation();
                    selectionRegistrar = textController.selectionRegistrar;
                    Selection selection = (selectionRegistrar == null || (subselections = selectionRegistrar.getSubselections()) == null) ? null : subselections.get(Long.valueOf(textController.getState().getSelectableId()));
                    if (selection != null) {
                        if (!selection.getHandlesCrossed()) {
                            offset = selection.getStart().getOffset();
                        } else {
                            offset = selection.getEnd().getOffset();
                        }
                        if (!selection.getHandlesCrossed()) {
                            offset2 = selection.getEnd().getOffset();
                        } else {
                            offset2 = selection.getStart().getOffset();
                        }
                        if (offset != offset2) {
                            DrawScope.m2327drawPathLG529CI$default(drawBehind, layoutResult.getMultiParagraph().getPathForRange(offset, offset2), textController.getState().m801getSelectionBackgroundColor0d7_KjU(), 0.0f, null, null, 0, 60, null);
                        }
                    }
                    TextDelegate.Companion.paint(drawBehind.getDrawContext().getCanvas(), layoutResult);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: outOfBoundary-0a9Yr6o  reason: not valid java name */
    public final boolean m759outOfBoundary0a9Yr6o(long j10, long j11) {
        TextLayoutResult layoutResult = this.state.getLayoutResult();
        if (layoutResult == null) {
            return false;
        }
        int length = layoutResult.getLayoutInput().getText().getText().length();
        int m3682getOffsetForPositionk4lQ0M = layoutResult.m3682getOffsetForPositionk4lQ0M(j10);
        int m3682getOffsetForPositionk4lQ0M2 = layoutResult.m3682getOffsetForPositionk4lQ0M(j11);
        int i10 = length - 1;
        if ((m3682getOffsetForPositionk4lQ0M < i10 || m3682getOffsetForPositionk4lQ0M2 < i10) && (m3682getOffsetForPositionk4lQ0M >= 0 || m3682getOffsetForPositionk4lQ0M2 >= 0)) {
            return false;
        }
        return true;
    }

    @NotNull
    public final TextDragObserver getLongPressDragObserver() {
        TextDragObserver textDragObserver = this.longPressDragObserver;
        if (textDragObserver != null) {
            return textDragObserver;
        }
        Intrinsics.throwUninitializedPropertyAccessException("longPressDragObserver");
        return null;
    }

    @NotNull
    public final MeasurePolicy getMeasurePolicy() {
        return this.measurePolicy;
    }

    @NotNull
    public final Modifier getModifiers() {
        return this.coreModifiers.then(this.semanticsModifier).then(this.selectionModifiers);
    }

    @NotNull
    public final Modifier getSemanticsModifier$foundation_release() {
        return this.semanticsModifier;
    }

    @NotNull
    public final TextState getState() {
        return this.state;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        SelectionRegistrar selectionRegistrar;
        Selectable selectable = this.state.getSelectable();
        if (selectable != null && (selectionRegistrar = this.selectionRegistrar) != null) {
            selectionRegistrar.unsubscribe(selectable);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        SelectionRegistrar selectionRegistrar;
        Selectable selectable = this.state.getSelectable();
        if (selectable != null && (selectionRegistrar = this.selectionRegistrar) != null) {
            selectionRegistrar.unsubscribe(selectable);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        SelectionRegistrar selectionRegistrar = this.selectionRegistrar;
        if (selectionRegistrar != null) {
            TextState textState = this.state;
            textState.setSelectable(selectionRegistrar.subscribe(new MultiWidgetSelectionDelegate(textState.getSelectableId(), new Function0<LayoutCoordinates>() { // from class: androidx.compose.foundation.text.TextController$onRemembered$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final LayoutCoordinates invoke() {
                    return TextController.this.getState().getLayoutCoordinates();
                }
            }, new Function0<TextLayoutResult>() { // from class: androidx.compose.foundation.text.TextController$onRemembered$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final TextLayoutResult invoke() {
                    return TextController.this.getState().getLayoutResult();
                }
            })));
        }
    }

    public final void setLongPressDragObserver(@NotNull TextDragObserver textDragObserver) {
        Intrinsics.checkNotNullParameter(textDragObserver, "<set-?>");
        this.longPressDragObserver = textDragObserver;
    }

    public final void setTextDelegate(@NotNull TextDelegate textDelegate) {
        Intrinsics.checkNotNullParameter(textDelegate, "textDelegate");
        if (this.state.getTextDelegate() == textDelegate) {
            return;
        }
        this.state.setTextDelegate(textDelegate);
        this.semanticsModifier = createSemanticsModifierFor(this.state.getTextDelegate().getText());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.text.TextController$update$mouseSelectionObserver$1, java.lang.Object] */
    public final void update(@Nullable final SelectionRegistrar selectionRegistrar) {
        Modifier modifier;
        this.selectionRegistrar = selectionRegistrar;
        if (selectionRegistrar != null) {
            if (TouchMode_androidKt.isInTouchMode()) {
                setLongPressDragObserver(new TextDragObserver() { // from class: androidx.compose.foundation.text.TextController$update$1
                    private long dragTotalDistance;
                    private long lastPosition;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        Offset.Companion companion = Offset.Companion;
                        this.lastPosition = companion.m1622getZeroF1C5BW0();
                        this.dragTotalDistance = companion.m1622getZeroF1C5BW0();
                    }

                    public final long getDragTotalDistance() {
                        return this.dragTotalDistance;
                    }

                    public final long getLastPosition() {
                        return this.lastPosition;
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public void onCancel() {
                        if (SelectionRegistrarKt.hasSelection(selectionRegistrar, TextController.this.getState().getSelectableId())) {
                            selectionRegistrar.notifySelectionUpdateEnd();
                        }
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    /* renamed from: onDrag-k-4lQ0M  reason: not valid java name */
                    public void mo761onDragk4lQ0M(long j10) {
                        boolean m759outOfBoundary0a9Yr6o;
                        LayoutCoordinates layoutCoordinates = TextController.this.getState().getLayoutCoordinates();
                        if (layoutCoordinates != null) {
                            SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                            TextController textController = TextController.this;
                            if (!layoutCoordinates.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, textController.getState().getSelectableId())) {
                                return;
                            }
                            long m1611plusMKHz9U = Offset.m1611plusMKHz9U(this.dragTotalDistance, j10);
                            this.dragTotalDistance = m1611plusMKHz9U;
                            long m1611plusMKHz9U2 = Offset.m1611plusMKHz9U(this.lastPosition, m1611plusMKHz9U);
                            m759outOfBoundary0a9Yr6o = textController.m759outOfBoundary0a9Yr6o(this.lastPosition, m1611plusMKHz9U2);
                            if (!m759outOfBoundary0a9Yr6o && selectionRegistrar2.mo880notifySelectionUpdate5iVPX68(layoutCoordinates, m1611plusMKHz9U2, this.lastPosition, false, SelectionAdjustment.Companion.getCharacterWithWordAccelerate())) {
                                this.lastPosition = m1611plusMKHz9U2;
                                this.dragTotalDistance = Offset.Companion.m1622getZeroF1C5BW0();
                            }
                        }
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    /* renamed from: onStart-k-4lQ0M  reason: not valid java name */
                    public void mo762onStartk4lQ0M(long j10) {
                        boolean m759outOfBoundary0a9Yr6o;
                        LayoutCoordinates layoutCoordinates = TextController.this.getState().getLayoutCoordinates();
                        if (layoutCoordinates != null) {
                            TextController textController = TextController.this;
                            SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                            if (layoutCoordinates.isAttached()) {
                                m759outOfBoundary0a9Yr6o = textController.m759outOfBoundary0a9Yr6o(j10, j10);
                                if (m759outOfBoundary0a9Yr6o) {
                                    selectionRegistrar2.notifySelectionUpdateSelectAll(textController.getState().getSelectableId());
                                } else {
                                    selectionRegistrar2.mo881notifySelectionUpdateStartd4ec7I(layoutCoordinates, j10, SelectionAdjustment.Companion.getWord());
                                }
                                this.lastPosition = j10;
                            } else {
                                return;
                            }
                        }
                        if (!SelectionRegistrarKt.hasSelection(selectionRegistrar, TextController.this.getState().getSelectableId())) {
                            return;
                        }
                        this.dragTotalDistance = Offset.Companion.m1622getZeroF1C5BW0();
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public void onStop() {
                        if (SelectionRegistrarKt.hasSelection(selectionRegistrar, TextController.this.getState().getSelectableId())) {
                            selectionRegistrar.notifySelectionUpdateEnd();
                        }
                    }

                    public final void setDragTotalDistance(long j10) {
                        this.dragTotalDistance = j10;
                    }

                    public final void setLastPosition(long j10) {
                        this.lastPosition = j10;
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public void onUp() {
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    /* renamed from: onDown-k-4lQ0M  reason: not valid java name */
                    public void mo760onDownk4lQ0M(long j10) {
                    }
                });
                modifier = SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, getLongPressDragObserver(), new TextController$update$2(this, null));
            } else {
                ?? r02 = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.TextController$update$mouseSelectionObserver$1
                    private long lastPosition = Offset.Companion.m1622getZeroF1C5BW0();

                    public final long getLastPosition() {
                        return this.lastPosition;
                    }

                    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                    /* renamed from: onDrag-3MmeM6k  reason: not valid java name */
                    public boolean mo763onDrag3MmeM6k(long j10, @NotNull SelectionAdjustment adjustment) {
                        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
                        LayoutCoordinates layoutCoordinates = TextController.this.getState().getLayoutCoordinates();
                        if (layoutCoordinates != null) {
                            SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                            TextController textController = TextController.this;
                            if (!layoutCoordinates.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, textController.getState().getSelectableId())) {
                                return false;
                            }
                            if (selectionRegistrar2.mo880notifySelectionUpdate5iVPX68(layoutCoordinates, j10, this.lastPosition, false, adjustment)) {
                                this.lastPosition = j10;
                            }
                        }
                        return true;
                    }

                    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                    /* renamed from: onExtend-k-4lQ0M  reason: not valid java name */
                    public boolean mo764onExtendk4lQ0M(long j10) {
                        LayoutCoordinates layoutCoordinates = TextController.this.getState().getLayoutCoordinates();
                        if (layoutCoordinates == null) {
                            return false;
                        }
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        TextController textController = TextController.this;
                        if (!layoutCoordinates.isAttached()) {
                            return false;
                        }
                        if (selectionRegistrar2.mo880notifySelectionUpdate5iVPX68(layoutCoordinates, j10, this.lastPosition, false, SelectionAdjustment.Companion.getNone())) {
                            this.lastPosition = j10;
                        }
                        return SelectionRegistrarKt.hasSelection(selectionRegistrar2, textController.getState().getSelectableId());
                    }

                    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                    /* renamed from: onExtendDrag-k-4lQ0M  reason: not valid java name */
                    public boolean mo765onExtendDragk4lQ0M(long j10) {
                        LayoutCoordinates layoutCoordinates = TextController.this.getState().getLayoutCoordinates();
                        if (layoutCoordinates != null) {
                            SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                            TextController textController = TextController.this;
                            if (!layoutCoordinates.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, textController.getState().getSelectableId())) {
                                return false;
                            }
                            if (selectionRegistrar2.mo880notifySelectionUpdate5iVPX68(layoutCoordinates, j10, this.lastPosition, false, SelectionAdjustment.Companion.getNone())) {
                                this.lastPosition = j10;
                                return true;
                            }
                            return true;
                        }
                        return true;
                    }

                    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                    /* renamed from: onStart-3MmeM6k  reason: not valid java name */
                    public boolean mo766onStart3MmeM6k(long j10, @NotNull SelectionAdjustment adjustment) {
                        Intrinsics.checkNotNullParameter(adjustment, "adjustment");
                        LayoutCoordinates layoutCoordinates = TextController.this.getState().getLayoutCoordinates();
                        if (layoutCoordinates == null) {
                            return false;
                        }
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        TextController textController = TextController.this;
                        if (!layoutCoordinates.isAttached()) {
                            return false;
                        }
                        selectionRegistrar2.mo881notifySelectionUpdateStartd4ec7I(layoutCoordinates, j10, adjustment);
                        this.lastPosition = j10;
                        return SelectionRegistrarKt.hasSelection(selectionRegistrar2, textController.getState().getSelectableId());
                    }

                    public final void setLastPosition(long j10) {
                        this.lastPosition = j10;
                    }
                };
                modifier = PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, (Object) r02, new TextController$update$3(r02, null)), TextPointerIcon_androidKt.getTextPointerIcon(), false, 2, null);
            }
        } else {
            modifier = Modifier.Companion;
        }
        this.selectionModifiers = modifier;
    }
}
