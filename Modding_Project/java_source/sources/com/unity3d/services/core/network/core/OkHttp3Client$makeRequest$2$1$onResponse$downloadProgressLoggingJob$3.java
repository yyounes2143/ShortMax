package com.unity3d.services.core.network.core;

import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.model.HttpRequest;
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
@d(c = "com.unity3d.services.core.network.core.OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3", f = "OkHttp3Client.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3 extends SuspendLambda implements Function2<Integer, c<? super Unit>, Object> {
    final /* synthetic */ HttpRequest $request;
    /* synthetic */ int I$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3(HttpRequest httpRequest, c<? super OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3> cVar) {
        super(2, cVar);
        this.$request = httpRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3 okHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3 = new OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3(this.$request, cVar);
        okHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3.I$0 = ((Number) obj).intValue();
        return okHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3;
    }

    @Nullable
    public final Object invoke(int i10, @Nullable c<? super Unit> cVar) {
        return ((OkHttp3Client$makeRequest$2$1$onResponse$downloadProgressLoggingJob$3) create(Integer.valueOf(i10), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            int i10 = this.I$0;
            DeviceLog.debug("Downloaded " + i10 + "% of " + this.$request.getBaseURL());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, c<? super Unit> cVar) {
        return invoke(num.intValue(), cVar);
    }
}
