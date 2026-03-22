package androidx.compose.foundation.text;

import androidx.compose.ui.input.pointer.PointerInputScope;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LongPressTextDragObserver.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2 extends SuspendLambda implements Function2<g0, c<? super r>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    final /* synthetic */ PointerInputScope $this_detectDownAndDragGesturesWithObserver;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongPressTextDragObserver.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$1", f = "LongPressTextDragObserver.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ TextDragObserver $observer;
        final /* synthetic */ PointerInputScope $this_detectDownAndDragGesturesWithObserver;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$this_detectDownAndDragGesturesWithObserver = pointerInputScope;
            this.$observer = textDragObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object detectPreDragGesturesWithObserver;
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
                PointerInputScope pointerInputScope = this.$this_detectDownAndDragGesturesWithObserver;
                TextDragObserver textDragObserver = this.$observer;
                this.label = 1;
                detectPreDragGesturesWithObserver = LongPressTextDragObserverKt.detectPreDragGesturesWithObserver(pointerInputScope, textDragObserver, this);
                if (detectPreDragGesturesWithObserver == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongPressTextDragObserver.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$2", f = "LongPressTextDragObserver.kt", l = {85}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ TextDragObserver $observer;
        final /* synthetic */ PointerInputScope $this_detectDownAndDragGesturesWithObserver;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.$this_detectDownAndDragGesturesWithObserver = pointerInputScope;
            this.$observer = textDragObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass2(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object detectDragGesturesWithObserver;
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
                PointerInputScope pointerInputScope = this.$this_detectDownAndDragGesturesWithObserver;
                TextDragObserver textDragObserver = this.$observer;
                this.label = 1;
                detectDragGesturesWithObserver = LongPressTextDragObserverKt.detectDragGesturesWithObserver(pointerInputScope, textDragObserver, this);
                if (detectDragGesturesWithObserver == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, c<? super LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2> cVar) {
        super(2, cVar);
        this.$this_detectDownAndDragGesturesWithObserver = pointerInputScope;
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2 longPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2 = new LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, cVar);
        longPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2.L$0 = obj;
        return longPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super r> cVar) {
        return ((LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        r d10;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            g0 g0Var = (g0) this.L$0;
            g.d(g0Var, null, null, new AnonymousClass1(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, null), 3, null);
            d10 = g.d(g0Var, null, null, new AnonymousClass2(this.$this_detectDownAndDragGesturesWithObserver, this.$observer, null), 3, null);
            return d10;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
