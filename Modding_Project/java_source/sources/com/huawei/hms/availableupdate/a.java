package com.huawei.hms.availableupdate;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: AppSpoofResolveMgr.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f21917c = new a();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f21918d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f21919a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private final List<Activity> f21920b = new ArrayList(1);

    public void a(Activity activity) {
        synchronized (f21918d) {
            try {
                for (Activity activity2 : this.f21920b) {
                    if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                        activity2.finish();
                    }
                }
                this.f21920b.add(activity);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void b(Activity activity) {
        synchronized (f21918d) {
            this.f21920b.remove(activity);
        }
    }

    public void a(boolean z10) {
        this.f21919a.set(z10);
    }

    public AtomicBoolean a() {
        return this.f21919a;
    }
}
