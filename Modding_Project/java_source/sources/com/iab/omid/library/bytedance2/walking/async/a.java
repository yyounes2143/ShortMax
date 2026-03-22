package com.iab.omid.library.bytedance2.walking.async;

import com.iab.omid.library.bytedance2.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f22821c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f22822d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f22823e;

    public a(b.InterfaceC0331b interfaceC0331b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0331b);
        this.f22821c = new HashSet<>(hashSet);
        this.f22822d = jSONObject;
        this.f22823e = j10;
    }
}
