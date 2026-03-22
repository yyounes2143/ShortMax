package com.mbridge.msdk.advanced.common;

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
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public String f25733e;

    /* renamed from: f  reason: collision with root package name */
    public String f25734f;

    /* renamed from: g  reason: collision with root package name */
    public String f25735g;

    /* renamed from: h  reason: collision with root package name */
    public String f25736h;

    /* renamed from: i  reason: collision with root package name */
    public String f25737i;

    /* renamed from: j  reason: collision with root package name */
    public String f25738j;

    /* renamed from: k  reason: collision with root package name */
    public String f25739k;

    /* renamed from: l  reason: collision with root package name */
    public String f25740l;

    /* renamed from: m  reason: collision with root package name */
    public String f25741m;

    /* renamed from: n  reason: collision with root package name */
    public String f25742n;

    /* renamed from: o  reason: collision with root package name */
    public String f25743o;

    /* renamed from: p  reason: collision with root package name */
    public int f25744p;

    /* renamed from: q  reason: collision with root package name */
    public int f25745q;

    /* renamed from: c  reason: collision with root package name */
    public String f25731c = "android";

    /* renamed from: a  reason: collision with root package name */
    public String f25729a = l0.t();

    /* renamed from: b  reason: collision with root package name */
    public String f25730b = l0.q();

    /* renamed from: d  reason: collision with root package name */
    public String f25732d = f.d();

    public a(Context context) {
        int s10 = l0.s(context);
        this.f25733e = String.valueOf(s10);
        this.f25734f = l0.a(context, s10);
        this.f25735g = l0.l(context);
        this.f25736h = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f25737i = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f25738j = String.valueOf(u0.g(context));
        this.f25739k = String.valueOf(u0.f(context));
        this.f25741m = String.valueOf(u0.d(context));
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f25740l = "landscape";
        } else {
            this.f25740l = "portrait";
        }
        this.f25742n = l0.u();
        this.f25743o = f.e();
        this.f25744p = f.a();
        this.f25745q = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f25729a);
                jSONObject.put("system_version", this.f25730b);
                jSONObject.put("network_type", this.f25733e);
                jSONObject.put("network_type_str", this.f25734f);
                jSONObject.put("device_ua", this.f25735g);
                jSONObject.put("has_wx", l0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", l0.D());
                jSONObject.put("opensdk_ver", l0.B() + "");
                jSONObject.put("wx_api_ver", l0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
                jSONObject.put("mnc", l0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", l0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f25744p);
                jSONObject.put("adid_limit_dev", this.f25745q);
            }
            jSONObject.put("plantform", this.f25731c);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f25732d);
                jSONObject.put("az_aid_info", this.f25743o);
            }
            jSONObject.put("appkey", this.f25736h);
            jSONObject.put("appId", this.f25737i);
            jSONObject.put("screen_width", this.f25738j);
            jSONObject.put("screen_height", this.f25739k);
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, this.f25740l);
            jSONObject.put(TextureRenderKeys.KEY_IS_SCALE, this.f25741m);
            if (l0.y() != 0) {
                jSONObject.put("tun", l0.y());
            }
            jSONObject.put("f", this.f25742n);
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e10) {
            p0.b("BaseDeviceInfo", e10.getMessage());
        }
        return jSONObject;
    }
}
