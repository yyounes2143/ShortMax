package fk;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProcessUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class y {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final y f51785a = new y();

    private y() {
    }

    @NotNull
    public final String a(@NotNull Context context) {
        String str = "";
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                str = Application.getProcessName();
            } else {
                int myPid = Process.myPid();
                Object systemService = context.getSystemService("activity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) systemService).getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        str = runningAppProcessInfo.processName;
                        break;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public final boolean b(@NotNull Context context, @NotNull String... processNames) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(processNames, "processNames");
        try {
            Object systemService = context.getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
            Intrinsics.checkNotNullExpressionValue(runningAppProcesses, "getRunningAppProcesses(...)");
            Iterator<T> it = runningAppProcesses.iterator();
            if (!it.hasNext()) {
                return false;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) it.next();
            int length = processNames.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    str = processNames[i10];
                    if (Intrinsics.areEqual(str, runningAppProcessInfo.processName)) {
                        break;
                    }
                    i10++;
                } else {
                    str = null;
                    break;
                }
            }
            if (str == null) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Intrinsics.areEqual(a(context), context.getPackageName());
    }
}
