package com.huawei.hms.ui;

import android.os.Bundle;
import com.huawei.hms.base.ui.LogUtil;
/* loaded from: classes5.dex */
public class SafeBundle {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f22338a;

    public SafeBundle() {
        this(new Bundle());
    }

    public boolean containsKey(String str) {
        try {
            return this.f22338a.containsKey(str);
        } catch (Throwable unused) {
            LogUtil.e("SafeBundle", "containsKey exception. key:");
            return false;
        }
    }

    public Object get(String str) {
        try {
            return this.f22338a.get(str);
        } catch (Exception e10) {
            LogUtil.e("SafeBundle", "get exception: " + e10.getMessage(), true);
            return null;
        }
    }

    public Bundle getBundle() {
        return this.f22338a;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public String getString(String str) {
        try {
            return this.f22338a.getString(str);
        } catch (Throwable th2) {
            LogUtil.e("SafeBundle", "getString exception: " + th2.getMessage(), true);
            return "";
        }
    }

    public boolean isEmpty() {
        try {
            return this.f22338a.isEmpty();
        } catch (Exception unused) {
            LogUtil.e("SafeBundle", "isEmpty exception");
            return true;
        }
    }

    public int size() {
        try {
            return this.f22338a.size();
        } catch (Exception unused) {
            LogUtil.e("SafeBundle", "size exception");
            return 0;
        }
    }

    public String toString() {
        return this.f22338a.toString();
    }

    public SafeBundle(Bundle bundle) {
        this.f22338a = bundle == null ? new Bundle() : bundle;
    }

    public int getInt(String str, int i10) {
        try {
            return this.f22338a.getInt(str, i10);
        } catch (Throwable th2) {
            LogUtil.e("SafeBundle", "getInt exception: " + th2.getMessage(), true);
            return i10;
        }
    }

    public String getString(String str, String str2) {
        try {
            return this.f22338a.getString(str, str2);
        } catch (Exception e10) {
            LogUtil.e("SafeBundle", "getString exception: " + e10.getMessage(), true);
            return str2;
        }
    }
}
