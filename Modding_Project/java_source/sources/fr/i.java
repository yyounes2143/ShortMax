package fr;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: SharedPreferenceUtils.java */
/* loaded from: classes8.dex */
public class i {
    public static int a(@NonNull SharedPreferences sharedPreferences, @NonNull String str, int i10) {
        try {
            if (sharedPreferences.contains(str)) {
                return sharedPreferences.getInt(str, i10);
            }
        } catch (Exception unused) {
        }
        return i10;
    }

    public static long b(@NonNull SharedPreferences sharedPreferences, @NonNull String str, long j10) {
        try {
            if (sharedPreferences.contains(str)) {
                return sharedPreferences.getLong(str, j10);
            }
        } catch (Exception unused) {
        }
        return j10;
    }

    @Nullable
    public static String c(@NonNull SharedPreferences sharedPreferences, @NonNull String str, @Nullable String str2) {
        try {
            if (sharedPreferences.contains(str)) {
                String string = sharedPreferences.getString(str, str2);
                if (string != null) {
                    return string;
                }
            }
        } catch (Exception unused) {
        }
        return str2;
    }

    public static void d(@NonNull SharedPreferences sharedPreferences, @NonNull String str, @Nullable Integer num) {
        if (num == null) {
            g(sharedPreferences, str);
        } else {
            sharedPreferences.edit().putInt(str, num.intValue()).apply();
        }
    }

    public static void e(@NonNull SharedPreferences sharedPreferences, @NonNull String str, @Nullable Long l10) {
        if (l10 == null) {
            g(sharedPreferences, str);
        } else {
            sharedPreferences.edit().putLong(str, l10.longValue()).apply();
        }
    }

    public static void f(@NonNull SharedPreferences sharedPreferences, @NonNull String str, @Nullable String str2) {
        if (str2 == null) {
            g(sharedPreferences, str);
        } else {
            sharedPreferences.edit().putString(str, str2).apply();
        }
    }

    public static void g(@NonNull SharedPreferences sharedPreferences, @NonNull String str) {
        sharedPreferences.edit().remove(str).apply();
    }
}
