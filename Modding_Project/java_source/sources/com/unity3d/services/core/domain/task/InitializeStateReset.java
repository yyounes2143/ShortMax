package com.unity3d.services.core.domain.task;

import android.app.Application;
import com.unity3d.services.core.api.Lifecycle;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.properties.ClientProperties;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateReset.kt */
@Metadata
/* loaded from: classes7.dex */
public class InitializeStateReset extends MetricTask<Params, Configuration> {
    @NotNull
    private final ISDKDispatchers dispatchers;

    /* compiled from: InitializeStateReset.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Params implements BaseParams {
        @NotNull
        private final Configuration config;

        public Params(@NotNull Configuration config) {
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
        }

        public static /* synthetic */ Params copy$default(Params params, Configuration configuration, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                configuration = params.config;
            }
            return params.copy(configuration);
        }

        @NotNull
        public final Configuration component1() {
            return this.config;
        }

        @NotNull
        public final Params copy(@NotNull Configuration config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return new Params(config);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Params) && Intrinsics.areEqual(this.config, ((Params) obj).config)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Configuration getConfig() {
            return this.config;
        }

        public int hashCode() {
            return this.config.hashCode();
        }

        @NotNull
        public String toString() {
            return "Params(config=" + this.config + ')';
        }
    }

    public InitializeStateReset(@NotNull ISDKDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.dispatchers = dispatchers;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* renamed from: doWork-gIAlu-s$suspendImpl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object m4748doWorkgIAlus$suspendImpl(com.unity3d.services.core.domain.task.InitializeStateReset r5, com.unity3d.services.core.domain.task.InitializeStateReset.Params r6, rs.c<? super kotlin.Result<? extends com.unity3d.services.core.configuration.Configuration>> r7) {
        /*
            boolean r0 = r7 instanceof com.unity3d.services.core.domain.task.InitializeStateReset$doWork$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.services.core.domain.task.InitializeStateReset$doWork$1 r0 = (com.unity3d.services.core.domain.task.InitializeStateReset$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.domain.task.InitializeStateReset$doWork$1 r0 = new com.unity3d.services.core.domain.task.InitializeStateReset$doWork$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)
            goto L49
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r7)
            com.unity3d.services.core.domain.ISDKDispatchers r7 = r5.dispatchers
            gt.c0 r7 = r7.getDefault()
            com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2 r2 = new com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2
            r4 = 0
            r2.<init>(r6, r5, r4)
            r0.label = r3
            java.lang.Object r7 = gt.e.g(r7, r2, r0)
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateReset.m4748doWorkgIAlus$suspendImpl(com.unity3d.services.core.domain.task.InitializeStateReset, com.unity3d.services.core.domain.task.InitializeStateReset$Params, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unregisterLifecycleCallbacks() {
        if (Lifecycle.getLifecycleListener() != null) {
            Application application = ClientProperties.getApplication();
            if (application != null) {
                application.unregisterActivityLifecycleCallbacks(Lifecycle.getLifecycleListener());
            }
            Lifecycle.setLifecycleListener(null);
        }
    }

    @Nullable
    /* renamed from: doWork-gIAlu-s  reason: not valid java name */
    public Object m4749doWorkgIAlus(@NotNull Params params, @NotNull c<? super Result<? extends Configuration>> cVar) {
        return m4748doWorkgIAlus$suspendImpl(this, params, cVar);
    }

    @Override // com.unity3d.services.core.domain.task.MetricTask
    @NotNull
    public String getMetricName() {
        return getMetricNameForInitializeTask("reset");
    }

    @Override // com.unity3d.services.core.domain.task.BaseTask
    /* renamed from: doWork-gIAlu-s */
    public /* bridge */ /* synthetic */ Object mo4732doWorkgIAlus(BaseParams baseParams, c cVar) {
        return m4749doWorkgIAlus((Params) baseParams, (c<? super Result<? extends Configuration>>) cVar);
    }
}
