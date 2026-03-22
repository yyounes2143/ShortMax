package com.bytedance.applog.event;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.a;
import com.bytedance.bdtracker.b4;
import com.bytedance.bdtracker.d;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class EventBuilder {

    /* renamed from: a  reason: collision with root package name */
    public final d f11818a;

    /* renamed from: b  reason: collision with root package name */
    public String f11819b;

    /* renamed from: c  reason: collision with root package name */
    public String f11820c;

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f11821d;

    public EventBuilder(@NonNull d dVar) {
        this.f11818a = dVar;
    }

    public EventBuilder addParam(@NonNull String str, @Nullable Object obj) {
        if (this.f11821d == null) {
            this.f11821d = new JSONObject();
        }
        try {
            this.f11821d.put(str, obj);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return this;
    }

    public b4 build() {
        String str;
        String str2 = this.f11818a.f11913m;
        String str3 = this.f11819b;
        JSONObject jSONObject = this.f11821d;
        if (jSONObject != null) {
            str = jSONObject.toString();
        } else {
            str = null;
        }
        b4 b4Var = new b4(str2, str3, false, str, 0);
        b4Var.f12453j = this.f11820c;
        this.f11818a.D.debug(4, "EventBuilder build: {}", b4Var);
        return b4Var;
    }

    public EventBuilder setAbSdkVersion(@Nullable String str) {
        this.f11820c = str;
        return this;
    }

    public EventBuilder setEvent(@NonNull String str) {
        this.f11819b = str;
        return this;
    }

    public void track() {
        b4 build = build();
        IAppLogLogger iAppLogLogger = this.f11818a.D;
        StringBuilder a10 = a.a("EventBuilder track: ");
        a10.append(this.f11819b);
        iAppLogLogger.debug(4, a10.toString(), new Object[0]);
        this.f11818a.receive(build);
    }
}
