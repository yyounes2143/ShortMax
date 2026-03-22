package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.bdtracker.l0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class x3 extends u3 {

    /* renamed from: s  reason: collision with root package name */
    public String f12525s;

    /* renamed from: t  reason: collision with root package name */
    public String f12526t;

    public x3() {
        this.f12525s = null;
        this.f12526t = null;
    }

    @Override // com.bytedance.bdtracker.u3
    public int a(@NonNull Cursor cursor) {
        super.a(cursor);
        this.f12526t = cursor.getString(14);
        this.f12525s = cursor.getString(15);
        return 16;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        List<String> b10 = super.b();
        ArrayList arrayList = new ArrayList(b10.size());
        arrayList.addAll(b10);
        arrayList.addAll(Arrays.asList(MetricsSQLiteCacheKt.METRICS_PARAMS, "varchar", "category", "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        StringBuilder a10 = a.a("param:");
        a10.append(this.f12526t);
        a10.append(" category:");
        a10.append(this.f12525s);
        return a10.toString();
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "custom_event";
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
        if (l0.b.d(this.f12526t)) {
            try {
                JSONObject jSONObject2 = new JSONObject(this.f12526t);
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj2 = jSONObject2.get(next);
                    if (jSONObject.opt(next) != null) {
                        d().warn(4, this.f12444a, "自定义事件存在重复的key", new Object[0]);
                    }
                    jSONObject.put(next, obj2);
                }
            } catch (Exception e10) {
                d().warn(4, this.f12444a, "解析事件参数失败", e10);
            }
        }
        return jSONObject;
    }

    public x3(@NonNull String str, JSONObject jSONObject) {
        this.f12526t = null;
        this.f12525s = str;
        if (jSONObject != null) {
            this.f12526t = jSONObject.toString();
        }
        this.f12455l = 0;
    }

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        super.a(jSONObject);
        this.f12526t = jSONObject.optString(MetricsSQLiteCacheKt.METRICS_PARAMS, null);
        this.f12525s = jSONObject.optString("category", null);
        return this;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.f12526t);
        contentValues.put("category", this.f12525s);
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.f12526t);
        jSONObject.put("category", this.f12525s);
    }
}
