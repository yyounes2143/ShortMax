package com.unity3d.services;

import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import gt.c0;
import gt.d0;
import gt.f0;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SDKErrorHandler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SDKErrorHandler implements d0 {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String UNITY_PACKAGE = "com.unity3d";
    @NotNull
    public static final String UNKNOWN_FILE = "unknown";
    @NotNull
    private final AlternativeFlowReader alternativeFlowReader;
    @NotNull
    private final c0 ioDispatcher;
    @NotNull
    private final d0.b key;
    @NotNull
    private final g0 scope;
    @NotNull
    private final SDKMetricsSender sdkMetricsSender;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* compiled from: SDKErrorHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SDKErrorHandler(@NotNull c0 ioDispatcher, @NotNull AlternativeFlowReader alternativeFlowReader, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull SDKMetricsSender sdkMetricsSender) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(alternativeFlowReader, "alternativeFlowReader");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sdkMetricsSender, "sdkMetricsSender");
        this.ioDispatcher = ioDispatcher;
        this.alternativeFlowReader = alternativeFlowReader;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.sdkMetricsSender = sdkMetricsSender;
        this.scope = i.i(i.a(ioDispatcher), new f0("SDKErrorHandler"));
        this.key = d0.D8;
    }

    private final String retrieveCoroutineName(CoroutineContext coroutineContext) {
        String m10;
        f0 f0Var = (f0) coroutineContext.get(f0.f52534b);
        if (f0Var == null || (m10 = f0Var.m()) == null) {
            return "unknown";
        }
        return m10;
    }

    private final void sendDiagnostic(String str, String str2, String str3, String str4) {
        g.d(this.scope, null, null, new SDKErrorHandler$sendDiagnostic$1(this, str, str2, str4, str3, null), 3, null);
    }

    private final void sendMetric(Metric metric) {
        this.sdkMetricsSender.sendMetric(metric);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) d0.a.a(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) d0.a.b(this, bVar);
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext context, @NotNull Throwable exception) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(exception, "exception");
        String retrieveCoroutineName = retrieveCoroutineName(context);
        if (exception instanceof NullPointerException) {
            str = "native_exception_npe";
        } else if (exception instanceof OutOfMemoryError) {
            str = "native_exception_oom";
        } else if (exception instanceof IllegalStateException) {
            str = "native_exception_ise";
        } else if (exception instanceof SecurityException) {
            str = "native_exception_se";
        } else if (exception instanceof RuntimeException) {
            str = "native_exception_re";
        } else {
            str = "native_exception";
        }
        String str2 = str;
        boolean invoke = this.alternativeFlowReader.invoke();
        String retrieveUnityCrashValue = ExceptionExtensionsKt.retrieveUnityCrashValue(exception);
        DeviceLog.error("Unity Ads SDK encountered an exception: " + retrieveUnityCrashValue);
        if (invoke) {
            sendDiagnostic(str2, retrieveUnityCrashValue, retrieveCoroutineName, ExceptionExtensionsKt.getShortenedStackTrace(exception, 15));
        } else {
            sendMetric(new Metric(str2, retrieveUnityCrashValue, null, 4, null));
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return d0.a.c(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return d0.a.d(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public d0.b getKey() {
        return this.key;
    }
}
