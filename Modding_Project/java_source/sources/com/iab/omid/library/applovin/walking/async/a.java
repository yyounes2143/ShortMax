package com.iab.omid.library.applovin.walking.async;

import com.iab.omid.library.applovin.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f22556c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f22557d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f22558e;

    public a(b.InterfaceC0323b interfaceC0323b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0323b);
        this.f22556c = new HashSet<>(hashSet);
        this.f22557d = jSONObject;
        this.f22558e = j10;
    }
}
