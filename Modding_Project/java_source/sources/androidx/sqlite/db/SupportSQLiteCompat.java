package androidx.sqlite.db;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: SupportSQLiteCompat.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class SupportSQLiteCompat {

    /* compiled from: SupportSQLiteCompat.android.kt */
    @c
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static final class Api16Impl {
        @NotNull
        public static final Api16Impl INSTANCE = new Api16Impl();

        private Api16Impl() {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final void cancel(@NotNull CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
            cancellationSignal.cancel();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @NotNull
        public static final CancellationSignal createCancellationSignal() {
            return new CancellationSignal();
        }
    }

    /* compiled from: SupportSQLiteCompat.android.kt */
    @c
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static final class Api19Impl {
        @NotNull
        public static final Api19Impl INSTANCE = new Api19Impl();

        private Api19Impl() {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @NotNull
        public static final Uri getNotificationUri(@NotNull Cursor cursor) {
            Intrinsics.checkNotNullParameter(cursor, "cursor");
            Uri notificationUri = cursor.getNotificationUri();
            Intrinsics.checkNotNullExpressionValue(notificationUri, "getNotificationUri(...)");
            return notificationUri;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final boolean isLowRamDevice(@NotNull ActivityManager activityManager) {
            Intrinsics.checkNotNullParameter(activityManager, "activityManager");
            return activityManager.isLowRamDevice();
        }
    }

    /* compiled from: SupportSQLiteCompat.android.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static final class Api21Impl {
        @NotNull
        public static final Api21Impl INSTANCE = new Api21Impl();

        private Api21Impl() {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public static final File getNoBackupFilesDir(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            File noBackupFilesDir = context.getNoBackupFilesDir();
            Intrinsics.checkNotNullExpressionValue(noBackupFilesDir, "getNoBackupFilesDir(...)");
            return noBackupFilesDir;
        }
    }

    /* compiled from: SupportSQLiteCompat.android.kt */
    @Metadata
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static final class Api23Impl {
        @NotNull
        public static final Api23Impl INSTANCE = new Api23Impl();

        private Api23Impl() {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static final void setExtras(@NotNull Cursor cursor, @NotNull Bundle extras) {
            Intrinsics.checkNotNullParameter(cursor, "cursor");
            Intrinsics.checkNotNullParameter(extras, "extras");
            cursor.setExtras(extras);
        }
    }

    /* compiled from: SupportSQLiteCompat.android.kt */
    @Metadata
    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static final class Api29Impl {
        @NotNull
        public static final Api29Impl INSTANCE = new Api29Impl();

        private Api29Impl() {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public static final List<Uri> getNotificationUris(@NotNull Cursor cursor) {
            Intrinsics.checkNotNullParameter(cursor, "cursor");
            List<Uri> notificationUris = cursor.getNotificationUris();
            Intrinsics.checkNotNull(notificationUris);
            return notificationUris;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static final void setNotificationUris(@NotNull Cursor cursor, @NotNull ContentResolver cr2, @NotNull List<? extends Uri> uris) {
            Intrinsics.checkNotNullParameter(cursor, "cursor");
            Intrinsics.checkNotNullParameter(cr2, "cr");
            Intrinsics.checkNotNullParameter(uris, "uris");
            cursor.setNotificationUris(cr2, uris);
        }
    }

    private SupportSQLiteCompat() {
    }
}
