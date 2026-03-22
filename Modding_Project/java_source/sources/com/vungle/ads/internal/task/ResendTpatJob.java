package com.vungle.ads.internal.task;

import android.content.Context;
import android.os.Bundle;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.util.PathProvider;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ResendTpatJob.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ResendTpatJob implements Job {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TAG = "ResendTpatJob";
    @NotNull
    private final Context context;
    @NotNull
    private final PathProvider pathProvider;

    /* compiled from: ResendTpatJob.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final JobInfo makeJobInfo() {
            return new JobInfo(ResendTpatJob.TAG).setPriority(0).setUpdateCurrent(true);
        }

        private Companion() {
        }
    }

    public ResendTpatJob(@NotNull Context context, @NotNull PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.context = context;
        this.pathProvider = pathProvider;
    }

    /* renamed from: onRunJob$lambda-0  reason: not valid java name */
    private static final TpatSender m4834onRunJob$lambda0(i<TpatSender> iVar) {
        return iVar.getValue();
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final PathProvider getPathProvider() {
        return this.pathProvider;
    }

    @Override // com.vungle.ads.internal.task.Job
    public int onRunJob(@NotNull Bundle bundle, @NotNull JobRunner jobRunner) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(jobRunner, "jobRunner");
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        m4834onRunJob$lambda0(c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.task.ResendTpatJob$onRunJob$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TpatSender invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
            }
        })).resendStoredTpats$vungle_ads_release();
        return 0;
    }
}
