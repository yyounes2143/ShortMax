package com.unity3d.ads.core.domain.work;

import android.content.Context;
import androidx.work.Constraints;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BackgroundWorker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBackgroundWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,34:1\n29#2:35\n*S KotlinDebug\n*F\n+ 1 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n*L\n23#1:35\n*E\n"})
/* loaded from: classes7.dex */
public final class BackgroundWorker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TAG = "UnityAdsBackgroundWorker";
    @NotNull
    private final WorkManager workManager;

    /* compiled from: BackgroundWorker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BackgroundWorker(@NotNull Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        WorkManager workManager = WorkManager.getInstance(applicationContext);
        Intrinsics.checkNotNullExpressionValue(workManager, "getInstance(applicationContext)");
        this.workManager = workManager;
    }

    @NotNull
    public final WorkManager getWorkManager() {
        return this.workManager;
    }

    public final /* synthetic */ <T extends UniversalRequestJob> void invoke(UniversalRequestWorkerData universalRequestWorkerData) {
        Intrinsics.checkNotNullParameter(universalRequestWorkerData, "universalRequestWorkerData");
        Constraints build = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…TED)\n            .build()");
        Intrinsics.reifiedOperationMarker(4, "T");
        OneTimeWorkRequest build2 = new OneTimeWorkRequest.Builder(ListenableWorker.class).setConstraints(build).setInputData(universalRequestWorkerData.invoke()).addTag(TAG).build();
        Intrinsics.checkNotNullExpressionValue(build2, "OneTimeWorkRequestBuilde…TAG)\n            .build()");
        getWorkManager().enqueue(build2);
    }
}
