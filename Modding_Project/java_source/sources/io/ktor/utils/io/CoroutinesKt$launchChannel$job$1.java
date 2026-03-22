package io.ktor.utils.io;

import gt.c0;
import gt.g0;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Coroutines.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.CoroutinesKt$launchChannel$job$1", f = "Coroutines.kt", l = {147}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class CoroutinesKt$launchChannel$job$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59492h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f59493i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f59494j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ b f59495k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ Function2<S, rs.c<? super Unit>, Object> f59496l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ c0 f59497m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutinesKt$launchChannel$job$1(boolean z10, b bVar, Function2<? super S, ? super rs.c<? super Unit>, ? extends Object> function2, c0 c0Var, rs.c<? super CoroutinesKt$launchChannel$job$1> cVar) {
        super(2, cVar);
        this.f59494j = z10;
        this.f59495k = bVar;
        this.f59496l = function2;
        this.f59497m = c0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        CoroutinesKt$launchChannel$job$1 coroutinesKt$launchChannel$job$1 = new CoroutinesKt$launchChannel$job$1(this.f59494j, this.f59495k, this.f59496l, this.f59497m, cVar);
        coroutinesKt$launchChannel$job$1.f59493i = obj;
        return coroutinesKt$launchChannel$job$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((CoroutinesKt$launchChannel$job$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59492h;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                g0 g0Var = (g0) this.f59493i;
                if (this.f59494j) {
                    b bVar = this.f59495k;
                    CoroutineContext.Element element = g0Var.getCoroutineContext().get(r.G8);
                    Intrinsics.checkNotNull(element);
                    bVar.j((r) element);
                }
                h hVar = new h(g0Var, this.f59495k);
                Function2<S, rs.c<? super Unit>, Object> function2 = this.f59496l;
                this.f59492h = 1;
                if (function2.invoke(hVar, this) == f10) {
                    return f10;
                }
            }
        } catch (Throwable th2) {
            if (!Intrinsics.areEqual(this.f59497m, q0.d()) && this.f59497m != null) {
                throw th2;
            }
            this.f59495k.cancel(th2);
        }
        return Unit.f60915a;
    }
}
