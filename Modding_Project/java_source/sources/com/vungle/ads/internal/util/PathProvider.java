package com.vungle.ads.internal.util;

import android.content.Context;
import android.os.StatFs;
import com.vungle.ads.internal.util.Logger;
import java.io.File;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PathProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PathProvider {
    @NotNull
    private static final String CLEVER_CACHE_FOLDER = "clever_cache";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String DOWNLOADS_FOLDER = "downloads";
    @NotNull
    private static final String JS_FOLDER = "js";
    private static final long UNKNOWN_SIZE = -1;
    @NotNull
    private static final String VUNGLE_FOLDER = "vungle_cache";
    @NotNull
    private final File cleverCacheDir;
    @NotNull
    private final Context context;
    @NotNull
    private final File downloadsDir;
    @NotNull
    private final File jsDir;
    @NotNull
    private final File vungleDir;

    /* compiled from: PathProvider.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public PathProvider(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        File file = new File(context.getNoBackupFilesDir(), VUNGLE_FOLDER);
        this.vungleDir = file;
        File file2 = new File(file, DOWNLOADS_FOLDER);
        this.downloadsDir = file2;
        File file3 = new File(file, JS_FOLDER);
        this.jsDir = file3;
        File file4 = new File(file, CLEVER_CACHE_FOLDER);
        this.cleverCacheDir = file4;
        for (File file5 : CollectionsKt.q(file, file2, file3, file4)) {
            if (!file5.exists()) {
                file5.mkdirs();
            }
        }
    }

    public final long getAvailableBytes(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            return new StatFs(path).getAvailableBytes();
        } catch (IllegalArgumentException e10) {
            Logger.Companion companion = Logger.Companion;
            companion.w("PathProvider", "Failed to get available bytes " + e10.getMessage());
            return -1L;
        }
    }

    @NotNull
    public final File getCleverCacheDir() {
        if (!this.cleverCacheDir.exists()) {
            this.cleverCacheDir.mkdirs();
        }
        return this.cleverCacheDir;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final File getDownloadDir() {
        if (!this.downloadsDir.exists()) {
            this.downloadsDir.mkdirs();
        }
        return this.downloadsDir;
    }

    @Nullable
    public final File getDownloadsDirForAd(@Nullable String str) {
        if (str != null && str.length() != 0) {
            File downloadDir = getDownloadDir();
            File file = new File(downloadDir.getPath() + File.separator + str);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
        return null;
    }

    @NotNull
    public final File getJsAssetDir(@NotNull String jsVersion) {
        Intrinsics.checkNotNullParameter(jsVersion, "jsVersion");
        File file = new File(getJsDir(), jsVersion);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @NotNull
    public final File getJsDir() {
        if (!this.jsDir.exists()) {
            this.jsDir.mkdirs();
        }
        return this.jsDir;
    }

    @NotNull
    public final File getSharedPrefsDir() {
        File noBackupFilesDir = this.context.getNoBackupFilesDir();
        Intrinsics.checkNotNullExpressionValue(noBackupFilesDir, "{\n        context.noBackupFilesDir\n    }");
        return noBackupFilesDir;
    }

    @NotNull
    public final File getUnclosedAdFile(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new File(getSharedPrefsDir(), name);
    }

    @NotNull
    public final File getVungleDir() {
        if (!this.vungleDir.exists()) {
            this.vungleDir.mkdirs();
        }
        return this.vungleDir;
    }
}
