package com.mbridge.msdk.click.retry;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashSet;
/* compiled from: RetryUrlRecordData.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: k  reason: collision with root package name */
    public static int f26117k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static int f26118l = 1;

    /* renamed from: a  reason: collision with root package name */
    private final String f26119a;

    /* renamed from: b  reason: collision with root package name */
    private int f26120b;

    /* renamed from: c  reason: collision with root package name */
    private final HashSet<String> f26121c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private final long f26122d = System.currentTimeMillis();

    /* renamed from: e  reason: collision with root package name */
    private CampaignEx f26123e;

    /* renamed from: f  reason: collision with root package name */
    private String f26124f;

    /* renamed from: g  reason: collision with root package name */
    private int f26125g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26126h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26127i;

    /* renamed from: j  reason: collision with root package name */
    private int f26128j;

    public b(String str, String str2) {
        this.f26119a = str;
        a(str2);
    }

    public void a(boolean z10) {
        this.f26126h = z10;
    }

    public void b(boolean z10) {
        this.f26127i = z10;
    }

    public long c() {
        return this.f26122d;
    }

    public int d() {
        return this.f26128j;
    }

    public int e() {
        return this.f26120b;
    }

    public String f() {
        return this.f26124f;
    }

    public String g() {
        return this.f26119a;
    }

    public int h() {
        return this.f26125g;
    }

    public boolean i() {
        return this.f26126h;
    }

    public boolean j() {
        return this.f26127i;
    }

    public void a(int i10) {
        this.f26128j = i10;
    }

    public void b(int i10) {
        this.f26125g = i10;
    }

    public CampaignEx a() {
        return this.f26123e;
    }

    public void b(String str) {
        this.f26124f = str;
    }

    public void a(CampaignEx campaignEx) {
        this.f26123e = campaignEx;
    }

    public HashSet<String> b() {
        return this.f26121c;
    }

    public void a(String str) {
        this.f26120b++;
        this.f26121c.add(str);
    }
}
