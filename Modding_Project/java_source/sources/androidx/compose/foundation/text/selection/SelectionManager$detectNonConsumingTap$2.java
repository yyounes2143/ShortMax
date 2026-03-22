package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SelectionManager.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.SelectionManager$detectNonConsumingTap$2", f = "SelectionManager.kt", l = {619}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SelectionManager$detectNonConsumingTap$2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ Function1<Offset, Unit> $onTap;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SelectionManager.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.text.selection.SelectionManager$detectNonConsumingTap$2$1", f = "SelectionManager.kt", l = {620}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.text.selection.SelectionManager$detectNonConsumingTap$2$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ PointerInputScope $$this$forEachGesture;
        final /* synthetic */ Function1<Offset, Unit> $onTap;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SelectionManager.kt */
        @Metadata
        @d(c = "androidx.compose.foundation.text.selection.SelectionManager$detectNonConsumingTap$2$1$1", f = "SelectionManager.kt", l = {621}, m = "invokeSuspend")
        /* renamed from: androidx.compose.foundation.text.selection.SelectionManager$detectNonConsumingTap$2$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00311 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
            final /* synthetic */ Function1<Offset, Unit> $onTap;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00311(Function1<? super Offset, Unit> function1, c<? super C00311> cVar) {
                super(2, cVar);
                this.$onTap = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                C00311 c00311 = new C00311(this.$onTap, cVar);
                c00311.L$0 = obj;
                return c00311;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                return ((C00311) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
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
                    this.label = 1;
                    obj = TapGestureDetectorKt.waitForUpOrCancellation((AwaitPointerEventScope) this.L$0, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                if (pointerInputChange != null) {
                    this.$onTap.invoke(Offset.m1595boximpl(pointerInputChange.m3208getPositionF1C5BW0()));
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PointerInputScope pointerInputScope, Function1<? super Offset, Unit> function1, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$$this$forEachGesture = pointerInputScope;
            this.$onTap = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$$this$forEachGesture, this.$onTap, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                PointerInputScope pointerInputScope = this.$$this$forEachGesture;
                C00311 c00311 = new C00311(this.$onTap, null);
                this.label = 1;
                if (pointerInputScope.awaitPointerEventScope(c00311, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SelectionManager$detectNonConsumingTap$2(Function1<? super Offset, Unit> function1, c<? super SelectionManager$detectNonConsumingTap$2> cVar) {
        super(2, cVar);
        this.$onTap = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SelectionManager$detectNonConsumingTap$2 selectionManager$detectNonConsumingTap$2 = new SelectionManager$detectNonConsumingTap$2(this.$onTap, cVar);
        selectionManager$detectNonConsumingTap$2.L$0 = obj;
        return selectionManager$detectNonConsumingTap$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((SelectionManager$detectNonConsumingTap$2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((PointerInputScope) this.L$0, this.$onTap, null);
            this.label = 1;
            if (i.f(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
