package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class c4 extends u3 {

    /* renamed from: s  reason: collision with root package name */
    public int f11890s;

    /* renamed from: t  reason: collision with root package name */
    public String f11891t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f11892u;

    /* renamed from: v  reason: collision with root package name */
    public String f11893v;

    /* renamed from: w  reason: collision with root package name */
    public int f11894w;

    /* renamed from: x  reason: collision with root package name */
    public String f11895x;

    /* renamed from: y  reason: collision with root package name */
    public String f11896y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f11897z;

    @Override // com.bytedance.bdtracker.u3
    public int a(@NonNull Cursor cursor) {
        super.a(cursor);
        this.f11891t = cursor.getString(14);
        this.f11890s = cursor.getInt(15);
        this.f11893v = cursor.getString(16);
        this.f11894w = cursor.getInt(17);
        this.f11895x = cursor.getString(18);
        this.f11896y = cursor.getString(19);
        this.f11897z = cursor.getInt(20) == 1;
        return 21;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        List<String> b10 = super.b();
        ArrayList arrayList = new ArrayList(b10.size());
        arrayList.addAll(b10);
        arrayList.addAll(Arrays.asList("ver_name", "varchar", "ver_code", TypedValues.Custom.S_INT, "last_session", "varchar", "is_first_time", TypedValues.Custom.S_INT, "page_title", "varchar", "page_key", "varchar", "resume_from_background", TypedValues.Custom.S_INT));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        if (this.f11892u) {
            return "bg";
        }
        return "fg";
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "launch";
    }

    @Override // com.bytedance.bdtracker.u3
    public JSONObject i() {
        Object obj;
        Object obj2;
        Object obj3;
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
        boolean z10 = this.f11892u;
        if (z10) {
            jSONObject.put("is_background", z10);
        }
        jSONObject.put("datetime", this.f12457n);
        if (!TextUtils.isEmpty(this.f12453j)) {
            jSONObject.put("ab_sdk_version", this.f12453j);
        }
        d a10 = b.a(this.f12456m);
        if (a10 != null) {
            String deepLinkUrl = a10.getDeepLinkUrl();
            if (!TextUtils.isEmpty(deepLinkUrl)) {
                jSONObject.put("$deeplink_url", deepLinkUrl);
            }
        }
        if (!TextUtils.isEmpty(this.f11893v)) {
            jSONObject.put("uuid_changed", true);
            jSONObject.put("original_session_id", this.f11893v);
        }
        Object obj4 = "true";
        if (this.f11894w == 1) {
            jSONObject.put("$is_first_time", "true");
        }
        if (TextUtils.isEmpty(this.f11895x)) {
            obj2 = "";
        } else {
            obj2 = this.f11895x;
        }
        jSONObject.put("$page_title", obj2);
        if (TextUtils.isEmpty(this.f11896y)) {
            obj3 = "";
        } else {
            obj3 = this.f11896y;
        }
        jSONObject.put("$page_key", obj3);
        if (!this.f11897z) {
            obj4 = "false";
        }
        jSONObject.put("$resume_from_background", obj4);
        a(jSONObject, "");
        return jSONObject;
    }

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
        return null;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put("ver_name", this.f11891t);
        contentValues.put("ver_code", Integer.valueOf(this.f11890s));
        contentValues.put("last_session", this.f11893v);
        contentValues.put("is_first_time", Integer.valueOf(this.f11894w));
        contentValues.put("page_title", this.f11895x);
        contentValues.put("page_key", this.f11896y);
        contentValues.put("resume_from_background", Integer.valueOf(this.f11897z ? 1 : 0));
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
    }
}
