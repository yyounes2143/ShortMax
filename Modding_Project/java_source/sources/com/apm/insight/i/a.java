package com.apm.insight.i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.apm.insight.runtime.o;
import java.util.UUID;
/* compiled from: DeviceUuidFactory.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile UUID f6947a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f6948b = "";

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0043 -> B:28:0x0043). Please submit an issue!!! */
    @SuppressLint({"MissingPermission", "HardwareIds"})
    private a(Context context) {
        String str;
        if (f6947a == null) {
            synchronized (a.class) {
                if (f6947a == null) {
                    String c10 = o.a().c();
                    if (c10 != null) {
                        f6947a = UUID.fromString(c10);
                    } else {
                        try {
                            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
                        } catch (Throwable unused) {
                            str = null;
                        }
                        try {
                            if (str != null) {
                                f6947a = UUID.nameUUIDFromBytes(str.getBytes("utf8"));
                            } else {
                                f6947a = UUID.randomUUID();
                            }
                        } catch (Throwable unused2) {
                        }
                        try {
                            o.a().b(f6947a.toString());
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        }
    }

    public static synchronized String a(Context context) {
        String str;
        synchronized (a.class) {
            try {
                if (TextUtils.isEmpty(f6948b)) {
                    new a(context);
                    UUID uuid = f6947a;
                    if (uuid != null) {
                        f6948b = uuid.toString();
                    }
                }
                str = f6948b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }
}
