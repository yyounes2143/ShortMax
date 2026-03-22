package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;
import javax.net.ssl.TrustManager;
/* loaded from: classes2.dex */
public class ClientConfiguration {

    /* renamed from: u  reason: collision with root package name */
    public static final String f4847u = VersionInfoUtils.b();

    /* renamed from: v  reason: collision with root package name */
    public static final RetryPolicy f4848v = PredefinedRetryPolicies.f5780b;

    /* renamed from: b  reason: collision with root package name */
    private String f4850b;

    /* renamed from: q  reason: collision with root package name */
    private String f4865q;

    /* renamed from: a  reason: collision with root package name */
    private String f4849a = f4847u;

    /* renamed from: c  reason: collision with root package name */
    private int f4851c = -1;

    /* renamed from: d  reason: collision with root package name */
    private RetryPolicy f4852d = f4848v;

    /* renamed from: e  reason: collision with root package name */
    private Protocol f4853e = Protocol.HTTPS;

    /* renamed from: f  reason: collision with root package name */
    private String f4854f = null;

    /* renamed from: g  reason: collision with root package name */
    private int f4855g = -1;

    /* renamed from: h  reason: collision with root package name */
    private String f4856h = null;

    /* renamed from: i  reason: collision with root package name */
    private String f4857i = null;
    @Deprecated

    /* renamed from: j  reason: collision with root package name */
    private String f4858j = null;
    @Deprecated

    /* renamed from: k  reason: collision with root package name */
    private String f4859k = null;

    /* renamed from: l  reason: collision with root package name */
    private int f4860l = 10;

    /* renamed from: m  reason: collision with root package name */
    private int f4861m = 15000;

    /* renamed from: n  reason: collision with root package name */
    private int f4862n = 15000;

    /* renamed from: o  reason: collision with root package name */
    private int f4863o = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f4864p = 0;

    /* renamed from: r  reason: collision with root package name */
    private TrustManager f4866r = null;

    /* renamed from: s  reason: collision with root package name */
    private boolean f4867s = false;

    /* renamed from: t  reason: collision with root package name */
    private boolean f4868t = false;

    public int a() {
        return this.f4862n;
    }

    public int b() {
        return this.f4851c;
    }

    public Protocol c() {
        return this.f4853e;
    }

    public RetryPolicy d() {
        return this.f4852d;
    }

    public String e() {
        return this.f4865q;
    }

    public int f() {
        return this.f4861m;
    }

    public TrustManager g() {
        return this.f4866r;
    }

    public String h() {
        return this.f4849a;
    }

    public String i() {
        return this.f4850b;
    }

    public boolean j() {
        return this.f4867s;
    }

    public boolean k() {
        return this.f4868t;
    }

    public void l(String str) {
        this.f4849a = str;
    }

    public void m(String str) {
        this.f4850b = str;
    }
}
