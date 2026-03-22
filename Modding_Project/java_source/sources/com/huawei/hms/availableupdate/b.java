package com.huawei.hms.availableupdate;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* compiled from: NotInstalledHmsResolveMgr.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    public static final b f21921b = new b();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f21922c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final List<Activity> f21923a = new ArrayList(1);

    public void a(Activity activity) {
        synchronized (f21922c) {
            try {
                for (Activity activity2 : this.f21923a) {
                    if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                        activity2.finish();
                    }
                }
                this.f21923a.add(activity);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Activity activity) {
        synchronized (f21922c) {
            this.f21923a.remove(activity);
        }
    }
}
