package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.InitializeEventsMetricSender;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.domain.task.BaseParams;
import com.unity3d.services.core.domain.task.BaseTask;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: MetricTask.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMetricTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricTask.kt\ncom/unity3d/services/core/domain/task/MetricTask\n+ 2 Timing.kt\nkotlin/system/TimingKt\n+ 3 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,104:1\n31#2,6:105\n16#3,4:111\n*S KotlinDebug\n*F\n+ 1 MetricTask.kt\ncom/unity3d/services/core/domain/task/MetricTask\n*L\n23#1:105,6\n68#1:111,4\n*E\n"})
/* loaded from: classes7.dex */
public abstract class MetricTask<P extends BaseParams, R> implements BaseTask<P, R> {
    private long duration;
    @NotNull
    private String taskStatus = "unknown";

    private final void captureMetric(Object obj) {
        String str;
        if (Result.j(obj)) {
            str = "success";
        } else {
            str = "failure";
        }
        this.taskStatus = str;
        sendMetric();
    }

    private final Metric getMetric() {
        return new Metric(getMetricName(), Long.valueOf(this.duration), getMetricTagsForState());
    }

    private final Map<String, String> getMetricTagsForState() {
        Map<String, String> retryTags = InitializeEventsMetricSender.getInstance().getRetryTags();
        Intrinsics.checkNotNullExpressionValue(retryTags, "getInstance().retryTags");
        return retryTags;
    }

    private final SDKMetricsSender getSDKMetrics() {
        return (SDKMetricsSender) getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SDKMetricsSender.class));
    }

    private final int getStatePrefixLength() {
        return 15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /* renamed from: invoke-gIAlu-s$suspendImpl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object m4750invokegIAlus$suspendImpl(com.unity3d.services.core.domain.task.MetricTask<? super P, R> r8, P r9, rs.c<? super kotlin.Result<? extends R>> r10) {
        /*
            boolean r0 = r10 instanceof com.unity3d.services.core.domain.task.MetricTask$invoke$1
            if (r0 == 0) goto L13
            r0 = r10
            com.unity3d.services.core.domain.task.MetricTask$invoke$1 r0 = (com.unity3d.services.core.domain.task.MetricTask$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.domain.task.MetricTask$invoke$1 r0 = new com.unity3d.services.core.domain.task.MetricTask$invoke$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L51
            if (r2 != r3) goto L49
            long r8 = r0.J$0
            java.lang.Object r1 = r0.L$4
            java.util.concurrent.TimeUnit r1 = (java.util.concurrent.TimeUnit) r1
            java.lang.Object r2 = r0.L$3
            com.unity3d.services.core.domain.task.MetricTask r2 = (com.unity3d.services.core.domain.task.MetricTask) r2
            java.lang.Object r3 = r0.L$2
            kotlin.jvm.internal.Ref$ObjectRef r3 = (kotlin.jvm.internal.Ref.ObjectRef) r3
            java.lang.Object r4 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            java.lang.Object r0 = r0.L$0
            com.unity3d.services.core.domain.task.MetricTask r0 = (com.unity3d.services.core.domain.task.MetricTask) r0
            kotlin.f.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.n()
            r6 = r8
            r8 = r2
            r9 = r4
            r4 = r6
            goto L79
        L49:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L51:
            kotlin.f.b(r10)
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r4 = java.lang.System.nanoTime()
            r0.L$0 = r8
            r0.L$1 = r10
            r0.L$2 = r10
            r0.L$3 = r8
            r0.L$4 = r2
            r0.J$0 = r4
            r0.label = r3
            java.lang.Object r9 = com.unity3d.services.core.domain.task.BaseTask.DefaultImpls.m4734invokegIAlus(r8, r9, r0)
            if (r9 != r1) goto L74
            return r1
        L74:
            r0 = r8
            r3 = r10
            r1 = r2
            r10 = r9
            r9 = r3
        L79:
            r3.element = r10
            kotlin.Unit r10 = kotlin.Unit.f60915a
            long r2 = java.lang.System.nanoTime()
            long r2 = r2 - r4
            long r1 = r1.toMillis(r2)
            r8.duration = r1
            T r8 = r9.element
            r0.captureMetric(r8)
            T r8 = r9.element
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.MetricTask.m4750invokegIAlus$suspendImpl(com.unity3d.services.core.domain.task.MetricTask, com.unity3d.services.core.domain.task.BaseParams, rs.c):java.lang.Object");
    }

    private final void sendMetric() {
        String metricName = getMetricName();
        if (metricName != null && metricName.length() != 0) {
            getSDKMetrics().sendMetric(getMetric());
        }
    }

    public final long getDuration() {
        return this.duration;
    }

    @Nullable
    public String getMetricName() {
        return null;
    }

    @NotNull
    public final String getMetricNameForInitializeTask(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return "native_" + name + "_task_" + this.taskStatus + "_time";
    }

    @Nullable
    public final String getMetricNameForTask(@NotNull Object task) {
        Intrinsics.checkNotNullParameter(task, "task");
        String className = task.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(className, "className");
        if (className.length() == 0) {
            return null;
        }
        Intrinsics.checkNotNullExpressionValue(className, "className");
        String substring = className.substring(getStatePrefixLength());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        String lowerCase = substring.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        StringBuilder sb2 = new StringBuilder(lowerCase.length() + 13);
        sb2.append("native_");
        sb2.append(lowerCase);
        sb2.append("_state");
        return sb2.toString();
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return BaseTask.DefaultImpls.getServiceProvider(this);
    }

    @NotNull
    public final String getTaskStatus() {
        return this.taskStatus;
    }

    @Override // com.unity3d.services.core.domain.task.BaseTask
    @Nullable
    /* renamed from: invoke-gIAlu-s */
    public Object mo4733invokegIAlus(@NotNull P p10, @NotNull c<? super Result<? extends R>> cVar) {
        return m4750invokegIAlus$suspendImpl(this, p10, cVar);
    }

    public final void setDuration(long j10) {
        this.duration = j10;
    }

    public final void setTaskStatus(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.taskStatus = str;
    }
}
