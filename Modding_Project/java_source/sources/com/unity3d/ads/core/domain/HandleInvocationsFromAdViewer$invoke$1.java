package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.Invocation;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HandleInvocationsFromAdViewer.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$1", f = "HandleInvocationsFromAdViewer.kt", l = {184}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class HandleInvocationsFromAdViewer$invoke$1 extends SuspendLambda implements Function2<c<? super Invocation>, rs.c<? super Unit>, Object> {
    final /* synthetic */ Function1<rs.c<? super Unit>, Object> $onSubscription;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HandleInvocationsFromAdViewer$invoke$1(Function1<? super rs.c<? super Unit>, ? extends Object> function1, rs.c<? super HandleInvocationsFromAdViewer$invoke$1> cVar) {
        super(2, cVar);
        this.$onSubscription = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new HandleInvocationsFromAdViewer$invoke$1(this.$onSubscription, cVar);
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
            Function1<rs.c<? super Unit>, Object> function1 = this.$onSubscription;
            this.label = 1;
            if (function1.invoke(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super Invocation> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((HandleInvocationsFromAdViewer$invoke$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
