package com.huawei.hms.activity.internal;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class ForegroundBusResponseMgr {

    /* renamed from: b  reason: collision with root package name */
    private static final ForegroundBusResponseMgr f21787b = new ForegroundBusResponseMgr();

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, BusResponseCallback> f21788a = new HashMap();

    public static ForegroundBusResponseMgr getInstance() {
        return f21787b;
    }

    public BusResponseCallback get(String str) {
        BusResponseCallback busResponseCallback;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f21788a) {
            busResponseCallback = this.f21788a.get(str);
        }
        return busResponseCallback;
    }

    public void registerObserver(String str, BusResponseCallback busResponseCallback) {
        if (!TextUtils.isEmpty(str) && busResponseCallback != null) {
            synchronized (this.f21788a) {
                try {
                    if (!this.f21788a.containsKey(str)) {
                        this.f21788a.put(str, busResponseCallback);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void unRegisterObserver(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f21788a) {
            this.f21788a.remove(str);
        }
    }
}
