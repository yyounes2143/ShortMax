package com.unity3d.ads.core.domain.work;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.domain.events.UniversalRequestEventSender;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
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
/* compiled from: UniversalRequestJob.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUniversalRequestJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestJob.kt\ncom/unity3d/ads/core/domain/work/UniversalRequestJob\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,37:1\n29#2,5:38\n29#2,5:43\n*S KotlinDebug\n*F\n+ 1 UniversalRequestJob.kt\ncom/unity3d/ads/core/domain/work/UniversalRequestJob\n*L\n19#1:38,5\n20#1:43,5\n*E\n"})
/* loaded from: classes7.dex */
public abstract class UniversalRequestJob extends CoroutineWorker implements IServiceComponent {
    public RequestPolicy requestPolicy;
    @NotNull
    private final i universalRequestDataSource$delegate;
    @NotNull
    private final i universalRequestEventSender$delegate;
    @NotNull
    private final WorkerParameters workerParams;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalRequestJob(@NotNull Context context, @NotNull WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        this.workerParams = workerParams;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.universalRequestEventSender$delegate = c.a(lazyThreadSafetyMode, new Function0<UniversalRequestEventSender>() { // from class: com.unity3d.ads.core.domain.work.UniversalRequestJob$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.events.UniversalRequestEventSender] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UniversalRequestEventSender invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class));
            }
        });
        this.universalRequestDataSource$delegate = c.a(lazyThreadSafetyMode, new Function0<UniversalRequestDataSource>() { // from class: com.unity3d.ads.core.domain.work.UniversalRequestJob$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.data.datasource.UniversalRequestDataSource] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UniversalRequestDataSource invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(2:3|(10:5|6|7|(1:(1:(1:(3:12|13|14)(2:16|17))(5:18|19|20|21|(4:23|(1:25)|13|14)(2:26|27)))(1:29))(2:34|(2:36|37)(2:38|(1:40)(1:41)))|30|31|(1:33)|20|21|(0)(0)))|44|6|7|(0)(0)|30|31|(0)|20|21|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00af, code lost:
        r4 = kotlin.Result.f60901b;
        r9 = kotlin.Result.d(kotlin.f.a(r9));
        r2 = r2;
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00db  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object doWork$suspendImpl(com.unity3d.ads.core.domain.work.UniversalRequestJob r8, rs.c<? super androidx.work.ListenableWorker.Result> r9) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.work.UniversalRequestJob.doWork$suspendImpl(com.unity3d.ads.core.domain.work.UniversalRequestJob, rs.c):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    @Nullable
    public Object doWork(@NotNull rs.c<? super ListenableWorker.Result> cVar) {
        return doWork$suspendImpl(this, cVar);
    }

    @NotNull
    public final RequestPolicy getRequestPolicy() {
        RequestPolicy requestPolicy = this.requestPolicy;
        if (requestPolicy != null) {
            return requestPolicy;
        }
        Intrinsics.throwUninitializedPropertyAccessException("requestPolicy");
        return null;
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    @NotNull
    public final UniversalRequestDataSource getUniversalRequestDataSource() {
        return (UniversalRequestDataSource) this.universalRequestDataSource$delegate.getValue();
    }

    @NotNull
    public final UniversalRequestEventSender getUniversalRequestEventSender() {
        return (UniversalRequestEventSender) this.universalRequestEventSender$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final WorkerParameters getWorkerParams() {
        return this.workerParams;
    }

    public final void setRequestPolicy(@NotNull RequestPolicy requestPolicy) {
        Intrinsics.checkNotNullParameter(requestPolicy, "<set-?>");
        this.requestPolicy = requestPolicy;
    }
}
