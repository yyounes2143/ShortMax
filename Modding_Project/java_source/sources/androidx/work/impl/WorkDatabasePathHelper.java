package androidx.work.impl;

import android.content.Context;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: WorkDatabasePathHelper.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class WorkDatabasePathHelper {
    @NotNull
    public static final WorkDatabasePathHelper INSTANCE = new WorkDatabasePathHelper();

    private WorkDatabasePathHelper() {
    }

    @RequiresApi(23)
    private final File getNoBackupPath(Context context) {
        return new File(Api21Impl.INSTANCE.getNoBackupFilesDir(context), WorkDatabasePathHelperKt.WORK_DATABASE_NAME);
    }

    public static final void migrateDatabase(@NotNull Context context) {
        String str;
        String str2;
        String str3;
        String str4;
        Intrinsics.checkNotNullParameter(context, "context");
        WorkDatabasePathHelper workDatabasePathHelper = INSTANCE;
        if (workDatabasePathHelper.getDefaultDatabasePath(context).exists()) {
            Logger logger = Logger.get();
            str = WorkDatabasePathHelperKt.TAG;
            logger.debug(str, "Migrating WorkDatabase to the no-backup directory");
            for (Map.Entry<File, File> entry : workDatabasePathHelper.migrationPaths(context).entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    if (value.exists()) {
                        Logger logger2 = Logger.get();
                        str4 = WorkDatabasePathHelperKt.TAG;
                        logger2.warning(str4, "Over-writing contents of " + value);
                    }
                    if (key.renameTo(value)) {
                        str2 = "Migrated " + key + "to " + value;
                    } else {
                        str2 = "Renaming " + key + " to " + value + " failed";
                    }
                    Logger logger3 = Logger.get();
                    str3 = WorkDatabasePathHelperKt.TAG;
                    logger3.debug(str3, str2);
                }
            }
        }
    }

    @NotNull
    public final File getDatabasePath(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return getNoBackupPath(context);
    }

    @NotNull
    public final File getDefaultDatabasePath(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        File databasePath = context.getDatabasePath(WorkDatabasePathHelperKt.WORK_DATABASE_NAME);
        Intrinsics.checkNotNullExpressionValue(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        return databasePath;
    }

    @NotNull
    public final Map<File, File> migrationPaths(@NotNull Context context) {
        String[] strArr;
        Intrinsics.checkNotNullParameter(context, "context");
        File defaultDatabasePath = getDefaultDatabasePath(context);
        File databasePath = getDatabasePath(context);
        strArr = WorkDatabasePathHelperKt.DATABASE_EXTRA_FILES;
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(strArr.length), 16));
        for (String str : strArr) {
            Pair a10 = k.a(new File(defaultDatabasePath.getPath() + str), new File(databasePath.getPath() + str));
            linkedHashMap.put(a10.e(), a10.f());
        }
        return p0.r(linkedHashMap, k.a(defaultDatabasePath, databasePath));
    }
}
