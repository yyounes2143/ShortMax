package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.work.Configuration;
import androidx.work.Operation;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class p implements o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final WorkManager f36665a;

    public p(@NotNull Context context) {
        WorkManager c10;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            c10 = b(context);
        } catch (IllegalStateException e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "MolocoWorkManager", "WorkManager not initialized already, performing initialization", e10, false, 8, null);
            c10 = c(context);
        }
        this.f36665a = c10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.o
    @NotNull
    public Operation a(@NotNull WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        Operation enqueue = this.f36665a.enqueue(workRequest);
        Intrinsics.checkNotNullExpressionValue(enqueue, "enqueue(...)");
        return enqueue;
    }

    public final WorkManager b(Context context) {
        WorkManager workManager = WorkManager.getInstance(context);
        Intrinsics.checkNotNullExpressionValue(workManager, "getInstance(...)");
        return workManager;
    }

    public final WorkManager c(Context context) {
        Configuration build = new Configuration.Builder().build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        try {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "MolocoWorkManager", "Trying to initialize work manager as one is not already available", null, false, 12, null);
            try {
                WorkManager.initialize(context, build);
            } catch (IllegalStateException e10) {
                e = e10;
                MolocoLogger.error$default(MolocoLogger.INSTANCE, "MolocoWorkManager", "WorkManager initialized already at this point, retrieving instance", e, false, 8, null);
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "MolocoWorkManager", "Trying to retrieve work manager instance", null, false, 12, null);
                return b(context);
            }
        } catch (IllegalStateException e11) {
            e = e11;
        }
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "MolocoWorkManager", "Trying to retrieve work manager instance", null, false, 12, null);
        try {
            return b(context);
        } catch (IllegalStateException e12) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "MolocoWorkManager", "WorkManager instance couldn't be re-initialized, cannot provide WorkManager", null, false, 12, null);
            throw new IllegalStateException("Cannot provide MolocoWorkManager. Failed to re-initialize WorkManager", e12);
        }
    }
}
