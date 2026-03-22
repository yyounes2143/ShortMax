package com.unity3d.services.core.request.metrics;

import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetricSender.kt */
@Metadata
@d(c = "com.unity3d.services.core.request.metrics.MetricSender$sendMetrics$1", f = "MetricSender.kt", l = {65}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MetricSender$sendMetrics$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ List<Metric> $metrics;
    int label;
    final /* synthetic */ MetricSender this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricSender$sendMetrics$1(MetricSender metricSender, List<Metric> list, c<? super MetricSender$sendMetrics$1> cVar) {
        super(2, cVar);
        this.this$0 = metricSender;
        this.$metrics = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new MetricSender$sendMetrics$1(this.this$0, this.$metrics, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((MetricSender$sendMetrics$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        String str;
        MetricCommonTags metricCommonTags;
        String str2;
        HttpClient httpClient;
        Object execute;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                execute = obj;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            str = this.this$0.metricSampleRate;
            metricCommonTags = this.this$0.commonTags;
            List<Metric> list = this.$metrics;
            str2 = this.this$0.sessionToken;
            String jSONObject = new JSONObject(new MetricsContainer(str, metricCommonTags, list, str2).toMap()).toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "JSONObject(container.toMap()).toString()");
            String metricEndPoint = this.this$0.getMetricEndPoint();
            if (metricEndPoint == null) {
                metricEndPoint = "";
            }
            HttpRequest httpRequest = new HttpRequest(metricEndPoint, null, RequestType.POST, jSONObject, null, null, null, null, null, 0, 0, 0, 0, false, null, null, 0, 131058, null);
            httpClient = this.this$0.httpClient;
            this.label = 1;
            execute = httpClient.execute(httpRequest, this);
            if (execute == f10) {
                return f10;
            }
        }
        HttpResponse httpResponse = (HttpResponse) execute;
        if (httpResponse.getStatusCode() / 100 == 2) {
            DeviceLog.debug("Metric " + this.$metrics + " sent to " + this.this$0.getMetricEndPoint());
        } else {
            DeviceLog.debug("Metric " + this.$metrics + " failed to send with response code: " + httpResponse.getStatusCode());
        }
        return Unit.f60915a;
    }
}
