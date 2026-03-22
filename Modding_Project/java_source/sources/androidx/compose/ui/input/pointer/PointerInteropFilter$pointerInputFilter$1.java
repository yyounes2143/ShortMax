package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInteropFilter.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInteropFilter$pointerInputFilter$1 extends PointerInputFilter {
    @NotNull
    private PointerInteropFilter.DispatchToViewState state = PointerInteropFilter.DispatchToViewState.Unknown;
    final /* synthetic */ PointerInteropFilter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.this$0 = pointerInteropFilter;
    }

    private final void dispatchToView(PointerEvent pointerEvent) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (changes.get(i10).isConsumed()) {
                if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                    LayoutCoordinates layoutCoordinates$ui_release = getLayoutCoordinates$ui_release();
                    if (layoutCoordinates$ui_release != null) {
                        long mo3339localToRootMKHz9U = layoutCoordinates$ui_release.mo3339localToRootMKHz9U(Offset.Companion.m1622getZeroF1C5BW0());
                        final PointerInteropFilter pointerInteropFilter = this.this$0;
                        PointerInteropUtils_androidKt.m3266toCancelMotionEventScoped4ec7I(pointerEvent, mo3339localToRootMKHz9U, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$2
                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                                invoke2(motionEvent);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull MotionEvent motionEvent) {
                                Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                                PointerInteropFilter.this.getOnTouchEvent().invoke(motionEvent);
                            }
                        });
                    } else {
                        throw new IllegalStateException("layoutCoordinates not set");
                    }
                }
                this.state = PointerInteropFilter.DispatchToViewState.NotDispatching;
                return;
            }
        }
        LayoutCoordinates layoutCoordinates$ui_release2 = getLayoutCoordinates$ui_release();
        if (layoutCoordinates$ui_release2 != null) {
            long mo3339localToRootMKHz9U2 = layoutCoordinates$ui_release2.mo3339localToRootMKHz9U(Offset.Companion.m1622getZeroF1C5BW0());
            final PointerInteropFilter pointerInteropFilter2 = this.this$0;
            PointerInteropUtils_androidKt.m3267toMotionEventScoped4ec7I(pointerEvent, mo3339localToRootMKHz9U2, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull MotionEvent motionEvent) {
                    PointerInteropFilter.DispatchToViewState dispatchToViewState;
                    Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                    if (motionEvent.getActionMasked() == 0) {
                        PointerInteropFilter$pointerInputFilter$1 pointerInteropFilter$pointerInputFilter$1 = PointerInteropFilter$pointerInputFilter$1.this;
                        if (pointerInteropFilter2.getOnTouchEvent().invoke(motionEvent).booleanValue()) {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.Dispatching;
                        } else {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.NotDispatching;
                        }
                        pointerInteropFilter$pointerInputFilter$1.state = dispatchToViewState;
                        return;
                    }
                    pointerInteropFilter2.getOnTouchEvent().invoke(motionEvent);
                }
            });
            if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                int size2 = changes.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    changes.get(i11).consume();
                }
                InternalPointerEvent internalPointerEvent$ui_release = pointerEvent.getInternalPointerEvent$ui_release();
                if (internalPointerEvent$ui_release != null) {
                    internalPointerEvent$ui_release.setSuppressMovementConsumption(!this.this$0.getDisallowIntercept$ui_release());
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("layoutCoordinates not set");
    }

    private final void reset() {
        this.state = PointerInteropFilter.DispatchToViewState.Unknown;
        this.this$0.setDisallowIntercept$ui_release(false);
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public boolean getShareWithSiblings() {
        return true;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void onCancel() {
        if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long uptimeMillis = SystemClock.uptimeMillis();
            final PointerInteropFilter pointerInteropFilter = this.this$0;
            PointerInteropUtils_androidKt.emptyCancelMotionEventScope(uptimeMillis, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$onCancel$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull MotionEvent motionEvent) {
                    Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
                    PointerInteropFilter.this.getOnTouchEvent().invoke(motionEvent);
                }
            });
            reset();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    /* renamed from: onPointerEvent-H0pRuoY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo3229onPointerEventH0pRuoY(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.PointerEvent r5, @org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.PointerEventPass r6, long r7) {
        /*
            r4 = this;
            java.lang.String r7 = "pointerEvent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r7)
            java.lang.String r7 = "pass"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            java.util.List r7 = r5.getChanges()
            androidx.compose.ui.input.pointer.PointerInteropFilter r8 = r4.this$0
            boolean r8 = r8.getDisallowIntercept$ui_release()
            r0 = 0
            if (r8 != 0) goto L36
            int r8 = r7.size()
            r1 = r0
        L1c:
            if (r1 >= r8) goto L34
            java.lang.Object r2 = r7.get(r1)
            androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
            boolean r3 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDownIgnoreConsumed(r2)
            if (r3 != 0) goto L36
            boolean r2 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r2)
            if (r2 == 0) goto L31
            goto L36
        L31:
            int r1 = r1 + 1
            goto L1c
        L34:
            r8 = r0
            goto L37
        L36:
            r8 = 1
        L37:
            androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState r1 = r4.state
            androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState r2 = androidx.compose.ui.input.pointer.PointerInteropFilter.DispatchToViewState.NotDispatching
            if (r1 == r2) goto L4f
            androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            if (r6 != r1) goto L46
            if (r8 == 0) goto L46
            r4.dispatchToView(r5)
        L46:
            androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            if (r6 != r1) goto L4f
            if (r8 != 0) goto L4f
            r4.dispatchToView(r5)
        L4f:
            androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            if (r6 != r5) goto L6c
            int r5 = r7.size()
        L57:
            if (r0 >= r5) goto L69
            java.lang.Object r6 = r7.get(r0)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUpIgnoreConsumed(r6)
            if (r6 != 0) goto L66
            goto L6c
        L66:
            int r0 = r0 + 1
            goto L57
        L69:
            r4.reset()
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1.mo3229onPointerEventH0pRuoY(androidx.compose.ui.input.pointer.PointerEvent, androidx.compose.ui.input.pointer.PointerEventPass, long):void");
    }
}
