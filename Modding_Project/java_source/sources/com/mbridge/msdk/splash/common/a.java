package com.mbridge.msdk.splash.common;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseDeviceInfo.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public String f29067e;

    /* renamed from: f  reason: collision with root package name */
    public String f29068f;

    /* renamed from: g  reason: collision with root package name */
    public String f29069g;

    /* renamed from: h  reason: collision with root package name */
    public String f29070h;

    /* renamed from: i  reason: collision with root package name */
    public String f29071i;

    /* renamed from: j  reason: collision with root package name */
    public String f29072j;

    /* renamed from: k  reason: collision with root package name */
    public String f29073k;

    /* renamed from: l  reason: collision with root package name */
    public String f29074l;

    /* renamed from: m  reason: collision with root package name */
    public String f29075m;

    /* renamed from: n  reason: collision with root package name */
    public String f29076n;

    /* renamed from: o  reason: collision with root package name */
    public String f29077o;

    /* renamed from: p  reason: collision with root package name */
    public int f29078p;

    /* renamed from: q  reason: collision with root package name */
    public int f29079q;

    /* renamed from: c  reason: collision with root package name */
    public String f29065c = "android";

    /* renamed from: a  reason: collision with root package name */
    public String f29063a = l0.t();

    /* renamed from: b  reason: collision with root package name */
    public String f29064b = l0.q();

    /* renamed from: d  reason: collision with root package name */
    public String f29066d = f.d();

    public a(Context context) {
        int s10 = l0.s(context);
        this.f29067e = String.valueOf(s10);
        this.f29068f = l0.a(context, s10);
        this.f29069g = l0.l(context);
        this.f29070h = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f29071i = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f29072j = String.valueOf(u0.g(context));
        this.f29073k = String.valueOf(u0.f(context));
        this.f29075m = String.valueOf(u0.d(context));
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f29074l = "landscape";
        } else {
            this.f29074l = "portrait";
        }
        this.f29076n = l0.u();
        this.f29077o = f.e();
        this.f29078p = f.a();
        this.f29079q = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f29063a);
                jSONObject.put("system_version", this.f29064b);
                jSONObject.put("network_type", this.f29067e);
                jSONObject.put("network_type_str", this.f29068f);
                jSONObject.put("device_ua", this.f29069g);
                jSONObject.put("has_wx", l0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", l0.D());
                jSONObject.put("mnc", l0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", l0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f29078p);
                jSONObject.put("adid_limit_dev", this.f29079q);
            }
            jSONObject.put("plantform", this.f29065c);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f29066d);
                jSONObject.put("az_aid_info", this.f29077o);
            }
            jSONObject.put("appkey", this.f29070h);
            jSONObject.put("appId", this.f29071i);
            jSONObject.put("screen_width", this.f29072j);
            jSONObject.put("screen_height", this.f29073k);
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, this.f29074l);
            jSONObject.put(TextureRenderKeys.KEY_IS_SCALE, this.f29075m);
            if (l0.y() != 0) {
                jSONObject.put("tun", l0.y());
            }
            jSONObject.put("f", this.f29076n);
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e10) {
            p0.b("BaseDeviceInfo", e10.getMessage());
        }
        return jSONObject;
    }
}
