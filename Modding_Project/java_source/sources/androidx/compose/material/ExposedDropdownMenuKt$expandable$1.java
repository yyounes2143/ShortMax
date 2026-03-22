package androidx.compose.material;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ExposedDropdownMenu.kt */
@Metadata
@d(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1", f = "ExposedDropdownMenu.kt", l = {516}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ExposedDropdownMenuKt$expandable$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onExpandedChange;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ExposedDropdownMenu.kt */
    @Metadata
    @d(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1", f = "ExposedDropdownMenu.kt", l = {517}, m = "invokeSuspend")
    /* renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $onExpandedChange;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ExposedDropdownMenu.kt */
        @Metadata
        @d(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1", f = "ExposedDropdownMenu.kt", l = {518}, m = "invokeSuspend")
        /* renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00421 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $$this$forEachGesture;
            final /* synthetic */ Function0<Unit> $onExpandedChange;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ExposedDropdownMenu.kt */
            @Metadata
            @d(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1$1", f = "ExposedDropdownMenu.kt", l = {521}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00431 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
                final /* synthetic */ Function0<Unit> $onExpandedChange;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00431(Function0<Unit> function0, c<? super C00431> cVar) {
                    super(2, cVar);
                    this.$onExpandedChange = function0;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    C00431 c00431 = new C00431(this.$onExpandedChange, cVar);
                    c00431.L$0 = obj;
                    return c00431;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                    return ((C00431) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
                }

                /* JADX WARN: Removed duplicated region for block: B:11:0x002f A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002d -> B:12:0x0030). Please submit an issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
                    /*
                        r6 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                        int r1 = r6.label
                        r2 = 1
                        if (r1 == 0) goto L1b
                        if (r1 != r2) goto L13
                        java.lang.Object r1 = r6.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        kotlin.f.b(r7)
                        goto L30
                    L13:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r0)
                        throw r7
                    L1b:
                        kotlin.f.b(r7)
                        java.lang.Object r7 = r6.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r7
                        r1 = r7
                    L23:
                        androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r6.L$0 = r1
                        r6.label = r2
                        java.lang.Object r7 = r1.awaitPointerEvent(r7, r6)
                        if (r7 != r0) goto L30
                        return r0
                    L30:
                        androidx.compose.ui.input.pointer.PointerEvent r7 = (androidx.compose.ui.input.pointer.PointerEvent) r7
                        java.util.List r7 = r7.getChanges()
                        int r3 = r7.size()
                        r4 = 0
                    L3b:
                        if (r4 >= r3) goto L4d
                        java.lang.Object r5 = r7.get(r4)
                        androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
                        boolean r5 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUp(r5)
                        if (r5 != 0) goto L4a
                        goto L23
                    L4a:
                        int r4 = r4 + 1
                        goto L3b
                    L4d:
                        kotlin.jvm.functions.Function0<kotlin.Unit> r7 = r6.$onExpandedChange
                        r7.invoke()
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuKt$expandable$1.AnonymousClass1.C00421.C00431.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00421(PointerInputScope pointerInputScope, Function0<Unit> function0, c<? super C00421> cVar) {
                super(2, cVar);
                this.$$this$forEachGesture = pointerInputScope;
                this.$onExpandedChange = function0;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                return new C00421(this.$$this$forEachGesture, this.$onExpandedChange, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                return ((C00421) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                    PointerInputScope pointerInputScope = this.$$this$forEachGesture;
                    C00431 c00431 = new C00431(this.$onExpandedChange, null);
                    this.label = 1;
                    if (pointerInputScope.awaitPointerEventScope(c00431, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$onExpandedChange = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onExpandedChange, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
                C00421 c00421 = new C00421((PointerInputScope) this.L$0, this.$onExpandedChange, null);
                this.label = 1;
                if (i.f(c00421, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExposedDropdownMenuKt$expandable$1(Function0<Unit> function0, c<? super ExposedDropdownMenuKt$expandable$1> cVar) {
        super(2, cVar);
        this.$onExpandedChange = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ExposedDropdownMenuKt$expandable$1 exposedDropdownMenuKt$expandable$1 = new ExposedDropdownMenuKt$expandable$1(this.$onExpandedChange, cVar);
        exposedDropdownMenuKt$expandable$1.L$0 = obj;
        return exposedDropdownMenuKt$expandable$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((ExposedDropdownMenuKt$expandable$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onExpandedChange, null);
            this.label = 1;
            if (ForEachGestureKt.forEachGesture((PointerInputScope) this.L$0, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
