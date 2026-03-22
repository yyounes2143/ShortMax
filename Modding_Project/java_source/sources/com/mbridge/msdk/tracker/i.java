package com.mbridge.msdk.tracker;

import java.io.Serializable;
/* compiled from: EventTable.java */
/* loaded from: classes6.dex */
public class i implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    static String f30216i = "CREATE TABLE IF NOT EXISTS %s (id INTEGER PRIMARY KEY,uuid TEXT,name TEXT,type INTEGER,time_stamp INTEGER,duration INTEGER,properties TEXT,priority INTEGER,state INTEGER,invalid_time INTEGER,ignore_max_timeout INTEGER,ignore_max_retry_times INTEGER,report_error_message TEXT,report_count INTEGER)";

    /* renamed from: j  reason: collision with root package name */
    static String f30217j = "DROP TABLE IF EXISTS %s";

    /* renamed from: a  reason: collision with root package name */
    private final e f30218a;

    /* renamed from: b  reason: collision with root package name */
    private int f30219b;

    /* renamed from: c  reason: collision with root package name */
    private int f30220c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30221d;

    /* renamed from: e  reason: collision with root package name */
    private long f30222e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f30223f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f30224g = false;

    /* renamed from: h  reason: collision with root package name */
    private String f30225h;

    public i(e eVar) {
        this.f30218a = eVar;
        this.f30221d = eVar.i();
    }

    public void a(boolean z10) {
        this.f30224g = z10;
    }

    public void b(boolean z10) {
        this.f30223f = z10;
    }

    public int c() {
        return this.f30219b;
    }

    public String d() {
        return this.f30225h;
    }

    public int e() {
        return this.f30220c;
    }

    public String f() {
        return this.f30221d;
    }

    public boolean g() {
        return this.f30224g;
    }

    public boolean h() {
        return this.f30223f;
    }

    public e a() {
        return this.f30218a;
    }

    public void b(int i10) {
        this.f30220c = i10;
    }

    public void a(int i10) {
        this.f30219b = i10;
    }

    public long b() {
        return this.f30222e;
    }

    public void a(long j10) {
        this.f30222e = j10;
    }

    public void a(String str) {
        this.f30225h = str;
    }
}
