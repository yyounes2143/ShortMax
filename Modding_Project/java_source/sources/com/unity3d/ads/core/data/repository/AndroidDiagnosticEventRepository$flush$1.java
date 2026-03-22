package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidDiagnosticEventRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$1", f = "AndroidDiagnosticEventRepository.kt", l = {68}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidDiagnosticEventRepository$flush$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ List<DiagnosticEventRequestOuterClass.DiagnosticEvent> $events;
    int label;
    final /* synthetic */ AndroidDiagnosticEventRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDiagnosticEventRepository$flush$1(AndroidDiagnosticEventRepository androidDiagnosticEventRepository, List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list, c<? super AndroidDiagnosticEventRepository$flush$1> cVar) {
        super(2, cVar);
        this.this$0 = androidDiagnosticEventRepository;
        this.$events = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidDiagnosticEventRepository$flush$1(this.this$0, this.$events, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidDiagnosticEventRepository$flush$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kt.d dVar;
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
            dVar = this.this$0._diagnosticEvents;
            List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list = this.$events;
            this.label = 1;
            if (dVar.emit(list, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
