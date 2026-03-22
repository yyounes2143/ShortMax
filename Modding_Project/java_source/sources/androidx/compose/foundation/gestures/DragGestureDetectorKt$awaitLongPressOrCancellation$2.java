package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DragGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2", f = "DragGestureDetector.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_PRELOAD_GEAR}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitLongPressOrCancellation$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<PointerInputChange> $currentDown;
    final /* synthetic */ Ref.ObjectRef<PointerInputChange> $longPress;
    final /* synthetic */ PointerInputScope $this_awaitLongPressOrCancellation;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DragGestureDetector.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2$1", f = "DragGestureDetector.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_BUFFERING_THRESHOLD_SIZE, 775}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<PointerInputChange> $currentDown;
        final /* synthetic */ Ref.ObjectRef<PointerInputChange> $longPress;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<PointerInputChange> objectRef, Ref.ObjectRef<PointerInputChange> objectRef2, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$currentDown = objectRef;
            this.$longPress = objectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentDown, this.$longPress, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
            r2 = r6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ab A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0112  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0143  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00cd A[EDGE_INSN: B:67:0x00cd->B:41:0x00cd ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x006f A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r11v6 */
        /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.ui.input.pointer.PointerInputChange, T] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ac -> B:35:0x00af). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r17) {
            /*
                Method dump skipped, instructions count: 326
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureDetectorKt$awaitLongPressOrCancellation$2(PointerInputScope pointerInputScope, Ref.ObjectRef<PointerInputChange> objectRef, Ref.ObjectRef<PointerInputChange> objectRef2, c<? super DragGestureDetectorKt$awaitLongPressOrCancellation$2> cVar) {
        super(2, cVar);
        this.$this_awaitLongPressOrCancellation = pointerInputScope;
        this.$currentDown = objectRef;
        this.$longPress = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DragGestureDetectorKt$awaitLongPressOrCancellation$2(this.$this_awaitLongPressOrCancellation, this.$currentDown, this.$longPress, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DragGestureDetectorKt$awaitLongPressOrCancellation$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            PointerInputScope pointerInputScope = this.$this_awaitLongPressOrCancellation;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentDown, this.$longPress, null);
            this.label = 1;
            if (pointerInputScope.awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
