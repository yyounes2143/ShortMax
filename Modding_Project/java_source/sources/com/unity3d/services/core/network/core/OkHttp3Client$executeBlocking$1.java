package com.unity3d.services.core.network.core;

import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import gt.g0;
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
/* compiled from: OkHttp3Client.kt */
@Metadata
@d(c = "com.unity3d.services.core.network.core.OkHttp3Client$executeBlocking$1", f = "OkHttp3Client.kt", l = {63}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class OkHttp3Client$executeBlocking$1 extends SuspendLambda implements Function2<g0, c<? super HttpResponse>, Object> {
    final /* synthetic */ HttpRequest $request;
    int label;
    final /* synthetic */ OkHttp3Client this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttp3Client$executeBlocking$1(OkHttp3Client okHttp3Client, HttpRequest httpRequest, c<? super OkHttp3Client$executeBlocking$1> cVar) {
        super(2, cVar);
        this.this$0 = okHttp3Client;
        this.$request = httpRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new OkHttp3Client$executeBlocking$1(this.this$0, this.$request, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super HttpResponse> cVar) {
        return ((OkHttp3Client$executeBlocking$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            OkHttp3Client okHttp3Client = this.this$0;
            HttpRequest httpRequest = this.$request;
            this.label = 1;
            obj = okHttp3Client.execute(httpRequest, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
