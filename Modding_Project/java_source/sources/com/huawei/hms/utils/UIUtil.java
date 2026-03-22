package com.huawei.hms.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.text.TextUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.common.ActivityMgr;
import com.huawei.hms.support.log.HMSLog;
import java.util.List;
/* loaded from: classes5.dex */
public class UIUtil {
    private static int a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    public static Activity getActiveActivity(Activity activity, Context context) {
        if (isBackground(context)) {
            HMSLog.i("UIUtil", "isBackground" + isBackground(context));
            return null;
        } else if (activity == null) {
            HMSLog.i("UIUtil", "activity is null");
            return ActivityMgr.INST.getCurrentActivity();
        } else if (activity.isFinishing()) {
            HMSLog.i("UIUtil", "activity isFinishing is " + activity.isFinishing());
            return ActivityMgr.INST.getCurrentActivity();
        } else {
            return activity;
        }
    }

    public static int getDialogThemeId(Activity activity) {
        if (a(activity) != 0) {
            return 0;
        }
        if (activity == null || (activity.getResources().getConfiguration().uiMode & 48) != 32) {
            return 3;
        }
        return 2;
    }

    public static String getProcessName(Context context, int i10) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context != null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == i10) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return "";
    }

    public static boolean isActivityFullscreen(Activity activity) {
        if (activity == null) {
            HMSLog.w("UIUtil", "activity is null");
            return false;
        } else if ((activity.getWindow().getAttributes().flags & 1024) != 1024) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean isBackground(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        boolean z10;
        if (context == null) {
            return true;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return true;
        }
        String processName = getProcessName(context, Process.myPid());
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (TextUtils.equals(runningAppProcessInfo.processName, processName)) {
                HMSLog.i("UIUtil", "appProcess.importance is " + runningAppProcessInfo.importance);
                if (runningAppProcessInfo.importance == 100) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean isKeyguardLocked = keyguardManager.isKeyguardLocked();
                HMSLog.i("UIUtil", "isForground is " + z10 + "***  isLockedState is " + isKeyguardLocked);
                if (!z10 || isKeyguardLocked) {
                    return true;
                }
                return false;
            }
        }
        return true;
    }

    public static Intent modifyIntentBehaviorsSafe(Intent intent) {
        if (intent == null) {
            return null;
        }
        String action = intent.getAction();
        if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action) || "android.media.action.IMAGE_CAPTURE".equals(action) || "android.media.action.IMAGE_CAPTURE_SECURE".equals(action) || "android.media.action.VIDEO_CAPTURE".equals(action)) {
            intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
        }
        intent.setFlags(intent.getFlags() & (-196));
        return intent;
    }
}
