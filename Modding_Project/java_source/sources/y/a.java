package y;

import android.content.Context;
import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.tencent.mmkv.MMKVLogLevel;
import dd.d;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import x.h;
/* loaded from: classes2.dex */
public class a implements dd.b {

    /* renamed from: a  reason: collision with root package name */
    public MMKV f70530a;

    @Override // dd.b
    public final List a(String key, Class clazz, List list) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String string = getString(key, null);
        if (string != null && string.length() != 0) {
            return h.b(string, clazz);
        }
        return list;
    }

    @Override // dd.b
    public final Object b(String key, Class clazz, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String string = getString(key, null);
        if (string != null && string.length() != 0) {
            i iVar = h.f70361a;
            Intrinsics.checkNotNullParameter(clazz, "clazz");
            if (!StringsKt.t0(string)) {
                try {
                } catch (Exception unused) {
                    return null;
                }
            }
            return ((Gson) h.f70361a.getValue()).fromJson(string, (Class<Object>) clazz);
        }
        return obj;
    }

    @Override // dd.b
    public boolean c(Context context, boolean z10, d dVar) {
        MMKVLogLevel mMKVLogLevel;
        String str = "";
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (this.f70530a == null) {
                MMKV.initialize(context);
                if (z10) {
                    mMKVLogLevel = MMKVLogLevel.LevelDebug;
                } else {
                    mMKVLogLevel = MMKVLogLevel.LevelNone;
                }
                MMKV.setLogLevel(mMKVLogLevel);
                this.f70530a = MMKV.defaultMMKV();
            }
            return true;
        } catch (Exception e10) {
            if (dVar != null) {
                StringBuilder sb2 = new StringBuilder("init MMKVCache fail -> Exception message=");
                String message = e10.getMessage();
                if (message != null) {
                    str = message;
                }
                sb2.append(str);
                sb2.append('.');
                dVar.onError(sb2.toString());
            }
            return false;
        } catch (UnsatisfiedLinkError e11) {
            if (dVar != null) {
                StringBuilder sb3 = new StringBuilder("init MMKVCache fail -> UnsatisfiedLinkError message=");
                String message2 = e11.getMessage();
                if (message2 != null) {
                    str = message2;
                }
                sb3.append(str);
                sb3.append('.');
                dVar.onError(sb3.toString());
            }
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
        putString(key, json);
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
        putString(key, json);
    }

    @Override // dd.a
    public final boolean getBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            return mmkv.getBoolean(key, z10);
        }
        return z10;
    }

    @Override // dd.a
    public final int getInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            return mmkv.getInt(key, i10);
        }
        return i10;
    }

    @Override // dd.a
    public final long getLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            return mmkv.getLong(key, j10);
        }
        return j10;
    }

    @Override // dd.a
    public final String getString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            return mmkv.getString(key, str);
        }
        return null;
    }

    @Override // dd.a
    public final void putBoolean(String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            mmkv.putBoolean(key, z10);
        }
    }

    @Override // dd.a
    public final void putInt(String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            mmkv.putInt(key, i10);
        }
    }

    @Override // dd.a
    public final void putLong(String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            mmkv.putLong(key, j10);
        }
    }

    @Override // dd.a
    public final void putString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv = this.f70530a;
        if (mmkv != null) {
            mmkv.putString(key, str);
        }
    }

    @Override // dd.b
    public String tag() {
        return "V1MMKVCache";
    }
}
