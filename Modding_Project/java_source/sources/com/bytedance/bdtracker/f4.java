package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.bdtracker.t4;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class f4 extends u3 {

    /* renamed from: s  reason: collision with root package name */
    public String f12013s;

    /* renamed from: t  reason: collision with root package name */
    public String f12014t;

    public f4() {
    }

    @Override // com.bytedance.bdtracker.u3
    public int a(@NonNull Cursor cursor) {
        super.a(cursor);
        this.f12014t = cursor.getString(14);
        this.f12013s = cursor.getString(15);
        return 16;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        List<String> b10 = super.b();
        ArrayList arrayList = new ArrayList(b10.size());
        arrayList.addAll(b10);
        arrayList.addAll(Arrays.asList(NotificationCompat.CATEGORY_EVENT, "varchar", MetricsSQLiteCacheKt.METRICS_PARAMS, "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        return this.f12014t;
    }

    @Override // com.bytedance.bdtracker.u3
    public String e() {
        return this.f12013s;
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "profile";
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f12014t);
        a(jSONObject, this.f12013s);
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

    public f4(String str, String str2) {
        this.f12014t = str;
        this.f12013s = str2;
    }

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        super.a(jSONObject);
        this.f12014t = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null);
        this.f12013s = jSONObject.optString(MetricsSQLiteCacheKt.METRICS_PARAMS, null);
        return this;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put(NotificationCompat.CATEGORY_EVENT, this.f12014t);
        contentValues.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.f12013s);
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.f12014t);
        jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.f12013s);
    }
}
