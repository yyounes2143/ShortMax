package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.profileinstaller.ProfileInstallReceiver;
import java.io.File;
/* loaded from: classes2.dex */
class BenchmarkOperation {

    @RequiresApi(api = 21)
    /* loaded from: classes2.dex */
    private static class Api21ContextHelper {
        private Api21ContextHelper() {
        }

        static File getCodeCacheDir(Context context) {
            return context.getCodeCacheDir();
        }
    }

    @RequiresApi(api = 24)
    /* loaded from: classes2.dex */
    private static class Api24ContextHelper {
        private Api24ContextHelper() {
        }

        static Context createDeviceProtectedStorageContext(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }

    private BenchmarkOperation() {
    }

    static boolean deleteFilesRecursively(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return false;
            }
            boolean z10 = true;
            for (File file2 : listFiles) {
                if (deleteFilesRecursively(file2) && z10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            return z10;
        }
        file.delete();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void dropShaderCache(@NonNull Context context, @NonNull ProfileInstallReceiver.ResultDiagnostics resultDiagnostics) {
        File codeCacheDir;
        if (Build.VERSION.SDK_INT >= 34) {
            codeCacheDir = Api24ContextHelper.createDeviceProtectedStorageContext(context).getCacheDir();
        } else {
            codeCacheDir = Api21ContextHelper.getCodeCacheDir(Api24ContextHelper.createDeviceProtectedStorageContext(context));
        }
        if (deleteFilesRecursively(codeCacheDir)) {
            resultDiagnostics.onResultReceived(14, null);
        } else {
            resultDiagnostics.onResultReceived(15, null);
        }
    }
}
