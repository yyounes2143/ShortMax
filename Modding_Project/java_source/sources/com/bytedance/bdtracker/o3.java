package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.applog.profile.UserProfileCallback;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class o3 implements Runnable {

    /* renamed from: g  reason: collision with root package name */
    public static final Handler f12292g = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    public final String f12293a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12294b;

    /* renamed from: c  reason: collision with root package name */
    public final JSONObject f12295c;

    /* renamed from: d  reason: collision with root package name */
    public final UserProfileCallback f12296d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f12297e;

    /* renamed from: f  reason: collision with root package name */
    public final d f12298f;

    public o3(d dVar, String str, String str2, JSONObject jSONObject, UserProfileCallback userProfileCallback, Context context) {
        this.f12298f = dVar;
        this.f12293a = str;
        this.f12294b = str2;
        this.f12295c = jSONObject;
        this.f12296d = userProfileCallback;
        this.f12297e = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!t4.b(this.f12297e)) {
                f12292g.post(new m3(this, 0));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
            hashMap.put("X-APIKEY", this.f12294b);
            this.f12298f.getNetClient().execute((byte) 1, this.f12293a, this.f12295c, hashMap, (byte) 0, false, 60000);
            f12292g.post(new n3(this));
        } catch (Throwable th2) {
            this.f12298f.D.error(9, "Report profile failed", th2, new Object[0]);
            f12292g.post(new m3(this, 1));
        }
    }
}
