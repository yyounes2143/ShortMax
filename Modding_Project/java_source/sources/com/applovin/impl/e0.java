package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.io.File;
import java.util.List;
/* loaded from: classes2.dex */
public class e0 extends c0 {

    /* renamed from: f  reason: collision with root package name */
    private final String f7861f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f7862g;

    /* renamed from: h  reason: collision with root package name */
    private final List f7863h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f7864i;

    /* renamed from: j  reason: collision with root package name */
    private final String f7865j;

    /* renamed from: k  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7866k;

    /* renamed from: l  reason: collision with root package name */
    private final a f7867l;

    /* loaded from: classes2.dex */
    public interface a {
        void a(Uri uri);
    }

    public e0(String str, com.applovin.impl.sdk.ad.b bVar, String str2, com.applovin.impl.sdk.k kVar, a aVar) {
        this(str, bVar, bVar.c0(), true, str2, kVar, aVar);
    }

    private void a(Uri uri) {
        a aVar;
        if (!this.f7624e.get() && (aVar = this.f7867l) != null) {
            aVar.a(uri);
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: b */
    public Boolean call() {
        if (this.f7624e.get()) {
            return Boolean.FALSE;
        }
        String a10 = this.f7866k.H().a(a(), this.f7861f, this.f7862g.getCachePrefix(), this.f7863h, this.f7864i, this.f7866k.H().a(this.f7861f, this.f7862g), this.f7865j, e2.a((AppLovinAdImpl) this.f7862g));
        if (TextUtils.isEmpty(a10)) {
            a((Uri) null);
            return Boolean.FALSE;
        } else if (this.f7624e.get()) {
            return Boolean.FALSE;
        } else {
            File a11 = this.f7866k.H().a(a10, a());
            if (a11 == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7622c;
                    String str = this.f7621b;
                    oVar.b(str, "Unable to retrieve File for cached filename = " + a10);
                }
                a((Uri) null);
                return Boolean.FALSE;
            } else if (this.f7624e.get()) {
                return Boolean.FALSE;
            } else {
                Uri fromFile = Uri.fromFile(a11);
                if (fromFile == null) {
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f7622c.b(this.f7621b, "Unable to extract Uri from file");
                    }
                    a((Uri) null);
                    return Boolean.FALSE;
                } else if (this.f7624e.get()) {
                    return Boolean.FALSE;
                } else {
                    a(fromFile);
                    return Boolean.TRUE;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f7861f.equals(((e0) obj).f7861f);
        }
        return false;
    }

    public int hashCode() {
        String str = this.f7861f;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public e0(String str, com.applovin.impl.sdk.ad.b bVar, List list, boolean z10, String str2, com.applovin.impl.sdk.k kVar, a aVar) {
        super("AsyncTaskCacheResource", kVar);
        this.f7861f = str;
        this.f7862g = bVar;
        this.f7863h = list;
        this.f7864i = z10;
        this.f7865j = str2;
        this.f7866k = kVar;
        this.f7867l = aVar;
    }
}
