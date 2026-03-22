package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class q4 {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f12351a;

    /* loaded from: classes3.dex */
    public static class a implements Callable<String> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f12352a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ p1 f12353b;

        public a(Context context, p1 p1Var) {
            this.f12352a = context;
            this.f12353b = p1Var;
        }

        @Override // java.util.concurrent.Callable
        public String call() {
            if (TextUtils.isEmpty(q4.f12351a)) {
                synchronized (q4.class) {
                    if (!TextUtils.isEmpty(q4.f12351a)) {
                        return q4.f12351a;
                    }
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f12352a);
                    String id2 = advertisingIdInfo != null ? advertisingIdInfo.getId() : null;
                    if (TextUtils.isEmpty(id2)) {
                        id2 = this.f12353b.f12307f.getString("google_aid", null);
                    } else if (!TextUtils.equals(this.f12353b.f12307f.getString("google_aid", null), id2)) {
                        p1 p1Var = this.f12353b;
                        if (!TextUtils.isEmpty(id2) && p1Var != null) {
                            p1Var.f12307f.edit().putString("google_aid", id2).apply();
                        }
                    }
                    q4.f12351a = id2;
                }
            }
            return q4.f12351a;
        }
    }

    public static String a(Context context, p1 p1Var) {
        return (String) x.f12504a.submit(new a(context, p1Var)).get(p1Var.f12304c.getGaidTimeOutMilliSeconds(), TimeUnit.MILLISECONDS);
    }
}
