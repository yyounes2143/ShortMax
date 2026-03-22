package com.vungle.ads.internal.task;

import android.content.Context;
import android.os.Bundle;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.io.IOException;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CleanupJob.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CleanupJob implements Job {
    @NotNull
    private static final String AD_ID_KEY = "AD_ID_KEY";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TAG = "CleanupJob";
    @NotNull
    private final Context context;
    @NotNull
    private final PathProvider pathProvider;

    /* compiled from: CleanupJob.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ JobInfo makeJobInfo$default(Companion companion, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = null;
            }
            return companion.makeJobInfo(str);
        }

        @NotNull
        public final JobInfo makeJobInfo(@Nullable String str) {
            boolean z10 = false;
            JobInfo priority = new JobInfo(CleanupJob.TAG).setPriority(0);
            Bundle bundle = new Bundle();
            if (str != null) {
                bundle.putString(CleanupJob.AD_ID_KEY, str);
            }
            JobInfo extras = priority.setExtras(bundle);
            if (str == null) {
                z10 = true;
            }
            return extras.setUpdateCurrent(z10);
        }

        private Companion() {
        }
    }

    public CleanupJob(@NotNull Context context, @NotNull PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.context = context;
        this.pathProvider = pathProvider;
    }

    private final void checkIfSdkUpgraded() {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        i a10 = c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.task.CleanupJob$checkIfSdkUpgraded$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilePreferences invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
            }
        });
        int i10 = m4833checkIfSdkUpgraded$lambda3(a10).getInt("VERSION_CODE", -1);
        if (i10 < 70501) {
            if (i10 < 70000) {
                dropV6Data();
            }
            if (i10 < 70100) {
                dropV700Data();
            }
            if (i10 < 70301) {
                dropV730TempData();
            }
            if (i10 < 70500) {
                dropV742TpatData();
            }
            m4833checkIfSdkUpgraded$lambda3(a10).put("VERSION_CODE", BuildConfig.VERSION_CODE).apply();
        }
    }

    /* renamed from: checkIfSdkUpgraded$lambda-3  reason: not valid java name */
    private static final FilePreferences m4833checkIfSdkUpgraded$lambda3(i<FilePreferences> iVar) {
        return iVar.getValue();
    }

    private final void dropV6Data() {
        Logger.Companion.d(TAG, "CleanupJob: drop old files data");
        File file = new File(this.context.getNoBackupFilesDir(), "vungle_db");
        if (file.exists()) {
            FileUtility.delete(file);
            FileUtility.delete(new File(file.getPath() + "-journal"));
        } else {
            this.context.deleteDatabase("vungle_db");
        }
        String string = this.context.getSharedPreferences("com.vungle.sdk", 0).getString(ICEffectKeys.KEY_IS_IC_EFFECT_CACHE_PATH, null);
        this.context.deleteSharedPreferences("com.vungle.sdk");
        File noBackupFilesDir = this.context.getNoBackupFilesDir();
        Intrinsics.checkNotNullExpressionValue(noBackupFilesDir, "{\n            context.noBackupFilesDir\n        }");
        FileUtility.delete(new File(noBackupFilesDir, "vungle_settings"));
        if (string != null) {
            FileUtility.delete(new File(string));
        }
    }

    private final void dropV700Data() {
        FileUtility.delete(new File(this.context.getApplicationInfo().dataDir, "vungle"));
    }

    private final void dropV730TempData() {
        try {
            FileUtility.delete(new File(this.pathProvider.getSharedPrefsDir(), "vungleSettings"));
            FileUtility.delete(new File(this.pathProvider.getSharedPrefsDir(), "failedTpatSet"));
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "Failed to delete temp data", e10);
        }
    }

    private final void dropV742TpatData() {
        File noBackupFilesDir = this.context.getNoBackupFilesDir();
        try {
            FileUtility.delete(new File(noBackupFilesDir, "failedTpats"));
            FileUtility.delete(new File(noBackupFilesDir, "failedGenericTpats"));
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "Failed to delete 742 tpat data", e10);
        }
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
        File file;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(jobRunner, "jobRunner");
        File downloadDir = this.pathProvider.getDownloadDir();
        String string = bundle.getString(AD_ID_KEY);
        if (string == null || (file = this.pathProvider.getDownloadsDirForAd(string)) == null) {
            file = downloadDir;
        }
        Logger.Companion.d(TAG, "CleanupJob: Current directory snapshot");
        try {
            if (Intrinsics.areEqual(file, downloadDir)) {
                checkIfSdkUpgraded();
                FileUtility.deleteContents(file);
                return 0;
            }
            FileUtility.delete(file);
            return 0;
        } catch (IOException unused) {
            return 1;
        }
    }
}
