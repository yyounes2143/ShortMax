package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.bytedance.bdtracker.l0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class e4 extends u3 {
    public int A;
    public String B;
    public boolean C;
    public boolean D;
    public Class<?> E;

    /* renamed from: s  reason: collision with root package name */
    public long f11994s;

    /* renamed from: t  reason: collision with root package name */
    public String f11995t;

    /* renamed from: u  reason: collision with root package name */
    public String f11996u;

    /* renamed from: v  reason: collision with root package name */
    public String f11997v;

    /* renamed from: w  reason: collision with root package name */
    public String f11998w;

    /* renamed from: x  reason: collision with root package name */
    public String f11999x;

    /* renamed from: y  reason: collision with root package name */
    public String f12000y;

    /* renamed from: z  reason: collision with root package name */
    public long f12001z;

    @Override // com.bytedance.bdtracker.u3
    public int a(@NonNull Cursor cursor) {
        super.a(cursor);
        this.f11996u = cursor.getString(14);
        this.f11995t = cursor.getString(15);
        this.f11994s = cursor.getLong(16);
        this.A = cursor.getInt(17);
        this.B = cursor.getString(18);
        this.f11997v = cursor.getString(19);
        this.f11998w = cursor.getString(20);
        this.f11999x = cursor.getString(21);
        this.f12000y = cursor.getString(22);
        this.C = cursor.getInt(23) == 1;
        this.D = cursor.getInt(24) == 1;
        this.f12001z = cursor.getLong(25);
        return 26;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        List<String> b10 = super.b();
        ArrayList arrayList = new ArrayList(b10.size());
        arrayList.addAll(b10);
        arrayList.addAll(Arrays.asList("page_key", "varchar", "refer_page_key", "varchar", "duration", TypedValues.Custom.S_INT, "is_back", TypedValues.Custom.S_INT, "last_session", "varchar", "page_title", "varchar", "refer_page_title", "varchar", "page_path", "varchar", "referrer_page_path", "varchar", "is_custom", TypedValues.Custom.S_INT, "is_fragment", TypedValues.Custom.S_INT, "resume_at", TypedValues.Custom.S_INT));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        return l0.b.a((Object) this.f11996u) + ", " + this.f11994s;
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "page";
    }

    @Override // com.bytedance.bdtracker.u3
    public JSONObject i() {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        long j10 = this.f12001z;
        if (j10 <= 0) {
            j10 = this.f12446c;
        }
        jSONObject.put("local_time_ms", j10);
        jSONObject.put("datetime", u3.b(j10));
        jSONObject.put("tea_event_index", this.f12447d);
        jSONObject.put("session_id", this.f12448e);
        long j11 = this.f12449f;
        if (j11 > 0) {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, j11);
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, "bav2b_page");
        jSONObject.put("is_bav", 1);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("page_key", l0.b.a((Object) this.f11996u));
        jSONObject2.put("refer_page_key", this.f11995t);
        jSONObject2.put("is_back", this.A);
        jSONObject2.put("duration", this.f11994s);
        jSONObject2.put("page_title", this.f11997v);
        jSONObject2.put("refer_page_title", this.f11998w);
        jSONObject2.put("page_path", this.f11999x);
        jSONObject2.put("referrer_page_path", this.f12000y);
        a(jSONObject, jSONObject2);
        return jSONObject;
    }

    public boolean k() {
        if (this.f11994s == -1) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        super.a(jSONObject);
        this.f11996u = jSONObject.optString("page_key", "");
        this.f11995t = jSONObject.optString("refer_page_key", null);
        this.f11994s = jSONObject.optLong("duration", 0L);
        this.A = jSONObject.optInt("is_back", 0);
        this.f11997v = jSONObject.optString("page_title", "");
        this.f11998w = jSONObject.optString("refer_page_title", null);
        this.f11999x = jSONObject.optString("page_path", null);
        this.f12000y = jSONObject.optString("referrer_page_path", null);
        this.C = jSONObject.optBoolean("is_custom", false);
        this.D = jSONObject.optBoolean("is_fragment", false);
        this.f12001z = jSONObject.optLong("resume_at", 0L);
        return this;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put("page_key", l0.b.a((Object) this.f11996u));
        contentValues.put("refer_page_key", this.f11995t);
        contentValues.put("duration", Long.valueOf(this.f11994s));
        contentValues.put("is_back", Integer.valueOf(this.A));
        contentValues.put("last_session", this.B);
        contentValues.put("page_title", this.f11997v);
        contentValues.put("refer_page_title", this.f11998w);
        contentValues.put("page_path", this.f11999x);
        contentValues.put("referrer_page_path", this.f12000y);
        contentValues.put("is_custom", Integer.valueOf(this.C ? 1 : 0));
        contentValues.put("is_fragment", Integer.valueOf(this.D ? 1 : 0));
        long j10 = this.f12001z;
        if (j10 <= 0) {
            j10 = this.f12446c;
        }
        contentValues.put("resume_at", Long.valueOf(j10));
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put("page_key", l0.b.a((Object) this.f11996u));
        jSONObject.put("refer_page_key", this.f11995t);
        jSONObject.put("duration", this.f11994s);
        jSONObject.put("is_back", this.A);
        jSONObject.put("page_title", this.f11997v);
        jSONObject.put("refer_page_title", this.f11998w);
        jSONObject.put("page_path", this.f11999x);
        jSONObject.put("referrer_page_path", this.f12000y);
        jSONObject.put("is_custom", this.C);
        jSONObject.put("is_fragment", this.D);
        jSONObject.put("resume_at", this.f12001z);
    }
}
