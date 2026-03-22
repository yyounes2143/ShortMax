package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.SharedPreferences;
import com.mbridge.msdk.foundation.tools.FastKV;
/* compiled from: AsyncSharedPreferencesUtils.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static FastKV f27389a;

    public static Object a(Context context, String str, Object obj) {
        String str2;
        if (context == null) {
            return obj;
        }
        if (obj != null) {
            str2 = obj.getClass().getSimpleName();
        } else {
            str2 = "";
        }
        if (com.mbridge.msdk.foundation.controller.d.a().e() && f27389a == null) {
            try {
                com.mbridge.msdk.foundation.same.directory.e.b();
                f27389a = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "share_kv_date").asyncBlocking().build();
            } catch (Exception unused) {
                f27389a = null;
            }
        }
        if (f27389a != null) {
            try {
                if ("String".equals(str2)) {
                    return f27389a.getString(str, (String) obj);
                }
                if ("Integer".equals(str2)) {
                    return Integer.valueOf(f27389a.getInt(str, ((Integer) obj).intValue()));
                }
                if ("Boolean".equals(str2)) {
                    return Boolean.valueOf(f27389a.getBoolean(str, ((Boolean) obj).booleanValue()));
                }
                if ("Float".equals(str2)) {
                    return Float.valueOf(f27389a.getFloat(str, ((Float) obj).floatValue()));
                }
                if ("Long".equals(str2)) {
                    return Long.valueOf(f27389a.getLong(str, ((Long) obj).longValue()));
                }
            } catch (Exception unused2) {
                return obj;
            }
        } else {
            SharedPreferences sharedPreferences = context.getSharedPreferences("share_kv_date", 0);
            if ("String".equals(str2)) {
                return sharedPreferences.getString(str, (String) obj);
            }
            if ("Integer".equals(str2)) {
                return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
            }
            if ("Boolean".equals(str2)) {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
            }
            if ("Float".equals(str2)) {
                return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
            }
            if ("Long".equals(str2)) {
                return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
            }
        }
        return obj;
    }

    public static void b(Context context, String str, Object obj) {
        String simpleName = obj.getClass().getSimpleName();
        if (context == null) {
            return;
        }
        if (com.mbridge.msdk.foundation.controller.d.a().e() && f27389a == null) {
            try {
                com.mbridge.msdk.foundation.same.directory.e.b();
                f27389a = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "share_kv_date").asyncBlocking().build();
            } catch (Exception unused) {
                f27389a = null;
            }
        }
        if (f27389a != null) {
            try {
                if ("String".equals(simpleName)) {
                    f27389a.putString(str, (String) obj);
                } else if ("Integer".equals(simpleName)) {
                    f27389a.putInt(str, ((Integer) obj).intValue());
                } else if ("Boolean".equals(simpleName)) {
                    f27389a.putBoolean(str, ((Boolean) obj).booleanValue());
                } else if ("Float".equals(simpleName)) {
                    f27389a.putFloat(str, ((Float) obj).floatValue());
                } else if ("Long".equals(simpleName)) {
                    f27389a.putLong(str, ((Long) obj).longValue());
                }
                return;
            } catch (Exception unused2) {
                return;
            }
        }
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences("share_kv_date", 0).edit();
        if ("String".equals(simpleName)) {
            edit.putString(str, (String) obj);
        } else if ("Integer".equals(simpleName)) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if ("Boolean".equals(simpleName)) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if ("Float".equals(simpleName)) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if ("Long".equals(simpleName)) {
            edit.putLong(str, ((Long) obj).longValue());
        }
        edit.apply();
    }
}
