package androidx.compose.foundation.text.selection;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextSelectionMouseDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2", f = "TextSelectionMouseDetector.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TextSelectionMouseDetectorKt$mouseSelectionDetector$2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ MouseSelectionObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextSelectionMouseDetector.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2$1", f = "TextSelectionMouseDetector.kt", l = {90, 97, 112}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ MouseSelectionObserver $observer;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MouseSelectionObserver mouseSelectionObserver, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$observer = mouseSelectionObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$observer, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0073 -> B:35:0x00d3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x008d -> B:35:0x00d3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b6 -> B:35:0x00d3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00d0 -> B:35:0x00d3). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r11.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L33
                if (r1 == r4) goto L27
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                goto L1a
            L12:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L1a:
                java.lang.Object r1 = r11.L$1
                androidx.compose.foundation.text.selection.ClicksCounter r1 = (androidx.compose.foundation.text.selection.ClicksCounter) r1
                java.lang.Object r5 = r11.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                kotlin.f.b(r12)
                goto Ld3
            L27:
                java.lang.Object r1 = r11.L$1
                androidx.compose.foundation.text.selection.ClicksCounter r1 = (androidx.compose.foundation.text.selection.ClicksCounter) r1
                java.lang.Object r5 = r11.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                kotlin.f.b(r12)
                goto L53
            L33:
                kotlin.f.b(r12)
                java.lang.Object r12 = r11.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r12 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r12
                androidx.compose.foundation.text.selection.ClicksCounter r1 = new androidx.compose.foundation.text.selection.ClicksCounter
                androidx.compose.ui.platform.ViewConfiguration r5 = r12.getViewConfiguration()
                r1.<init>(r5)
            L43:
                r11.L$0 = r12
                r11.L$1 = r1
                r11.label = r4
                java.lang.Object r5 = androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt.access$awaitMouseEventDown(r12, r11)
                if (r5 != r0) goto L50
                return r0
            L50:
                r10 = r5
                r5 = r12
                r12 = r10
            L53:
                androidx.compose.ui.input.pointer.PointerEvent r12 = (androidx.compose.ui.input.pointer.PointerEvent) r12
                r1.update(r12)
                java.util.List r6 = r12.getChanges()
                r7 = 0
                java.lang.Object r6 = r6.get(r7)
                androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
                boolean r12 = androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt.isShiftPressed(r12)
                if (r12 == 0) goto L90
                androidx.compose.foundation.text.selection.MouseSelectionObserver r12 = r11.$observer
                long r7 = r6.m3208getPositionF1C5BW0()
                boolean r12 = r12.mo764onExtendk4lQ0M(r7)
                if (r12 == 0) goto Ld3
                r6.consume()
                long r6 = r6.m3207getIdJ3iCeTQ()
                androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2$1$1 r12 = new androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2$1$1
                androidx.compose.foundation.text.selection.MouseSelectionObserver r8 = r11.$observer
                r12.<init>()
                r11.L$0 = r5
                r11.L$1 = r1
                r11.label = r3
                java.lang.Object r12 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m292dragjO51t88(r5, r6, r12, r11)
                if (r12 != r0) goto Ld3
                return r0
            L90:
                int r12 = r1.getClicks()
                if (r12 == r4) goto La6
                if (r12 == r3) goto L9f
                androidx.compose.foundation.text.selection.SelectionAdjustment$Companion r12 = androidx.compose.foundation.text.selection.SelectionAdjustment.Companion
                androidx.compose.foundation.text.selection.SelectionAdjustment r12 = r12.getParagraph()
                goto Lac
            L9f:
                androidx.compose.foundation.text.selection.SelectionAdjustment$Companion r12 = androidx.compose.foundation.text.selection.SelectionAdjustment.Companion
                androidx.compose.foundation.text.selection.SelectionAdjustment r12 = r12.getWord()
                goto Lac
            La6:
                androidx.compose.foundation.text.selection.SelectionAdjustment$Companion r12 = androidx.compose.foundation.text.selection.SelectionAdjustment.Companion
                androidx.compose.foundation.text.selection.SelectionAdjustment r12 = r12.getNone()
            Lac:
                androidx.compose.foundation.text.selection.MouseSelectionObserver r7 = r11.$observer
                long r8 = r6.m3208getPositionF1C5BW0()
                boolean r7 = r7.mo766onStart3MmeM6k(r8, r12)
                if (r7 == 0) goto Ld3
                r6.consume()
                long r6 = r6.m3207getIdJ3iCeTQ()
                androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2$1$2 r8 = new androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2$1$2
                androidx.compose.foundation.text.selection.MouseSelectionObserver r9 = r11.$observer
                r8.<init>()
                r11.L$0 = r5
                r11.L$1 = r1
                r11.label = r2
                java.lang.Object r12 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m292dragjO51t88(r5, r6, r8, r11)
                if (r12 != r0) goto Ld3
                return r0
            Ld3:
                r12 = r5
                goto L43
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt$mouseSelectionDetector$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextSelectionMouseDetectorKt$mouseSelectionDetector$2(MouseSelectionObserver mouseSelectionObserver, c<? super TextSelectionMouseDetectorKt$mouseSelectionDetector$2> cVar) {
        super(2, cVar);
        this.$observer = mouseSelectionObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TextSelectionMouseDetectorKt$mouseSelectionDetector$2 textSelectionMouseDetectorKt$mouseSelectionDetector$2 = new TextSelectionMouseDetectorKt$mouseSelectionDetector$2(this.$observer, cVar);
        textSelectionMouseDetectorKt$mouseSelectionDetector$2.L$0 = obj;
        return textSelectionMouseDetectorKt$mouseSelectionDetector$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((TextSelectionMouseDetectorKt$mouseSelectionDetector$2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$observer, null);
            this.label = 1;
            if (((PointerInputScope) this.L$0).awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
