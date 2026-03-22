package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class h4 extends u3 {

    /* renamed from: s  reason: collision with root package name */
    public long f12042s;

    /* renamed from: t  reason: collision with root package name */
    public long f12043t;

    /* renamed from: u  reason: collision with root package name */
    public String f12044u;

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
        return this;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        return null;
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        return String.valueOf(this.f12042s);
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "terminate";
    }

    @Override // com.bytedance.bdtracker.u3
    public JSONObject i() {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f12446c);
        jSONObject.put("tea_event_index", this.f12447d);
        jSONObject.put("session_id", this.f12448e);
        jSONObject.put("stop_timestamp", this.f12043t / 1000);
        jSONObject.put("duration", this.f12042s / 1000);
        jSONObject.put("datetime", this.f12457n);
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
        if (!TextUtils.isEmpty(this.f12453j)) {
            jSONObject.put("ab_sdk_version", this.f12453j);
        }
        if (!TextUtils.isEmpty(this.f12044u)) {
            jSONObject.put("uuid_changed", true);
            if (!TextUtils.equals(this.f12044u, this.f12448e)) {
                jSONObject.put("original_session_id", this.f12044u);
            }
        }
        a(jSONObject, "");
        return jSONObject;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
    }
}
