package com.mbridge.msdk.tracker;

import java.io.Serializable;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: Event.java */
/* loaded from: classes6.dex */
public class e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f30201a;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f30204d;

    /* renamed from: i  reason: collision with root package name */
    private h f30209i;

    /* renamed from: b  reason: collision with root package name */
    private int f30202b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f30203c = 0;

    /* renamed from: g  reason: collision with root package name */
    private long f30207g = 0;

    /* renamed from: h  reason: collision with root package name */
    private long f30208h = 604800000;

    /* renamed from: j  reason: collision with root package name */
    private boolean f30210j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f30211k = false;

    /* renamed from: f  reason: collision with root package name */
    private long f30206f = System.currentTimeMillis();

    /* renamed from: e  reason: collision with root package name */
    private String f30205e = UUID.randomUUID().toString();

    public e(String str) {
        this.f30201a = str;
    }

    public void a(int i10) {
        this.f30203c = i10;
    }

    public String b() {
        return this.f30201a;
    }

    public int c() {
        return this.f30203c;
    }

    public JSONObject d() {
        JSONObject jSONObject = this.f30204d;
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            this.f30204d = jSONObject2;
            return jSONObject2;
        }
        return jSONObject;
    }

    public h e() {
        return this.f30209i;
    }

    public long f() {
        return this.f30208h;
    }

    public long g() {
        return this.f30206f;
    }

    public int h() {
        return this.f30202b;
    }

    public String i() {
        return this.f30205e;
    }

    public boolean j() {
        return this.f30211k;
    }

    public boolean k() {
        return this.f30210j;
    }

    public void a(JSONObject jSONObject) {
        this.f30204d = jSONObject;
    }

    public void b(int i10) {
        this.f30202b = i10;
    }

    public void c(long j10) {
        this.f30206f = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f30205e = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j10) {
        this.f30208h = j10;
    }

    public long a() {
        return this.f30207g;
    }

    public void a(long j10) {
        this.f30207g = j10;
    }

    public void a(h hVar) {
        this.f30209i = hVar;
    }

    public void a(boolean z10) {
        this.f30211k = z10;
    }
}
