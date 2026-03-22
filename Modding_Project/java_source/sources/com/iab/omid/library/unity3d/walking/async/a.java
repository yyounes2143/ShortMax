package com.iab.omid.library.unity3d.walking.async;

import com.iab.omid.library.unity3d.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f23220c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f23221d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f23222e;

    public a(b.InterfaceC0343b interfaceC0343b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0343b);
        this.f23220c = new HashSet<>(hashSet);
        this.f23221d = jSONObject;
        this.f23222e = j10;
    }
}
