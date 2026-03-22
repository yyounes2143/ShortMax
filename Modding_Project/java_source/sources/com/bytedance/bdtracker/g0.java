package com.bytedance.bdtracker;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class g0 extends c0 {

    /* renamed from: g  reason: collision with root package name */
    public final String f12016g;

    /* renamed from: h  reason: collision with root package name */
    public int f12017h;

    public g0(e0 e0Var, String str) {
        super(e0Var);
        this.f12017h = 0;
        this.f12016g = str;
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean c() {
        int i10;
        if (this.f11889f.f11911k.a((JSONObject) null, this.f12016g)) {
            i10 = 0;
        } else {
            i10 = this.f12017h + 1;
        }
        this.f12017h = i10;
        if (i10 > 3) {
            this.f11889f.setRangersEventVerifyEnable(false, this.f12016g);
        }
        return true;
    }

    @Override // com.bytedance.bdtracker.c0
    public String d() {
        return "RangersEventVerify";
    }

    @Override // com.bytedance.bdtracker.c0
    public long[] e() {
        return new long[]{1000};
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.c0
    public long g() {
        return 1000L;
    }
}
