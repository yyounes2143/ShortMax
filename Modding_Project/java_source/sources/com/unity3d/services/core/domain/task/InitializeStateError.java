package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.domain.ISDKDispatchers;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InitializeStateError extends MetricTask<Params, Unit> {
    @NotNull
    private final ISDKDispatchers dispatchers;

    /* compiled from: InitializeStateError.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Params implements BaseParams {
        @NotNull
        private final Configuration config;
        @NotNull
        private final ErrorState errorState;
        @NotNull
        private final Exception exception;

        public Params(@NotNull ErrorState errorState, @NotNull Exception exception, @NotNull Configuration config) {
            Intrinsics.checkNotNullParameter(errorState, "errorState");
            Intrinsics.checkNotNullParameter(exception, "exception");
            Intrinsics.checkNotNullParameter(config, "config");
            this.errorState = errorState;
            this.exception = exception;
            this.config = config;
        }

        public static /* synthetic */ Params copy$default(Params params, ErrorState errorState, Exception exc, Configuration configuration, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                errorState = params.errorState;
            }
            if ((i10 & 2) != 0) {
                exc = params.exception;
            }
            if ((i10 & 4) != 0) {
                configuration = params.config;
            }
            return params.copy(errorState, exc, configuration);
        }

        @NotNull
        public final ErrorState component1() {
            return this.errorState;
        }

        @NotNull
        public final Exception component2() {
            return this.exception;
        }

        @NotNull
        public final Configuration component3() {
            return this.config;
        }

        @NotNull
        public final Params copy(@NotNull ErrorState errorState, @NotNull Exception exception, @NotNull Configuration config) {
            Intrinsics.checkNotNullParameter(errorState, "errorState");
            Intrinsics.checkNotNullParameter(exception, "exception");
            Intrinsics.checkNotNullParameter(config, "config");
            return new Params(errorState, exception, config);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            if (this.errorState == params.errorState && Intrinsics.areEqual(this.exception, params.exception) && Intrinsics.areEqual(this.config, params.config)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Configuration getConfig() {
            return this.config;
        }

        @NotNull
        public final ErrorState getErrorState() {
            return this.errorState;
        }

        @NotNull
        public final Exception getException() {
            return this.exception;
        }

        public int hashCode() {
            return (((this.errorState.hashCode() * 31) + this.exception.hashCode()) * 31) + this.config.hashCode();
        }

        @NotNull
        public String toString() {
            return "Params(errorState=" + this.errorState + ", exception=" + this.exception + ", config=" + this.config + ')';
        }
    }

    public InitializeStateError(@NotNull ISDKDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.dispatchers = dispatchers;
    }

    @Override // com.unity3d.services.core.domain.task.BaseTask
    /* renamed from: doWork-gIAlu-s */
    public /* bridge */ /* synthetic */ Object mo4732doWorkgIAlus(BaseParams baseParams, c cVar) {
        return m4744doWorkgIAlus((Params) baseParams, (c<? super Result<Unit>>) cVar);
    }

    @Override // com.unity3d.services.core.domain.task.MetricTask
    @NotNull
    public String getMetricName() {
        return getMetricNameForInitializeTask("error");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: doWork-gIAlu-s  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m4744doWorkgIAlus(@org.jetbrains.annotations.NotNull com.unity3d.services.core.domain.task.InitializeStateError.Params r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<kotlin.Unit>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.services.core.domain.task.InitializeStateError$doWork$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.services.core.domain.task.InitializeStateError$doWork$1 r0 = (com.unity3d.services.core.domain.task.InitializeStateError$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.domain.task.InitializeStateError$doWork$1 r0 = new com.unity3d.services.core.domain.task.InitializeStateError$doWork$1
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
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r7)
            com.unity3d.services.core.domain.ISDKDispatchers r7 = r5.dispatchers
            gt.c0 r7 = r7.getDefault()
            com.unity3d.services.core.domain.task.InitializeStateError$doWork$2 r2 = new com.unity3d.services.core.domain.task.InitializeStateError$doWork$2
            r4 = 0
            r2.<init>(r6, r4)
            r0.label = r3
            java.lang.Object r7 = gt.e.g(r7, r2, r0)
            if (r7 != r1) goto L49
            return r1
        L49:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateError.m4744doWorkgIAlus(com.unity3d.services.core.domain.task.InitializeStateError$Params, rs.c):java.lang.Object");
    }
}
