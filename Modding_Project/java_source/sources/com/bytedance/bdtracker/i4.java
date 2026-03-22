package com.bytedance.bdtracker;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.t4;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Collections;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class i4 extends u3 {

    /* renamed from: s  reason: collision with root package name */
    public static final JSONObject f12062s;

    static {
        JSONObject jSONObject = new JSONObject();
        f12062s = jSONObject;
        try {
            jSONObject.put("_staging_flag", 1);
            jSONObject.put("params_for_special", "applog_trace");
        } catch (Throwable th2) {
            LoggerImpl.global().error(4, Collections.singletonList("trace"), "JSON handle failed", th2, new Object[0]);
        }
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "trace";
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, "rangersapplog_trace");
        a(jSONObject, f12062s);
        int i10 = this.f12454k;
        if (i10 != t4.a.UNKNOWN.f12424a) {
            jSONObject.put("nt", i10);
        }
        jSONObject.put("datetime", this.f12457n);
        return jSONObject;
    }
}
