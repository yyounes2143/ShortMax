package com.bytedance.bdtracker;

import android.content.SharedPreferences;
/* compiled from: outline */
/* loaded from: classes3.dex */
public class a {
    public static StringBuilder a(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        return sb2;
    }

    public static void a(SharedPreferences sharedPreferences, String str, String str2) {
        sharedPreferences.edit().putString(str, str2).apply();
    }
}
