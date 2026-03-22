package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.work.Logger;
/* loaded from: classes2.dex */
public class PackageManagerHelper {
    private static final String TAG = Logger.tagWithPrefix("PackageManagerHelper");

    private PackageManagerHelper() {
    }

    public static boolean isComponentExplicitlyEnabled(@NonNull Context context, @NonNull Class<?> cls) {
        return isComponentExplicitlyEnabled(context, cls.getName());
    }

    public static void setComponentEnabled(@NonNull Context context, @NonNull Class<?> cls, boolean z10) {
        int i10;
        String str;
        String str2 = "disabled";
        try {
            PackageManager packageManager = context.getPackageManager();
            ComponentName componentName = new ComponentName(context, cls.getName());
            if (z10) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            packageManager.setComponentEnabledSetting(componentName, i10, 1);
            Logger logger = Logger.get();
            String str3 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append(" ");
            if (!z10) {
                str = "disabled";
            } else {
                str = "enabled";
            }
            sb2.append(str);
            logger.debug(str3, sb2.toString());
        } catch (Exception e10) {
            Logger logger2 = Logger.get();
            String str4 = TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(cls.getName());
            sb3.append("could not be ");
            if (z10) {
                str2 = "enabled";
            }
            sb3.append(str2);
            logger2.debug(str4, sb3.toString(), e10);
        }
    }

    public static boolean isComponentExplicitlyEnabled(@NonNull Context context, @NonNull String str) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, str)) == 1;
    }
}
