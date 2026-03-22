package com.mbridge.msdk.foundation.entity;

import android.text.TextUtils;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: ClickTime.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private String f26863a;

    /* renamed from: b  reason: collision with root package name */
    private String f26864b;

    /* renamed from: c  reason: collision with root package name */
    private String f26865c;

    /* renamed from: d  reason: collision with root package name */
    private int f26866d;

    /* renamed from: e  reason: collision with root package name */
    private int f26867e;

    /* renamed from: f  reason: collision with root package name */
    private String f26868f;

    /* renamed from: g  reason: collision with root package name */
    private String f26869g;

    /* renamed from: h  reason: collision with root package name */
    private String f26870h;

    /* renamed from: i  reason: collision with root package name */
    private int f26871i;

    /* renamed from: j  reason: collision with root package name */
    private String f26872j;

    /* renamed from: k  reason: collision with root package name */
    private int f26873k;

    /* renamed from: l  reason: collision with root package name */
    private String f26874l;

    /* renamed from: m  reason: collision with root package name */
    private int f26875m;

    /* renamed from: n  reason: collision with root package name */
    private String f26876n;

    /* renamed from: o  reason: collision with root package name */
    private String f26877o;

    /* renamed from: p  reason: collision with root package name */
    private int f26878p;

    /* renamed from: q  reason: collision with root package name */
    private String f26879q;

    public String a() {
        return this.f26863a;
    }

    public String b() {
        return this.f26865c;
    }

    public int c() {
        return this.f26866d;
    }

    public String d() {
        return this.f26864b;
    }

    public void e(int i10) {
        this.f26875m = i10;
    }

    public void f(int i10) {
        this.f26878p = i10;
    }

    public String g() {
        return this.f26869g;
    }

    public void h(String str) {
        this.f26874l = str;
    }

    public void i(String str) {
        this.f26876n = str;
    }

    public String j() {
        return this.f26872j;
    }

    public void k(String str) {
        this.f26879q = str;
    }

    public String l() {
        return this.f26874l;
    }

    public int m() {
        return this.f26875m;
    }

    public String n() {
        return this.f26876n;
    }

    public String o() {
        return this.f26877o;
    }

    public int p() {
        return this.f26878p;
    }

    public String q() {
        return this.f26879q;
    }

    public String toString() {
        return "ClickTime [campaignId=" + this.f26863a + ", click_duration=" + this.f26864b + ", lastUrl=" + this.f26872j + ", code=" + this.f26867e + ", excepiton=" + this.f26869g + ", header=" + this.f26870h + ", content=" + this.f26868f + ", type=" + this.f26878p + ", click_type=" + this.f26866d + "]";
    }

    public void a(int i10) {
        this.f26866d = i10;
    }

    public void b(String str) {
        this.f26865c = str;
    }

    public void c(int i10) {
        this.f26871i = i10;
    }

    public void d(int i10) {
        this.f26873k = i10;
    }

    public int e() {
        return this.f26867e;
    }

    public String f() {
        return this.f26868f;
    }

    public void g(String str) {
        this.f26872j = str;
    }

    public String h() {
        return this.f26870h;
    }

    public int i() {
        return this.f26871i;
    }

    public void j(String str) {
        this.f26877o = str;
    }

    public int k() {
        return this.f26873k;
    }

    public void a(String str) {
        this.f26863a = str;
    }

    public void b(int i10) {
        this.f26867e = i10;
    }

    public void c(String str) {
        this.f26864b = str;
    }

    public void d(String str) {
        this.f26868f = str;
    }

    public void e(String str) {
        this.f26869g = str;
    }

    public void f(String str) {
        this.f26870h = str;
    }

    public static JSONObject a(e eVar) {
        if (eVar != null) {
            String j10 = eVar.j();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("rid", eVar.n());
                jSONObject.put("rid_n", eVar.o());
                jSONObject.put("click_type", eVar.c());
                jSONObject.put("type", eVar.p());
                jSONObject.put(BidResponsedEx.KEY_CID, eVar.a());
                jSONObject.put("click_duration", eVar.d());
                jSONObject.put("key", "2000012");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, eVar.q());
                jSONObject.put("last_url", j10);
                jSONObject.put(Module.ResponseKey.Code, eVar.e());
                jSONObject.put("exception", eVar.g());
                jSONObject.put(CampaignEx.JSON_KEY_LANDING_TYPE, eVar.i());
                jSONObject.put(CampaignEx.JSON_KEY_LINK_TYPE, eVar.k());
                jSONObject.put("click_time", eVar.b());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", eVar.m());
                    jSONObject.put("network_str", eVar.l());
                }
                return jSONObject;
            } catch (Throwable th2) {
                p0.b("ClickTime", th2.getMessage());
                return null;
            }
        }
        return null;
    }

    public static ArrayList<JSONObject> a(List<e> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList<JSONObject> arrayList = new ArrayList<>();
        for (e eVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("rid", eVar.n());
                jSONObject.put("rid_n", eVar.o());
                jSONObject.put(BidResponsedEx.KEY_CID, eVar.a());
                jSONObject.put("click_type", eVar.c());
                jSONObject.put("type", eVar.p());
                jSONObject.put("click_duration", eVar.d());
                jSONObject.put("key", "2000013");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, eVar.q());
                jSONObject.put("last_url", eVar.j());
                jSONObject.put("content", eVar.f());
                jSONObject.put(Module.ResponseKey.Code, eVar.e());
                jSONObject.put("exception", eVar.g());
                jSONObject.put("header", eVar.h());
                jSONObject.put(CampaignEx.JSON_KEY_LANDING_TYPE, eVar.i());
                jSONObject.put(CampaignEx.JSON_KEY_LINK_TYPE, eVar.k());
                jSONObject.put("click_time", eVar.b());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", eVar.m());
                    jSONObject.put("network_str", eVar.l());
                }
                String q10 = eVar.q();
                if (!TextUtils.isEmpty(q10)) {
                    String str = com.mbridge.msdk.foundation.controller.a.f26683r.get(q10);
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put("u_stid", str);
                }
                arrayList.add(jSONObject);
            } catch (Throwable th2) {
                p0.b("ClickTime", th2.getMessage());
            }
        }
        return arrayList;
    }
}
