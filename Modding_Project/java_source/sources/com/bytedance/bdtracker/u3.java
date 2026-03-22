package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.AbstractAppLogLogger;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.l0;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class u3 implements Cloneable {

    /* renamed from: q  reason: collision with root package name */
    public static final SimpleDateFormat f12442q = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* renamed from: r  reason: collision with root package name */
    public static final j4<HashMap<String, u3>> f12443r = new a();

    /* renamed from: a  reason: collision with root package name */
    public List<String> f12444a;

    /* renamed from: b  reason: collision with root package name */
    public long f12445b;

    /* renamed from: c  reason: collision with root package name */
    public long f12446c;

    /* renamed from: d  reason: collision with root package name */
    public long f12447d;

    /* renamed from: e  reason: collision with root package name */
    public String f12448e;

    /* renamed from: f  reason: collision with root package name */
    public long f12449f;

    /* renamed from: g  reason: collision with root package name */
    public String f12450g;

    /* renamed from: h  reason: collision with root package name */
    public String f12451h;

    /* renamed from: i  reason: collision with root package name */
    public String f12452i;

    /* renamed from: j  reason: collision with root package name */
    public String f12453j;

    /* renamed from: k  reason: collision with root package name */
    public int f12454k;

    /* renamed from: l  reason: collision with root package name */
    public int f12455l;

    /* renamed from: m  reason: collision with root package name */
    public String f12456m;

    /* renamed from: n  reason: collision with root package name */
    public String f12457n;

    /* renamed from: o  reason: collision with root package name */
    public JSONObject f12458o;

    /* renamed from: p  reason: collision with root package name */
    public String f12459p;

    /* loaded from: classes3.dex */
    public static class a extends j4<HashMap<String, u3>> {
        @Override // com.bytedance.bdtracker.j4
        public HashMap<String, u3> a(Object[] objArr) {
            return u3.j();
        }
    }

    public u3() {
        a(0L);
        this.f12444a = Collections.singletonList(f());
        this.f12459p = l0.b.c();
    }

    public static String b(long j10) {
        return f12442q.format(new Date(j10));
    }

    public static HashMap<String, u3> j() {
        HashMap<String, u3> hashMap = new HashMap<>();
        hashMap.put("page", new e4());
        hashMap.put("launch", new c4());
        hashMap.put("terminate", new h4());
        hashMap.put("packV2", new d4());
        hashMap.put("eventv3", new b4());
        hashMap.put("custom_event", new x3());
        hashMap.put("profile", new f4(null, null));
        hashMap.put("trace", new i4());
        return hashMap;
    }

    public int a(@NonNull Cursor cursor) {
        this.f12445b = cursor.getLong(0);
        this.f12446c = cursor.getLong(1);
        this.f12447d = cursor.getLong(2);
        this.f12454k = cursor.getInt(3);
        this.f12449f = cursor.getLong(4);
        this.f12448e = cursor.getString(5);
        this.f12450g = cursor.getString(6);
        this.f12451h = cursor.getString(7);
        this.f12452i = cursor.getString(8);
        this.f12453j = cursor.getString(9);
        this.f12455l = cursor.getInt(10);
        this.f12456m = cursor.getString(11);
        String string = cursor.getString(12);
        this.f12459p = cursor.getString(13);
        this.f12458o = new JSONObject();
        if (TextUtils.isEmpty(string)) {
            return 14;
        }
        try {
            this.f12458o = new JSONObject(string);
            return 14;
        } catch (Exception unused) {
            return 14;
        }
    }

    public String c() {
        StringBuilder a10 = com.bytedance.bdtracker.a.a("sid:");
        a10.append(this.f12448e);
        return a10.toString();
    }

    /* renamed from: clone */
    public u3 m4626clone() {
        try {
            u3 u3Var = (u3) super.clone();
            u3Var.f12459p = l0.b.c();
            return u3Var;
        } catch (CloneNotSupportedException e10) {
            d().error(4, this.f12444a, "Clone data failed", e10, new Object[0]);
            return null;
        }
    }

    public IAppLogLogger d() {
        IAppLogLogger logger = AbstractAppLogLogger.getLogger(this.f12456m);
        if (logger != null) {
            return logger;
        }
        return LoggerImpl.global();
    }

    public String e() {
        return null;
    }

    @NonNull
    public abstract String f();

    @NonNull
    public final JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("k_cls", f());
            b(jSONObject);
        } catch (JSONException e10) {
            d().error(4, this.f12444a, "JSON handle failed", e10, new Object[0]);
        }
        return jSONObject;
    }

    @NonNull
    public final JSONObject h() {
        JSONObject jSONObject = new JSONObject();
        try {
            this.f12457n = b(this.f12446c);
            return i();
        } catch (JSONException e10) {
            d().error(4, this.f12444a, "JSON handle failed", e10, new Object[0]);
            return jSONObject;
        }
    }

    public abstract JSONObject i();

    @NonNull
    public String toString() {
        String f10 = f();
        if (!getClass().getSimpleName().equalsIgnoreCase(f10)) {
            f10 = f10 + ", " + getClass().getSimpleName();
        }
        String str = this.f12448e;
        if (str == null) {
            str = "-";
        } else {
            int indexOf = str.indexOf("-");
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
        }
        return "{" + f10 + ", " + c() + ", " + str + ", " + this.f12446c + "}";
    }

    public final ContentValues a(@Nullable ContentValues contentValues) {
        if (contentValues == null) {
            contentValues = new ContentValues();
        } else {
            contentValues.clear();
        }
        b(contentValues);
        return contentValues;
    }

    public List<String> b() {
        return Arrays.asList("_id", "integer primary key autoincrement", "local_time_ms", TypedValues.Custom.S_INT, "tea_event_index", TypedValues.Custom.S_INT, "nt", TypedValues.Custom.S_INT, TTVideoEngineInterface.PLAY_API_KEY_USERID, TypedValues.Custom.S_INT, "session_id", "varchar", "user_unique_id", "varchar", "user_unique_id_type", "varchar", "ssid", "varchar", "ab_sdk_version", "varchar", ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, TypedValues.Custom.S_INT, "_app_id", "varchar", "properties", "varchar", "local_event_id", "varchar");
    }

    public static u3 a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return f12443r.b(new Object[0]).get(jSONObject.optString("k_cls", "")).m4626clone().a(jSONObject);
        } catch (Throwable th2) {
            LoggerImpl.global().error(4, "JSON handle failed", th2, new Object[0]);
            return null;
        }
    }

    public void b(@NonNull ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f12446c));
        contentValues.put("tea_event_index", Long.valueOf(this.f12447d));
        contentValues.put("nt", Integer.valueOf(this.f12454k));
        contentValues.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, Long.valueOf(this.f12449f));
        contentValues.put("session_id", this.f12448e);
        contentValues.put("user_unique_id", l0.b.a((Object) this.f12450g));
        contentValues.put("user_unique_id_type", this.f12451h);
        contentValues.put("ssid", this.f12452i);
        contentValues.put("ab_sdk_version", this.f12453j);
        contentValues.put(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, Integer.valueOf(this.f12455l));
        contentValues.put("_app_id", this.f12456m);
        JSONObject jSONObject = this.f12458o;
        contentValues.put("properties", jSONObject != null ? jSONObject.toString() : "");
        contentValues.put("local_event_id", this.f12459p);
    }

    public u3 a(@NonNull JSONObject jSONObject) {
        this.f12446c = jSONObject.optLong("local_time_ms", 0L);
        this.f12445b = 0L;
        this.f12447d = 0L;
        this.f12454k = 0;
        this.f12449f = 0L;
        this.f12448e = null;
        this.f12450g = null;
        this.f12451h = null;
        this.f12452i = null;
        this.f12453j = null;
        this.f12456m = jSONObject.optString("_app_id");
        this.f12458o = jSONObject.optJSONObject("properties");
        this.f12459p = jSONObject.optString("local_event_id", l0.b.c());
        return this;
    }

    public void b(@NonNull JSONObject jSONObject) {
        jSONObject.put("local_time_ms", this.f12446c);
        jSONObject.put("_app_id", this.f12456m);
        jSONObject.put("properties", this.f12458o);
        jSONObject.put("local_event_id", this.f12459p);
    }

    public final String a() {
        List<String> b10 = b();
        if (b10 != null) {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("create table if not exists ");
            sb2.append(f());
            sb2.append("(");
            for (int i10 = 0; i10 < b10.size(); i10 += 2) {
                sb2.append(b10.get(i10));
                sb2.append(" ");
                sb2.append(b10.get(i10 + 1));
                sb2.append(",");
            }
            sb2.delete(sb2.length() - 1, sb2.length());
            sb2.append(")");
            return sb2.toString();
        }
        return null;
    }

    public void a(long j10) {
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
        }
        this.f12446c = j10;
    }

    public void a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            a(jSONObject, new JSONObject());
            return;
        }
        try {
            a(jSONObject, new JSONObject(str));
        } catch (Throwable th2) {
            d().error(4, this.f12444a, "Merge params failed", th2, new Object[0]);
        }
    }

    public void a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject2 != null && jSONObject2.length() > 0) {
            l0.b.b(jSONObject2, jSONObject3);
        }
        JSONObject jSONObject4 = this.f12458o;
        if (jSONObject4 != null && jSONObject4.length() > 0) {
            l0.b.b(this.f12458o, jSONObject3);
        }
        try {
            jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, jSONObject3);
        } catch (Throwable th2) {
            d().error(4, this.f12444a, "Merge params failed", th2, new Object[0]);
        }
    }
}
