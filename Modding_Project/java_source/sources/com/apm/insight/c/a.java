package com.apm.insight.c;

import com.apm.insight.e;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CommandWriter.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static AtomicBoolean f6833a = new AtomicBoolean(false);

    public static boolean a() {
        synchronized (f6833a) {
            try {
                if (f6833a.get()) {
                    return false;
                }
                f6833a.set(true);
                return b();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean b() {
        if (!com.apm.insight.runtime.a.g()) {
            return false;
        }
        try {
            File file = new File(e.h().getFilesDir(), "apminsight/crashCommand");
            file.mkdirs();
            new File(file, "0_" + System.currentTimeMillis()).createNewFile();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
