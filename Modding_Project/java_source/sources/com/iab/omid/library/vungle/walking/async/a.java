package com.iab.omid.library.vungle.walking.async;

import com.iab.omid.library.vungle.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f23355c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f23356d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f23357e;

    public a(b.InterfaceC0347b interfaceC0347b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0347b);
        this.f23355c = new HashSet<>(hashSet);
        this.f23356d = jSONObject;
        this.f23357e = j10;
    }
}
