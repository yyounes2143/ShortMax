package y;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import dd.d;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import x.h;
/* loaded from: classes2.dex */
public final class b implements dd.b {

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f70531a;

    @Override // dd.b
    public final List a(String key, Class clazz, List list) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(key, "key");
        String str = (String) f(key, null);
        if (str != null && str.length() != 0) {
            return h.b(str, clazz);
        }
        return list;
    }

    @Override // dd.b
    public final Object b(String key, Class clazz, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(key, "key");
        String str = (String) f(key, null);
        if (str != null && str.length() != 0) {
            i iVar = h.f70361a;
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            if (!StringsKt.t0(str)) {
                try {
                } catch (Exception unused) {
                    return null;
                }
            }
            return ((Gson) h.f70361a.getValue()).fromJson(str, (Class<Object>) clazz);
        }
        return obj;
    }

    @Override // dd.b
    public final boolean c(Context context, boolean z10, d dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (this.f70531a == null) {
                this.f70531a = context.getSharedPreferences("V1SPCache", 0);
            }
            return true;
        } catch (Exception e10) {
            if (dVar == null) {
                return false;
            }
            StringBuilder sb2 = new StringBuilder("init SharedPreferencesCache fail -> message=");
            String message = e10.getMessage();
            if (message == null) {
                message = "";
            }
            sb2.append(message);
            sb2.append('.');
            dVar.onError(sb2.toString());
            return false;
        }
    }

    @Override // dd.b
    public final void d(String key, Object obj) {
        String json;
        Intrinsics.checkNotNullParameter(key, "key");
        i iVar = h.f70361a;
        if (obj == null) {
            json = null;
        } else {
            json = ((Gson) h.f70361a.getValue()).toJson(obj);
        }
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, json);
    }

    @Override // dd.b
    public final void e(String key, List list) {
        String json;
        Intrinsics.checkNotNullParameter(key, "key");
        i iVar = h.f70361a;
        if (list == null) {
            json = null;
        } else {
            json = ((Gson) h.f70361a.getValue()).toJson(list);
        }
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, json);
    }

    public final Object f(String str, Object obj) {
        long longValue;
        float floatValue;
        boolean booleanValue;
        int intValue;
        String string;
        try {
            if (obj instanceof String) {
                SharedPreferences sharedPreferences = this.f70531a;
                if (sharedPreferences != null && (string = sharedPreferences.getString(str, (String) obj)) != null) {
                    return string;
                }
                return (String) obj;
            } else if (obj instanceof Integer) {
                SharedPreferences sharedPreferences2 = this.f70531a;
                if (sharedPreferences2 != null) {
                    intValue = sharedPreferences2.getInt(str, ((Number) obj).intValue());
                } else {
                    intValue = ((Number) obj).intValue();
                }
                return Integer.valueOf(intValue);
            } else if (obj instanceof Boolean) {
                SharedPreferences sharedPreferences3 = this.f70531a;
                if (sharedPreferences3 != null) {
                    booleanValue = sharedPreferences3.getBoolean(str, ((Boolean) obj).booleanValue());
                } else {
                    booleanValue = ((Boolean) obj).booleanValue();
                }
                return Boolean.valueOf(booleanValue);
            } else if (obj instanceof Float) {
                SharedPreferences sharedPreferences4 = this.f70531a;
                if (sharedPreferences4 != null) {
                    floatValue = sharedPreferences4.getFloat(str, ((Number) obj).floatValue());
                } else {
                    floatValue = ((Number) obj).floatValue();
                }
                return Float.valueOf(floatValue);
            } else if (obj instanceof Long) {
                SharedPreferences sharedPreferences5 = this.f70531a;
                if (sharedPreferences5 != null) {
                    longValue = sharedPreferences5.getLong(str, ((Number) obj).longValue());
                } else {
                    longValue = ((Number) obj).longValue();
                }
                return Long.valueOf(longValue);
            } else {
                return obj;
            }
        } catch (Exception unused) {
            return obj;
        }
    }

    public final void g(String str, Object obj) {
        SharedPreferences.Editor edit;
        SharedPreferences sharedPreferences = this.f70531a;
        if (sharedPreferences != null && (edit = sharedPreferences.edit()) != null) {
            if (obj instanceof String) {
                edit.putString(str, (String) obj);
            } else if (obj instanceof Integer) {
                edit.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Boolean) {
                edit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                edit.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Long) {
                edit.putLong(str, ((Number) obj).longValue());
            } else {
                Unit unit = Unit.f60915a;
            }
            edit.apply();
        }
    }

    @Override // dd.a
    public final boolean getBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((Boolean) f(key, Boolean.valueOf(z10))).booleanValue();
    }

    @Override // dd.a
    public final int getInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((Number) f(key, Integer.valueOf(i10))).intValue();
    }

    @Override // dd.a
    public final long getLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((Number) f(key, Long.valueOf(j10))).longValue();
    }

    @Override // dd.a
    public final String getString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (String) f(key, str);
    }

    @Override // dd.a
    public final void putBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, Boolean.valueOf(z10));
    }

    @Override // dd.a
    public final void putInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, Integer.valueOf(i10));
    }

    @Override // dd.a
    public final void putLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, Long.valueOf(j10));
    }

    @Override // dd.a
    public final void putString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        g(key, str);
    }

    @Override // dd.b
    public final String tag() {
        return "V1SPCache";
    }
}
