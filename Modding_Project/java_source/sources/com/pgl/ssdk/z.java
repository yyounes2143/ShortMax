package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.pgl.ssdk.ces.out.DungeonFlag;
import com.ss.ttvideoengine.model.VideoRef;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static Context f36858a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.b(z.b());
            com.pgl.ssdk.ces.a.meta(226, z.b(), null);
        }
    }

    @DungeonFlag
    private static String a(Throwable th2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", 3);
            jSONObject.put("exception", th2.toString());
            jSONObject.put("stacktrace", Arrays.toString(th2.getStackTrace()));
            jSONObject.put("cause", String.valueOf(th2.getCause()));
            return Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable unused) {
            return "eyJzdGF0dXMiOjN9";
        }
    }

    public static Context b() {
        return f36858a;
    }

    public static void c(Context context) {
        f36858a = context;
    }

    @DungeonFlag
    public static String b(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", 0);
            jSONObject.put("envcode", ((Long) com.pgl.ssdk.ces.a.meta(154, context, null)).longValue());
            jSONObject.put("bootcount", w.a(context));
            jSONObject.put("usb_debug", w.d(context));
            JSONArray[] c10 = w.c(context);
            if (c10 != null) {
                jSONObject.put("sdata", c10[0]);
                jSONObject.put("sdmta", c10[1]);
                jSONObject.put("curtime", System.currentTimeMillis() / 1000);
            }
            jSONObject.put("camera_count", x.a());
            jSONObject.put("sim", x.c(context));
            jSONObject.put("virtual_display", a0.a(context));
            jSONObject.put("acbs", u.b(context));
            jSONObject.put("bl_unlock", w.b(context));
            y.a(jSONObject);
            String e10 = v.e();
            jSONObject.put("romtype", w.c());
            jSONObject.put("root", w.e());
            if (!TextUtils.isEmpty(e10)) {
                jSONObject.put("sign", e10);
            }
            return (String) com.pgl.ssdk.ces.a.meta(VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL, context, jSONObject.toString());
        } catch (Throwable th2) {
            return a(th2);
        }
    }

    public static String c() {
        String b10 = b(b());
        a();
        return b10;
    }

    public static long a(Context context) {
        try {
            return ((Long) com.pgl.ssdk.ces.a.meta(154, context, null)).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @DungeonFlag
    public static void a() {
        r0.b(new a());
    }
}
