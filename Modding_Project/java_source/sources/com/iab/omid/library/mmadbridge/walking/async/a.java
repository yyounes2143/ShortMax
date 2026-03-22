package com.iab.omid.library.mmadbridge.walking.async;

import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f23092c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f23093d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f23094e;

    public a(b.InterfaceC0339b interfaceC0339b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0339b);
        this.f23092c = new HashSet<>(hashSet);
        this.f23093d = jSONObject;
        this.f23094e = j10;
    }
}
