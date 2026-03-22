package hb;

import android.util.Pair;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes5.dex */
public abstract class o0 {
    public static long a(String str, long j10) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.getDefault());
            return simpleDateFormat.parse(simpleDateFormat.format(Long.valueOf(j10))).getTime();
        } catch (ParseException unused) {
            f1.m("hmsSdk/stringUtil", "getMillisOfDate(): Time conversion Exception !");
            return 0L;
        }
    }

    public static Pair<String, String> b(String str) {
        String str2;
        String str3;
        if (!"_default_config_tag".equals(str)) {
            String[] split = str.split("-");
            if (split.length > 2) {
                str3 = split[split.length - 1];
                str2 = str.substring(0, (str.length() - str3.length()) - 1);
            } else {
                str2 = split[0];
                str3 = split[1];
            }
            return new Pair<>(str2, str3);
        }
        return new Pair<>(str, "");
    }

    public static String c(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return "alltype";
                    }
                    return "diffprivacy";
                }
                return "preins";
            }
            return "maint";
        }
        return "oper";
    }

    public static String d(String str, String str2) {
        if (!"_default_config_tag".equals(str)) {
            return str + "-" + str2;
        }
        return str;
    }

    public static String e(String str, String str2, String str3) {
        if ("_default_config_tag".equals(str)) {
            return "_default_config_tag#" + str3;
        }
        return str + "-" + str2 + "#" + str3;
    }

    public static Set<String> f(Set<String> set) {
        if (set != null && set.size() != 0) {
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!"_default_config_tag".equals(str)) {
                    String str2 = str + "-oper";
                    String str3 = str + "-maint";
                    hashSet.add(str2);
                    hashSet.add(str3);
                    hashSet.add(str + "-diffprivacy");
                } else {
                    hashSet.add("_default_config_tag");
                }
            }
            return hashSet;
        }
        return new HashSet();
    }
}
