package com.huawei.hms.availableupdate;

import android.app.Activity;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;
/* compiled from: UpdateAdapterMgr.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f21924b = new c();

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f21925a;

    public boolean a(Activity activity) {
        HMSLog.i("UpdateAdapterMgr", "onActivityCreate");
        Activity a10 = a();
        if (a10 != null && !a10.isFinishing()) {
            activity.finish();
            HMSLog.i("UpdateAdapterMgr", "finish one");
            return false;
        }
        this.f21925a = new WeakReference<>(activity);
        return true;
    }

    public void b(Activity activity) {
        HMSLog.i("UpdateAdapterMgr", "onActivityDestroy");
        Activity a10 = a();
        if (activity != null && activity.equals(a10)) {
            HMSLog.i("UpdateAdapterMgr", "reset");
            this.f21925a = null;
        }
    }

    private Activity a() {
        WeakReference<Activity> weakReference = this.f21925a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
