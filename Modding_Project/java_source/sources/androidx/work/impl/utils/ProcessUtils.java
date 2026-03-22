package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkManager;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProcessUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ProcessUtils {
    @NotNull
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("ProcessUtils");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"ProcessUtils\")");
        TAG = tagWithPrefix;
    }

    @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    private static final String getProcessName(Context context) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.INSTANCE.getProcessName();
        }
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, WorkManager.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            Intrinsics.checkNotNull(invoke);
            if (invoke instanceof String) {
                return (String) invoke;
            }
        } catch (Throwable th2) {
            Logger.get().debug(TAG, "Unable to check ActivityThread for processName", th2);
        }
        int myPid = Process.myPid();
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return null;
        }
        Iterator<T> it = runningAppProcesses.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((ActivityManager.RunningAppProcessInfo) obj).pid == myPid) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) obj;
        if (runningAppProcessInfo == null) {
            return null;
        }
        return runningAppProcessInfo.processName;
    }

    public static final boolean isDefaultProcess(@NotNull Context context, @NotNull Configuration configuration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        String processName = getProcessName(context);
        String defaultProcessName = configuration.getDefaultProcessName();
        if (defaultProcessName != null && defaultProcessName.length() != 0) {
            return Intrinsics.areEqual(processName, configuration.getDefaultProcessName());
        }
        return Intrinsics.areEqual(processName, context.getApplicationInfo().processName);
    }
}
