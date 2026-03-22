package com.bytedance.bdtracker;

import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.l0;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class c5 {

    /* renamed from: a  reason: collision with root package name */
    public static final List<String> f11898a = Collections.singletonList("Validator");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f11899b = Pattern.compile("^[a-zA-Z0-9][a-z0-9A-Z_ .-]{1,255}$");

    /* renamed from: c  reason: collision with root package name */
    public static final List<String> f11900c = Arrays.asList("$inactive", "$inline", "$target_uuid_list", "$source_uuid", "$is_spider", "$source_id", "$is_first_time");

    public static void a(IAppLogLogger iAppLogLogger, Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (String str : map.keySet()) {
            if (l0.b.c(str)) {
                iAppLogLogger.warn(f11898a, "Header name must not be empty!", new Object[0]);
            }
            if (!f11900c.contains(str)) {
                if (!f11899b.matcher(str).matches()) {
                    List<String> list = f11898a;
                    iAppLogLogger.warn(list, "Header [" + str + "] name is invalid!", new Object[0]);
                }
                if (str.startsWith("__")) {
                    List<String> list2 = f11898a;
                    iAppLogLogger.warn(list2, "Header [" + str + "] name should not start with __!", new Object[0]);
                }
            }
            Object obj = map.get(str);
            if ((obj instanceof String) && ((String) obj).length() > 1024) {
                List<String> list3 = f11898a;
                iAppLogLogger.warn(list3, "Header [" + str + "] value is limited to a maximum of 1024 characters!", new Object[0]);
            }
        }
    }

    public static void a(IAppLogLogger iAppLogLogger, JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (l0.b.c(next)) {
                iAppLogLogger.warn(f11898a, "Profile key must not be empty!", new Object[0]);
            }
            if (!f11899b.matcher(next).matches()) {
                List<String> list = f11898a;
                iAppLogLogger.warn(list, "Profile param [" + next + "] name is invalid!", new Object[0]);
            }
            Object opt = jSONObject.opt(next);
            if ((opt instanceof String) && ((String) opt).length() > 1024) {
                List<String> list2 = f11898a;
                iAppLogLogger.warn(list2, "Profile param [" + next + "] value is limited to a maximum of 1024 characters!", new Object[0]);
            }
        }
    }

    public static void a(IAppLogLogger iAppLogLogger, String str, JSONObject jSONObject) {
        if (l0.b.c(str)) {
            iAppLogLogger.warn(f11898a, "Event name must not be empty!", new Object[0]);
        } else {
            if (!f11899b.matcher(str).matches()) {
                List<String> list = f11898a;
                iAppLogLogger.warn(list, "Event [" + str + "] name is invalid!", new Object[0]);
            }
            if (str.startsWith("__")) {
                List<String> list2 = f11898a;
                iAppLogLogger.warn(list2, "Event [" + str + "] name should not start with __!", new Object[0]);
            }
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        String a10 = l0.b.a((Object) str);
        while (keys.hasNext()) {
            String next = keys.next();
            if (l0.b.c(next)) {
                List<String> list3 = f11898a;
                iAppLogLogger.warn(list3, "Event [" + a10 + "] param key must not be empty!", new Object[0]);
            }
            if (!f11900c.contains(next)) {
                if (!f11899b.matcher(next).matches()) {
                    List<String> list4 = f11898a;
                    iAppLogLogger.warn(list4, "Event [" + a10 + "] param key [" + next + "] is invalid!", new Object[0]);
                }
                if (next.startsWith("__")) {
                    List<String> list5 = f11898a;
                    iAppLogLogger.warn(list5, "Event [" + a10 + "] param key [" + next + "] should not start with __!", new Object[0]);
                }
            }
            Object opt = jSONObject.opt(next);
            if ((opt instanceof String) && ((String) opt).length() > 1024) {
                List<String> list6 = f11898a;
                iAppLogLogger.warn(list6, "Event [" + a10 + "] param key [" + next + "] value is limited to a maximum of 1024 characters!", new Object[0]);
            }
        }
    }
}
