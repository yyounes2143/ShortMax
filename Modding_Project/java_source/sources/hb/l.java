package hb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Map;
@SuppressLint({"ApplySharedPref"})
/* loaded from: classes5.dex */
public class l {
    public static long a(Context context, String str, String str2, long j10) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            SharedPreferences e10 = e(context, str);
            if (e10 != null) {
                return e10.getLong(str2, j10);
            }
            return j10;
        }
        f1.m("hmsSdk", "context is null or spName empty or spkey is empty");
        return j10;
    }

    public static String b(Context context, String str, String str2, String str3) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            SharedPreferences e10 = e(context, str);
            if (e10 != null) {
                return e10.getString(str2, str3);
            }
            return str3;
        }
        f1.m("hmsSdk", "context is null or spName empty or spkey is empty");
        return str3;
    }

    public static Map<String, ?> c(Context context, String str) {
        return e(context, str).getAll();
    }

    public static void d(Context context, String str, String... strArr) {
        String str2;
        if (context != null && !TextUtils.isEmpty(str)) {
            if (strArr == null) {
                str2 = "clearData(): No data need to be deleted,keys is null";
            } else {
                SharedPreferences e10 = e(context, str);
                if (e10 != null) {
                    SharedPreferences.Editor edit = e10.edit();
                    if (strArr.length == 0) {
                        edit.clear();
                        edit.commit();
                        return;
                    }
                    for (String str3 : strArr) {
                        if (e10.contains(str3)) {
                            edit.remove(str3);
                            edit.commit();
                        }
                    }
                    return;
                }
                return;
            }
        } else {
            str2 = "clearData(): parameter error.context,spname";
        }
        f1.m("hmsSdk", str2);
    }

    private static SharedPreferences e(Context context, String str) {
        return context.getSharedPreferences(h(context, str), 0);
    }

    public static void f(Context context, String str, String str2, long j10) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            SharedPreferences e10 = e(context, str);
            if (e10 != null) {
                SharedPreferences.Editor edit = e10.edit();
                edit.putLong(str2, j10);
                edit.commit();
                return;
            }
            return;
        }
        f1.m("hmsSdk", "context is null or spName empty or spkey is empty");
    }

    public static void g(Context context, String str, String str2, String str3) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            SharedPreferences e10 = e(context, str);
            if (e10 != null) {
                SharedPreferences.Editor edit = e10.edit();
                edit.putString(str2, str3);
                edit.commit();
                return;
            }
            return;
        }
        f1.l("hmsSdk", "context is null or spName empty or spkey is empty");
    }

    public static String h(Context context, String str) {
        String packageName = context.getPackageName();
        String o10 = c.o("_hms_config_tag", "oper");
        if (TextUtils.isEmpty(o10)) {
            return "hms_" + str + "_" + packageName;
        }
        return "hms_" + str + "_" + packageName + "_" + o10;
    }
}
