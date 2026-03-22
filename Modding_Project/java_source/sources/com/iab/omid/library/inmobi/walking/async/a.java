package com.iab.omid.library.inmobi.walking.async;

import com.iab.omid.library.inmobi.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f22957c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f22958d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f22959e;

    public a(b.InterfaceC0335b interfaceC0335b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0335b);
        this.f22957c = new HashSet<>(hashSet);
        this.f22958d = jSONObject;
        this.f22959e = j10;
    }
}
