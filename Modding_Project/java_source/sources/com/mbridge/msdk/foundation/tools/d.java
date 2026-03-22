package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseDomainDeviceInfo.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public int f27392a;

    /* renamed from: b  reason: collision with root package name */
    public int f27393b;

    /* renamed from: c  reason: collision with root package name */
    public String f27394c;

    /* renamed from: d  reason: collision with root package name */
    public String f27395d;

    /* renamed from: e  reason: collision with root package name */
    public String f27396e;

    /* renamed from: f  reason: collision with root package name */
    public String f27397f;

    /* renamed from: g  reason: collision with root package name */
    public String f27398g;

    /* renamed from: h  reason: collision with root package name */
    public String f27399h;

    /* renamed from: j  reason: collision with root package name */
    public String f27401j;

    /* renamed from: k  reason: collision with root package name */
    public String f27402k;

    /* renamed from: m  reason: collision with root package name */
    public int f27404m;

    /* renamed from: n  reason: collision with root package name */
    public String f27405n;

    /* renamed from: o  reason: collision with root package name */
    public String f27406o;

    /* renamed from: p  reason: collision with root package name */
    public String f27407p;

    /* renamed from: r  reason: collision with root package name */
    public String f27409r;

    /* renamed from: s  reason: collision with root package name */
    public String f27410s;

    /* renamed from: t  reason: collision with root package name */
    public String f27411t;

    /* renamed from: v  reason: collision with root package name */
    public String f27413v;

    /* renamed from: q  reason: collision with root package name */
    public String f27408q = "android";

    /* renamed from: i  reason: collision with root package name */
    public String f27400i = l0.t();

    /* renamed from: u  reason: collision with root package name */
    public String f27412u = l0.q();

    /* renamed from: l  reason: collision with root package name */
    public String f27403l = f.d();

    public d(Context context) {
        int s10 = l0.s(context);
        this.f27405n = String.valueOf(s10);
        this.f27406o = l0.a(context, s10);
        this.f27401j = l0.l(context);
        this.f27396e = com.mbridge.msdk.foundation.controller.c.m().c();
        this.f27395d = com.mbridge.msdk.foundation.controller.c.m().b();
        this.f27411t = String.valueOf(u0.g(context));
        this.f27410s = String.valueOf(u0.f(context));
        this.f27409r = String.valueOf(u0.d(context));
        this.f27413v = com.mbridge.msdk.foundation.controller.c.m().j().toString();
        this.f27398g = l0.s();
        this.f27404m = u0.a();
        if (context.getResources().getConfiguration().orientation == 2) {
            this.f27407p = "landscape";
        } else {
            this.f27407p = "portrait";
        }
        this.f27397f = com.mbridge.msdk.foundation.same.a.V;
        this.f27399h = com.mbridge.msdk.foundation.same.a.f27025g;
        this.f27402k = l0.u();
        this.f27394c = f.e();
        this.f27392a = f.a();
        this.f27393b = com.mbridge.msdk.foundation.controller.authoritycontroller.b.j() ? 1 : 0;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("device", this.f27400i);
                jSONObject.put("system_version", this.f27412u);
                jSONObject.put("network_type", this.f27405n);
                jSONObject.put("network_type_str", this.f27406o);
                jSONObject.put("device_ua", this.f27401j);
                jSONObject.put("has_wx", l0.D(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("integrated_wx", l0.D());
                jSONObject.put("opensdk_ver", l0.B() + "");
                jSONObject.put("wx_api_ver", l0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
                jSONObject.put("brand", this.f27398g);
                jSONObject.put("mnc", l0.r(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("mcc", l0.q(com.mbridge.msdk.foundation.controller.c.m().d()));
                jSONObject.put("adid_limit", this.f27392a);
                jSONObject.put("adid_limit_dev", this.f27393b);
            }
            jSONObject.put("plantform", this.f27408q);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                jSONObject.put("google_ad_id", this.f27403l);
                jSONObject.put("az_aid_info", this.f27394c);
            }
            jSONObject.put("appkey", this.f27396e);
            jSONObject.put("appId", this.f27395d);
            jSONObject.put("screen_width", this.f27411t);
            jSONObject.put("screen_height", this.f27410s);
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, this.f27407p);
            jSONObject.put(TextureRenderKeys.KEY_IS_SCALE, this.f27409r);
            jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, this.f27397f);
            jSONObject.put("c", this.f27399h);
            jSONObject.put("web_env", this.f27413v);
            jSONObject.put("f", this.f27402k);
            jSONObject.put("misk_spt", this.f27404m);
            if (l0.y() != 0) {
                jSONObject.put("tun", l0.y());
            }
            String str = com.mbridge.msdk.foundation.same.net.wrapper.e.f27189f;
            jSONObject.put(str, com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c() + "");
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("adid_limit", this.f27392a);
                jSONObject2.put("adid_limit_dev", this.f27393b);
                jSONObject.put("dvi", j0.b(jSONObject2.toString()));
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                jSONObject.put("dev_source", "2");
            }
            if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
                jSONObject.put("re_domain", "1");
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
