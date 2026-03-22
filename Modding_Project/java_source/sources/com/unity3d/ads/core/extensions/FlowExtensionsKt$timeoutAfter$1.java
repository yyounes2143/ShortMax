package com.unity3d.ads.core.extensions;

import gt.g;
import gt.g0;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.channels.h;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: FlowExtensions.kt */
@Metadata
@d(c = "com.unity3d.ads.core.extensions.FlowExtensionsKt$timeoutAfter$1", f = "FlowExtensions.kt", l = {15, 17}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class FlowExtensionsKt$timeoutAfter$1<T> extends SuspendLambda implements Function2<h<? super T>, c<? super Unit>, Object> {
    final /* synthetic */ boolean $active;
    final /* synthetic */ Function2<Function0<Unit>, c<? super Unit>, Object> $block;
    final /* synthetic */ b<T> $this_timeoutAfter;
    final /* synthetic */ long $timeoutMillis;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowExtensions.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.extensions.FlowExtensionsKt$timeoutAfter$1$1", f = "FlowExtensions.kt", l = {10}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.extensions.FlowExtensionsKt$timeoutAfter$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ h<T> $$this$channelFlow;
        final /* synthetic */ b<T> $this_timeoutAfter;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(b<? extends T> bVar, h<? super T> hVar, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$this_timeoutAfter = bVar;
            this.$$this$channelFlow = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$this_timeoutAfter, this.$$this$channelFlow, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                b<T> bVar = this.$this_timeoutAfter;
                final h<T> hVar = this.$$this$channelFlow;
                kt.c<? super T> cVar = new kt.c() { // from class: com.unity3d.ads.core.extensions.FlowExtensionsKt.timeoutAfter.1.1.1
                    @Override // kt.c
                    @Nullable
                    public final Object emit(T t10, @NotNull c<? super Unit> cVar2) {
                        Object p10 = hVar.p(t10, cVar2);
                        if (p10 == a.f()) {
                            return p10;
                        }
                        return Unit.f60915a;
                    }
                };
                this.label = 1;
                if (bVar.collect(cVar, this) == f10) {
                    return f10;
                }
            }
            h.a.a(this.$$this$channelFlow, null, 1, null);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowExtensions.kt */
    @Metadata
    /* renamed from: com.unity3d.ads.core.extensions.FlowExtensionsKt$timeoutAfter$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public /* synthetic */ class AnonymousClass2 extends AdaptedFunctionReference implements Function0<Unit> {
        AnonymousClass2(Object obj) {
            super(0, obj, jt.h.class, "close", "close(Ljava/lang/Throwable;)Z", 8);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            h.a.a((jt.h) this.receiver, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtensionsKt$timeoutAfter$1(long j10, boolean z10, Function2<? super Function0<Unit>, ? super c<? super Unit>, ? extends Object> function2, b<? extends T> bVar, c<? super FlowExtensionsKt$timeoutAfter$1> cVar) {
        super(2, cVar);
        this.$timeoutMillis = j10;
        this.$active = z10;
        this.$block = function2;
        this.$this_timeoutAfter = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        FlowExtensionsKt$timeoutAfter$1 flowExtensionsKt$timeoutAfter$1 = new FlowExtensionsKt$timeoutAfter$1(this.$timeoutMillis, this.$active, this.$block, this.$this_timeoutAfter, cVar);
        flowExtensionsKt$timeoutAfter$1.L$0 = obj;
        return flowExtensionsKt$timeoutAfter$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, c<? super Unit> cVar) {
        return invoke((jt.h) ((jt.h) obj), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        jt.h hVar;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar = (jt.h) this.L$0;
            f.b(obj);
        } else {
            f.b(obj);
            hVar = (jt.h) this.L$0;
            g.d(hVar, null, null, new AnonymousClass1(this.$this_timeoutAfter, hVar, null), 3, null);
            long j10 = this.$timeoutMillis;
            this.L$0 = hVar;
            this.label = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        if (this.$active) {
            Function2<Function0<Unit>, c<? super Unit>, Object> function2 = this.$block;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(hVar);
            this.L$0 = null;
            this.label = 2;
            if (function2.invoke(anonymousClass2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object invoke(@NotNull jt.h<? super T> hVar, @Nullable c<? super Unit> cVar) {
        return ((FlowExtensionsKt$timeoutAfter$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
