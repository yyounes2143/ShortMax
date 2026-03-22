package com.mbridge.msdk.foundation.error;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.MBridgeIds;
import java.io.Serializable;
import java.util.HashMap;
/* compiled from: MBFailureReason.java */
/* loaded from: classes5.dex */
public class b implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f26961a;

    /* renamed from: b  reason: collision with root package name */
    private int f26962b;

    /* renamed from: c  reason: collision with root package name */
    private String f26963c;

    /* renamed from: d  reason: collision with root package name */
    private Throwable f26964d;

    /* renamed from: e  reason: collision with root package name */
    private CampaignEx f26965e;

    /* renamed from: f  reason: collision with root package name */
    private MBridgeIds f26966f;

    /* renamed from: g  reason: collision with root package name */
    private String f26967g;

    /* renamed from: h  reason: collision with root package name */
    private String f26968h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26969i;

    /* renamed from: j  reason: collision with root package name */
    private int f26970j = -1;

    /* renamed from: k  reason: collision with root package name */
    private String f26971k;

    /* renamed from: l  reason: collision with root package name */
    private HashMap<Object, Object> f26972l;

    /* renamed from: m  reason: collision with root package name */
    private int f26973m;

    /* renamed from: n  reason: collision with root package name */
    private String f26974n;

    /* renamed from: o  reason: collision with root package name */
    private String f26975o;

    /* renamed from: p  reason: collision with root package name */
    private String f26976p;

    public b(int i10) {
        this.f26961a = i10;
        this.f26962b = a.b(i10);
    }

    public void a(Throwable th2) {
        this.f26964d = th2;
    }

    public int b() {
        return this.f26961a;
    }

    public void c(String str) {
        this.f26963c = str;
    }

    public void d(String str) {
        this.f26971k = str;
    }

    public MBridgeIds e() {
        if (this.f26966f == null) {
            this.f26966f = new MBridgeIds();
        }
        return this.f26966f;
    }

    public String f() {
        return this.f26968h;
    }

    public String g() {
        String str;
        int i10;
        if (!TextUtils.isEmpty(this.f26963c)) {
            str = this.f26963c;
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str) && (i10 = this.f26961a) != -1) {
            str = a.a(i10);
        }
        Throwable th2 = this.f26964d;
        if (th2 != null) {
            String message = th2.getMessage();
            if (!TextUtils.isEmpty(message)) {
                return str + " # " + message;
            }
            return str;
        }
        return str;
    }

    public String h() {
        return this.f26971k;
    }

    public int i() {
        return this.f26970j;
    }

    public String toString() {
        return "MBFailureReason{errorCode=" + this.f26961a + ", errorSubType=" + this.f26962b + ", message='" + this.f26963c + "', cause=" + this.f26964d + ", campaign=" + this.f26965e + ", ids=" + this.f26966f + ", requestId='" + this.f26967g + "', localRequestId='" + this.f26968h + "', isHeaderBidding=" + this.f26969i + ", typeD=" + this.f26970j + ", reasonD='" + this.f26971k + "', extraMap=" + this.f26972l + ", serverErrorCode=" + this.f26973m + ", errorUrl='" + this.f26974n + "', serverErrorResponse='" + this.f26975o + "'}";
    }

    public CampaignEx a() {
        return this.f26965e;
    }

    public void b(String str) {
        this.f26968h = str;
    }

    public int c() {
        return this.f26962b;
    }

    public String d() {
        return this.f26976p;
    }

    public void a(CampaignEx campaignEx) {
        this.f26965e = campaignEx;
    }

    public void a(MBridgeIds mBridgeIds) {
        this.f26966f = mBridgeIds;
    }

    public b(int i10, String str) {
        this.f26961a = i10;
        if (!TextUtils.isEmpty(str)) {
            a("his_reason", str);
        }
        this.f26963c = str;
        this.f26962b = a.b(i10);
    }

    public void a(boolean z10) {
        this.f26969i = z10;
    }

    public void a(Object obj, Object obj2) {
        if (this.f26972l == null) {
            this.f26972l = new HashMap<>();
        }
        this.f26972l.put(obj, obj2);
    }

    public Object a(Object obj) {
        HashMap<Object, Object> hashMap = this.f26972l;
        if (hashMap != null && hashMap.containsKey(obj)) {
            return this.f26972l.get(obj);
        }
        return null;
    }

    public void a(int i10) {
        this.f26970j = i10;
    }

    public void a(String str) {
        this.f26976p = str;
    }
}
