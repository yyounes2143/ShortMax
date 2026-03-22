package com.huawei.hms.api;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BindingFailedResolveMgr.java */
/* loaded from: classes5.dex */
class a {

    /* renamed from: b  reason: collision with root package name */
    static final a f21911b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f21912c = new Object();

    /* renamed from: a  reason: collision with root package name */
    List<Activity> f21913a = new ArrayList(1);

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        synchronized (f21912c) {
            try {
                for (Activity activity2 : this.f21913a) {
                    if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                        activity2.finish();
                    }
                }
                this.f21913a.add(activity);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Activity activity) {
        synchronized (f21912c) {
            this.f21913a.remove(activity);
        }
    }
}
