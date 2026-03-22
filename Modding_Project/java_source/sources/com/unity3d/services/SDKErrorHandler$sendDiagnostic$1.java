package com.unity3d.services;

import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SDKErrorHandler.kt */
@Metadata
@d(c = "com.unity3d.services.SDKErrorHandler$sendDiagnostic$1", f = "SDKErrorHandler.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SDKErrorHandler$sendDiagnostic$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ String $name;
    final /* synthetic */ String $reason;
    final /* synthetic */ String $scopeName;
    final /* synthetic */ String $stackTrace;
    int label;
    final /* synthetic */ SDKErrorHandler this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SDKErrorHandler$sendDiagnostic$1(SDKErrorHandler sDKErrorHandler, String str, String str2, String str3, String str4, c<? super SDKErrorHandler$sendDiagnostic$1> cVar) {
        super(2, cVar);
        this.this$0 = sDKErrorHandler;
        this.$name = str;
        this.$reason = str2;
        this.$stackTrace = str3;
        this.$scopeName = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SDKErrorHandler$sendDiagnostic$1(this.this$0, this.$name, this.$reason, this.$stackTrace, this.$scopeName, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SDKErrorHandler$sendDiagnostic$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SendDiagnosticEvent sendDiagnosticEvent;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, this.$name, null, p0.m(k.a("reason", this.$reason), k.a("reason_debug", this.$stackTrace), k.a("coroutine_name", this.$scopeName)), null, null, null, 58, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
