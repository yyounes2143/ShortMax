package sq;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.math.BigInteger;
import java.util.Date;
import tp.s;
/* loaded from: classes8.dex */
public class e {
    public static void a(@NonNull Context context) {
        new f("temp").b(d(context));
    }

    public static boolean b(@NonNull File file) {
        try {
            return file.delete();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Nullable
    public static String c(@NonNull String str) {
        byte[] c10 = m.c(str.getBytes());
        if (c10 == null) {
            return null;
        }
        return new BigInteger(c10).abs().toString(36);
    }

    @Nullable
    public static File d(@NonNull Context context) {
        File externalFilesDir;
        if (!ar.a.a() || (externalFilesDir = context.getExternalFilesDir(null)) == null) {
            return null;
        }
        File file = new File(externalFilesDir, "Rendering");
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        return file;
    }

    @Nullable
    public static File e(@NonNull Context context, @Nullable String str) {
        File d10;
        if (TextUtils.isEmpty(str) || (d10 = d(context)) == null) {
            return null;
        }
        return new File(d10, str);
    }

    @Nullable
    public static File f(@NonNull Context context, @NonNull String str) {
        return e(context, c(str));
    }

    public static boolean g(@Nullable File file) {
        if (file != null && file.exists() && file.length() > 0) {
            return false;
        }
        return true;
    }

    public static boolean h(@NonNull File file, @NonNull Date date) {
        return new Date(file.lastModified()).before(date);
    }

    public static boolean i(@NonNull File file, @NonNull String str) {
        return file.getName().startsWith(str);
    }

    @Nullable
    public static Uri j(@Nullable File file) {
        if (file == null) {
            return null;
        }
        try {
            return Uri.fromFile(file);
        } catch (Throwable th2) {
            s.h(th2);
            return null;
        }
    }
}
