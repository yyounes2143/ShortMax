package com.bytedance.applog.log;

import com.bytedance.applog.log.EventBus;
import com.bytedance.bdtracker.b4;
import com.bytedance.bdtracker.c4;
import com.bytedance.bdtracker.e4;
import com.bytedance.bdtracker.f4;
import com.bytedance.bdtracker.h4;
import com.bytedance.bdtracker.i4;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.u3;
import com.bytedance.bdtracker.x3;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class LogUtils {
    public static final String EVENT_TYPE_EVENT_V3 = "EVENT_V3";
    public static final String EVENT_TYPE_LAUNCH = "LAUNCH";
    public static final String EVENT_TYPE_PROFILE = "PROFILE";
    public static final String EVENT_TYPE_TERMINATE = "TERMINATE";
    public static final String EVENT_TYPE_TRACE = "TRACE";

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f11837a = false;

    /* loaded from: classes3.dex */
    public static class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Object f11838a;

        public a(Object obj) {
            this.f11838a = obj;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            u3 u3Var;
            String str;
            JSONObject h10 = ((u3) this.f11838a).h();
            JSONObject jSONObject = new JSONObject();
            l0.b.b(h10, jSONObject);
            try {
                jSONObject.put("$$APP_ID", ((u3) this.f11838a).f12456m);
                u3Var = (u3) this.f11838a;
            } catch (JSONException unused) {
            }
            if (u3Var != null) {
                if (!(u3Var instanceof b4) && !(u3Var instanceof e4)) {
                    if (u3Var instanceof x3) {
                        str = ((x3) u3Var).f12525s.toUpperCase(Locale.ROOT);
                    } else if (u3Var instanceof c4) {
                        str = LogUtils.EVENT_TYPE_LAUNCH;
                    } else if (u3Var instanceof h4) {
                        str = LogUtils.EVENT_TYPE_TERMINATE;
                    } else if (u3Var instanceof f4) {
                        str = LogUtils.EVENT_TYPE_PROFILE;
                    } else if (u3Var instanceof i4) {
                        str = LogUtils.EVENT_TYPE_TRACE;
                    }
                    jSONObject.put("$$EVENT_TYPE", str);
                    jSONObject.put("$$EVENT_LOCAL_ID", ((u3) this.f11838a).f12459p);
                    return jSONObject;
                }
                str = LogUtils.EVENT_TYPE_EVENT_V3;
                jSONObject.put("$$EVENT_TYPE", str);
                jSONObject.put("$$EVENT_LOCAL_ID", ((u3) this.f11838a).f12459p);
                return jSONObject;
            }
            str = "";
            jSONObject.put("$$EVENT_TYPE", str);
            jSONObject.put("$$EVENT_LOCAL_ID", ((u3) this.f11838a).f12459p);
            return jSONObject;
        }
    }

    public static String a(String str) {
        return "applog_" + str;
    }

    public static void sendJson(String str, JSONObject jSONObject) {
        if (!a() && !l0.b.c(str)) {
            EventBus.global.get(new Object[0]).emit(a(str), jSONObject);
        }
    }

    public static void sendJsonFetcher(String str, EventBus.DataFetcher dataFetcher) {
        if (!a() && !l0.b.c(str)) {
            EventBus.global.get(new Object[0]).emit(a(str), dataFetcher);
        }
    }

    public static void sendObject(String str, Object obj) {
        if (!a() && !l0.b.c(str)) {
            if (obj instanceof u3) {
                EventBus.global.get(new Object[0]).emit(a(str), (EventBus.DataFetcher) new a(obj));
            } else {
                EventBus.global.get(new Object[0]).emit(a(str), obj);
            }
        }
    }

    public static void sendString(String str, String str2) {
        if (!a() && !l0.b.c(str)) {
            EventBus.global.get(new Object[0]).emit(a(str), str2);
        }
    }

    public static void setEnable(boolean z10) {
        f11837a = z10;
    }

    public static boolean a() {
        return !f11837a;
    }
}
