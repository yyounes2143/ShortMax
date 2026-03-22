package v7;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class z0 {

    /* renamed from: a  reason: collision with root package name */
    private static z0 f68841a = new z0();

    private z0() {
    }

    private static SharedPreferences a(Context context, String str) {
        return context.getSharedPreferences(String.format("com.google.firebase.auth.internal.browserSignInSessionStore.%s", str), 0);
    }

    public static z0 b() {
        return f68841a;
    }

    private static void f(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        for (String str : sharedPreferences.getAll().keySet()) {
            edit.remove(str);
        }
        edit.apply();
    }

    @Nullable
    public final synchronized c1 c(Context context, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        SharedPreferences a10 = a(context, str);
        String format = String.format("com.google.firebase.auth.internal.EVENT_ID.%s.SESSION_ID", str2);
        String format2 = String.format("com.google.firebase.auth.internal.EVENT_ID.%s.OPERATION", str2);
        String format3 = String.format("com.google.firebase.auth.internal.EVENT_ID.%s.PROVIDER_ID", str2);
        String format4 = String.format("com.google.firebase.auth.internal.EVENT_ID.%s.FIREBASE_APP_NAME", str2);
        String string = a10.getString(format, null);
        String string2 = a10.getString(format2, null);
        String string3 = a10.getString(format3, null);
        String string4 = a10.getString("com.google.firebase.auth.api.gms.config.tenant.id", null);
        String string5 = a10.getString(format4, null);
        SharedPreferences.Editor edit = a10.edit();
        edit.remove(format);
        edit.remove(format2);
        edit.remove(format3);
        edit.remove(format4);
        edit.apply();
        if (string == null || string2 == null || string3 == null) {
            return null;
        }
        return new c1(string, string2, string3, string4, string5);
    }

    public final synchronized void d(Context context, String str, String str2, String str3, String str4) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        SharedPreferences a10 = a(context, str);
        f(a10);
        SharedPreferences.Editor edit = a10.edit();
        edit.putString(String.format("com.google.firebase.auth.internal.EVENT_ID.%s.OPERATION", str2), str3);
        edit.putString(String.format("com.google.firebase.auth.internal.EVENT_ID.%s.FIREBASE_APP_NAME", str2), str4);
        edit.apply();
    }

    public final synchronized void e(Context context, String str, String str2, String str3, String str4, String str5, @Nullable String str6, String str7) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotEmpty(str7);
        SharedPreferences a10 = a(context, str);
        f(a10);
        SharedPreferences.Editor edit = a10.edit();
        edit.putString(String.format("com.google.firebase.auth.internal.EVENT_ID.%s.SESSION_ID", str2), str3);
        edit.putString(String.format("com.google.firebase.auth.internal.EVENT_ID.%s.OPERATION", str2), str4);
        edit.putString(String.format("com.google.firebase.auth.internal.EVENT_ID.%s.PROVIDER_ID", str2), str5);
        edit.putString(String.format("com.google.firebase.auth.internal.EVENT_ID.%s.FIREBASE_APP_NAME", str2), str7);
        edit.putString("com.google.firebase.auth.api.gms.config.tenant.id", str6);
        edit.apply();
    }

    @Nullable
    public final synchronized String g(Context context, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        SharedPreferences a10 = a(context, str);
        String format = String.format("com.google.firebase.auth.internal.EVENT_ID.%s.OPERATION", str2);
        String string = a10.getString(format, null);
        String format2 = String.format("com.google.firebase.auth.internal.EVENT_ID.%s.FIREBASE_APP_NAME", str2);
        String string2 = a10.getString(format2, null);
        SharedPreferences.Editor edit = a10.edit();
        edit.remove(format);
        edit.remove(format2);
        edit.apply();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string2;
    }
}
