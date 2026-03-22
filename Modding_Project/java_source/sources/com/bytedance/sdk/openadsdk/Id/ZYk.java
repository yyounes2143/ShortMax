package com.bytedance.sdk.openadsdk.Id;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private final Context ZYk;
    private SharedPreferences oJ;
    private final String tB;

    public ZYk(Context context, String str) {
        this.ZYk = context;
        this.tB = str;
    }

    private SharedPreferences ZYk() {
        Context context;
        SharedPreferences sharedPreferences = this.oJ;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        if (TextUtils.isEmpty(this.tB) || (context = this.ZYk) == null) {
            return null;
        }
        try {
            this.oJ = context.getSharedPreferences(this.tB, 0);
        } catch (Throwable th2) {
            Log.e("SPUnit", th2.getMessage());
        }
        return this.oJ;
    }

    public void oJ(JSONObject jSONObject) {
        try {
            SharedPreferences ZYk = ZYk();
            if (ZYk != null) {
                SharedPreferences.Editor edit = ZYk.edit();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        Object obj = jSONObject.get(next);
                        if (obj instanceof Integer) {
                            edit.putInt(next, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            edit.putLong(next, ((Long) obj).longValue());
                        } else if (obj instanceof String) {
                            edit.putString(next, (String) obj);
                        } else if (obj instanceof Boolean) {
                            edit.putBoolean(next, ((Boolean) obj).booleanValue());
                        } else if (obj instanceof Float) {
                            edit.putFloat(next, ((Float) obj).floatValue());
                        } else if (obj instanceof Double) {
                            Double d10 = (Double) obj;
                            d10.doubleValue();
                            edit.putFloat(next, d10.floatValue());
                        }
                    }
                }
                edit.apply();
            }
        } catch (Throwable th2) {
            Log.e("SPUnit", th2.getMessage());
        }
    }

    public long ZYk(String str, long j10) {
        try {
            SharedPreferences ZYk = ZYk();
            if (ZYk != null && ZYk.contains(str)) {
                return ZYk.getLong(str, j10);
            }
            return j10;
        } catch (Throwable th2) {
            Log.i("SPUnit", this.tB + th2.getMessage());
            return j10;
        }
    }

    public void oJ(String str, long j10) {
        try {
            SharedPreferences ZYk = ZYk();
            if (ZYk != null) {
                SharedPreferences.Editor edit = ZYk.edit();
                edit.putLong(str, j10);
                edit.apply();
            }
        } catch (Throwable th2) {
            Log.e("SPUnit", th2.getMessage());
        }
    }

    public int oJ(String str, int i10) {
        try {
            SharedPreferences ZYk = ZYk();
            if (ZYk != null && ZYk.contains(str)) {
                return ZYk.getInt(str, i10);
            }
            return i10;
        } catch (Throwable th2) {
            Log.i("SPUnit", this.tB + th2.getMessage());
            return i10;
        }
    }

    public String oJ(String str, String str2) {
        try {
            SharedPreferences ZYk = ZYk();
            if (ZYk != null && ZYk.contains(str)) {
                return ZYk.getString(str, str2);
            }
            return str2;
        } catch (Throwable th2) {
            Log.i("SPUnit", this.tB + th2.getMessage());
            return str2;
        }
    }

    public boolean oJ(String str, boolean z10) {
        try {
            SharedPreferences ZYk = ZYk();
            if (ZYk != null && ZYk.contains(str)) {
                return ZYk.getBoolean(str, z10);
            }
            return z10;
        } catch (Throwable th2) {
            Log.i("SPUnit", this.tB + th2.getMessage());
            return z10;
        }
    }

    public void oJ() {
        SharedPreferences ZYk = ZYk();
        if (ZYk != null) {
            SharedPreferences.Editor edit = ZYk.edit();
            edit.clear();
            edit.commit();
        }
    }
}
