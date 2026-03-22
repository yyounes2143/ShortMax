package com.bytedance.bdtracker;

import android.os.SystemProperties;
import com.bytedance.applog.log.LoggerImpl;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class z4 {

    /* renamed from: b  reason: collision with root package name */
    public static volatile Object f12545b;

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f12546a = Collections.singletonList("SystemPropertiesProxy");

    public final Object a() {
        if (f12545b == null) {
            synchronized (z4.class) {
                try {
                    if (f12545b == null) {
                        f12545b = Class.forName("android.os.SystemProperties").newInstance();
                    }
                } finally {
                }
            }
        }
        return f12545b;
    }

    public String a(String str) {
        try {
            return SystemProperties.get(str);
        } catch (Throwable th2) {
            LoggerImpl.global().error(this.f12546a, "Get key:{} value failed", th2, str);
            try {
                Object a10 = a();
                return (String) a10.getClass().getMethod("get", String.class).invoke(a10, str);
            } catch (Throwable th3) {
                LoggerImpl.global().error(this.f12546a, "Get key:{} value by reflection failed", th3, str);
                return "";
            }
        }
    }
}
