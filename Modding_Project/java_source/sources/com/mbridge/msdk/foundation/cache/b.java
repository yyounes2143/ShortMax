package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.j0;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: CandidateEntity.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f26660a;

    /* renamed from: b  reason: collision with root package name */
    private double f26661b;

    /* renamed from: c  reason: collision with root package name */
    private String f26662c;

    /* renamed from: d  reason: collision with root package name */
    private String f26663d;

    /* renamed from: e  reason: collision with root package name */
    private int f26664e;

    /* renamed from: f  reason: collision with root package name */
    private long f26665f;

    /* renamed from: g  reason: collision with root package name */
    private int f26666g;

    /* renamed from: h  reason: collision with root package name */
    private long f26667h;

    /* renamed from: i  reason: collision with root package name */
    private String f26668i;

    /* renamed from: j  reason: collision with root package name */
    private long f26669j;

    public void a(long j10) {
        this.f26669j = j10;
    }

    public double b() {
        return this.f26661b;
    }

    public long c() {
        return this.f26669j;
    }

    public String d() {
        return this.f26662c;
    }

    public String e() {
        return this.f26663d;
    }

    public int f() {
        return this.f26664e;
    }

    public int g() {
        return this.f26666g;
    }

    public long h() {
        return this.f26667h;
    }

    public CopyOnWriteArrayList<CampaignEx> a() {
        return this.f26660a;
    }

    public void b(String str) {
        this.f26662c = str;
    }

    public void c(String str) {
        this.f26663d = str;
    }

    public void d(String str) {
        this.f26668i = str;
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f26660a = copyOnWriteArrayList;
    }

    public void b(int i10) {
        this.f26666g = i10;
    }

    public void c(long j10) {
        this.f26667h = j10;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String a10 = j0.a(str);
        if (TextUtils.isEmpty(a10)) {
            return;
        }
        try {
            double parseDouble = Double.parseDouble(a10);
            if (parseDouble <= 0.0d) {
                return;
            }
            this.f26661b = parseDouble;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(long j10) {
        this.f26665f = j10;
    }

    public void a(int i10) {
        this.f26664e = i10;
    }
}
