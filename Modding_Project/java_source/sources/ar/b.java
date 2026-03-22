package ar;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.f;
/* compiled from: FileUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull
    public static final File a(@Nullable File file, @NotNull String childPathname) {
        Intrinsics.checkNotNullParameter(childPathname, "childPathname");
        return new File(file, childPathname);
    }

    @NotNull
    public static final File b(@Nullable File file, @NotNull String tempFilePrefix) {
        Intrinsics.checkNotNullParameter(tempFilePrefix, "tempFilePrefix");
        return a(file, tempFilePrefix + System.nanoTime());
    }

    public static final boolean c(@Nullable File file) {
        Boolean bool;
        File[] listFiles;
        if (file != null && d(file)) {
            try {
                if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                    Intrinsics.checkNotNullExpressionValue(listFiles, "listFiles()");
                    for (File file2 : listFiles) {
                        a.d(file2);
                    }
                }
                bool = Boolean.valueOf(file.delete());
            } catch (Throwable unused) {
                bool = null;
            }
            return Intrinsics.areEqual(bool, Boolean.TRUE);
        }
        return true;
    }

    public static final boolean d(@NotNull File file) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(file, "<this>");
        try {
            bool = Boolean.valueOf(file.exists());
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    @Nullable
    public static final File e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (!a.a()) {
            return null;
        }
        return context.getExternalFilesDir(null);
    }

    @Nullable
    public static final File f(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return null;
            }
            Intrinsics.checkNotNullExpressionValue(externalStorageDirectory, "Environment.getExternalS…irectory() ?: return null");
            return new File(externalStorageDirectory, "/Android/data/" + context.getPackageName() + "/files");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final boolean g(@Nullable File file) {
        if (file != null && d(file) && file.length() > 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public static final String h(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        try {
            return f.m(file, null, 1, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final boolean i(@NotNull File file, @NotNull File to2) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(to2, "to");
        try {
            bool = Boolean.valueOf(file.renameTo(to2));
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }
}
