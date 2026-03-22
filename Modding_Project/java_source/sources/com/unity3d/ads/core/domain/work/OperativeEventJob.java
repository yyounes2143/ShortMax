package com.unity3d.ads.core.domain.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.unity3d.ads.core.domain.GetRequestPolicy;
import com.unity3d.services.core.di.IServiceComponent;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OperativeEventJob.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOperativeEventJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperativeEventJob.kt\ncom/unity3d/ads/core/domain/work/OperativeEventJob\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,21:1\n29#2,5:22\n*S KotlinDebug\n*F\n+ 1 OperativeEventJob.kt\ncom/unity3d/ads/core/domain/work/OperativeEventJob\n*L\n15#1:22,5\n*E\n"})
/* loaded from: classes7.dex */
public final class OperativeEventJob extends UniversalRequestJob implements IServiceComponent {
    @NotNull
    private final i getOperativeRequestPolicy$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OperativeEventJob(@NotNull Context context, @NotNull WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        this.getOperativeRequestPolicy$delegate = c.a(LazyThreadSafetyMode.NONE, new Function0<GetRequestPolicy>() { // from class: com.unity3d.ads.core.domain.work.OperativeEventJob$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.GetRequestPolicy] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetRequestPolicy invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class));
            }
        });
    }

    private final GetRequestPolicy getGetOperativeRequestPolicy() {
        return (GetRequestPolicy) this.getOperativeRequestPolicy$delegate.getValue();
    }

    @Override // com.unity3d.ads.core.domain.work.UniversalRequestJob, androidx.work.CoroutineWorker
    @Nullable
    public Object doWork(@NotNull rs.c<? super ListenableWorker.Result> cVar) {
        setRequestPolicy(getGetOperativeRequestPolicy().invoke());
        return super.doWork(cVar);
    }
}
