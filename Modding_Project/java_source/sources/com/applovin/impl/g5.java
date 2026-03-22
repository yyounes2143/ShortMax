package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.b6;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class g5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f7960a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f7961b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.applovin.impl.sdk.o f7962c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f7963d;

    /* renamed from: e  reason: collision with root package name */
    private String f7964e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f7965f;

    public g5(String str, com.applovin.impl.sdk.k kVar) {
        this(str, kVar, false, null);
    }

    public com.applovin.impl.sdk.k b() {
        return this.f7960a;
    }

    public String c() {
        return this.f7961b;
    }

    public boolean d() {
        return this.f7965f;
    }

    public g5(String str, com.applovin.impl.sdk.k kVar, boolean z10) {
        this(str, kVar, z10, null);
    }

    public Context a() {
        return this.f7963d;
    }

    public ScheduledFuture b(final Thread thread, final long j10) {
        if (j10 <= 0) {
            return null;
        }
        com.applovin.impl.sdk.k kVar = this.f7960a;
        return this.f7960a.r0().b(new p6(kVar, "timeout:" + this.f7961b, new Runnable() { // from class: com.applovin.impl.fa
            @Override // java.lang.Runnable
            public final void run() {
                g5.this.a(thread, j10);
            }
        }), b6.b.TIMEOUT, j10);
    }

    public g5(String str, com.applovin.impl.sdk.k kVar, String str2) {
        this(str, kVar, false, str2);
    }

    public void a(String str) {
        this.f7964e = str;
    }

    public g5(String str, com.applovin.impl.sdk.k kVar, boolean z10, String str2) {
        this.f7961b = str;
        this.f7960a = kVar;
        this.f7962c = kVar.O();
        this.f7963d = com.applovin.impl.sdk.k.o();
        this.f7965f = z10;
        this.f7964e = str2;
    }

    public void a(boolean z10) {
        this.f7965f = z10;
    }

    public void a(Throwable th2) {
        Map map = CollectionUtils.map("source", this.f7961b);
        map.put("top_main_method", th2.toString());
        map.put("details", StringUtils.emptyIfNull(this.f7964e));
        this.f7960a.E().d(c2.J0, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Thread thread, long j10) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("name", thread.getState().name());
        if (StringUtils.isValidString(this.f7964e)) {
            hashMap.put("details", this.f7964e);
        }
        this.f7960a.E().a(c2.K0, this.f7961b, hashMap);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.k(str, "Task has been executing for over " + TimeUnit.MILLISECONDS.toSeconds(j10) + " seconds");
        }
    }
}
