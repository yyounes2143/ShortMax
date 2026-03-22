package yq;

import android.content.Context;
import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull
    public static final Configuration a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Configuration configuration = context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "resources.configuration");
        return configuration;
    }

    @NotNull
    public static final DisplayMetrics b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "resources.displayMetrics");
        return displayMetrics;
    }

    @Nullable
    public static final String c(@NotNull Context context) {
        String str;
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            TelephonyManager t10 = s.t(context);
            if (t10 != null) {
                str = t10.getNetworkOperator();
            } else {
                str = null;
            }
            if (str != null && str.length() >= 3) {
                StringBuilder sb2 = new StringBuilder();
                String substring = str.substring(0, 3);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb2.append(substring);
                sb2.append('-');
                String substring2 = str.substring(3);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                sb2.append(substring2);
                return sb2.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Nullable
    public static final String d(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        TelephonyManager t10 = s.t(context);
        if (t10 != null) {
            return t10.getNetworkOperatorName();
        }
        return null;
    }

    public static final float e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return b(context).density;
    }
}
