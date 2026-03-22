package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.bdtracker.t4;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class b4 extends u3 {

    /* renamed from: s  reason: collision with root package name */
    public String f11878s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f11879t;

    /* renamed from: u  reason: collision with root package name */
    public String f11880u;

    public b4() {
    }

    @Override // com.bytedance.bdtracker.u3
    public int a(@NonNull Cursor cursor) {
        super.a(cursor);
        this.f11880u = cursor.getString(14);
        this.f11878s = cursor.getString(15);
        this.f11879t = cursor.getInt(16) == 1;
        return 17;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        List<String> b10 = super.b();
        ArrayList arrayList = new ArrayList(b10.size());
        arrayList.addAll(b10);
        arrayList.addAll(Arrays.asList(NotificationCompat.CATEGORY_EVENT, "varchar", MetricsSQLiteCacheKt.METRICS_PARAMS, "varchar", "is_bav", TypedValues.Custom.S_INT));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        return this.f11880u;
    }

    @Override // com.bytedance.bdtracker.u3
    public String e() {
        return this.f11878s;
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "eventv3";
    }

    @Override // com.bytedance.bdtracker.u3
    public JSONObject i() {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f12446c);
        jSONObject.put("tea_event_index", this.f12447d);
        jSONObject.put("session_id", this.f12448e);
        long j10 = this.f12449f;
        if (j10 > 0) {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, j10);
        }
        if (TextUtils.isEmpty(this.f12450g)) {
            obj = JSONObject.NULL;
        } else {
            obj = this.f12450g;
        }
        jSONObject.put("user_unique_id", obj);
        if (!TextUtils.isEmpty(this.f12451h)) {
            jSONObject.put("$user_unique_id_type", this.f12451h);
        }
        if (!TextUtils.isEmpty(this.f12452i)) {
            jSONObject.put("ssid", this.f12452i);
        }
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f11880u);
        if (this.f11879t) {
            jSONObject.put("is_bav", 1);
        }
        if (this.f11879t && this.f11878s == null) {
            k();
        }
        a(jSONObject, this.f11878s);
        int i10 = this.f12454k;
        if (i10 != t4.a.UNKNOWN.f12424a) {
            jSONObject.put("nt", i10);
        }
        jSONObject.put("datetime", this.f12457n);
        if (!TextUtils.isEmpty(this.f12453j)) {
            jSONObject.put("ab_sdk_version", this.f12453j);
        }
        return jSONObject;
    }

    public b4(String str) {
        this.f11880u = str;
    }

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        super.a(jSONObject);
        this.f11880u = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null);
        this.f11878s = jSONObject.optString(MetricsSQLiteCacheKt.METRICS_PARAMS, null);
        this.f11879t = jSONObject.optBoolean("is_bav", false);
        return this;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put(NotificationCompat.CATEGORY_EVENT, this.f11880u);
        if (this.f11879t && this.f11878s == null) {
            try {
                k();
            } catch (Throwable th2) {
                d().error(4, this.f12444a, "Fill params failed", th2, new Object[0]);
            }
        }
        contentValues.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.f11878s);
        contentValues.put("is_bav", Integer.valueOf(this.f11879t ? 1 : 0));
    }

    public b4(String str, String str2, boolean z10, String str3) {
        this.f12456m = str;
        this.f11880u = str2;
        this.f11879t = z10;
        this.f11878s = str3;
        this.f12455l = 0;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f11880u);
        if (this.f11879t && this.f11878s == null) {
            k();
        }
        jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.f11878s);
        jSONObject.put("is_bav", this.f11879t);
    }

    public b4(String str, String str2, boolean z10, String str3, int i10) {
        this.f12456m = str;
        this.f11880u = str2;
        this.f11879t = z10;
        this.f11878s = str3;
        this.f12455l = i10;
    }

    public b4(String str, boolean z10) {
        this.f11880u = str;
        this.f11879t = z10;
    }

    public b4(String str, JSONObject jSONObject) {
        this.f11880u = str;
        this.f12458o = jSONObject;
    }

    public void k() {
    }
}
