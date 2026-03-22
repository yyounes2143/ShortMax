package com.iab.omid.library.appodeal.walking.async;

import com.iab.omid.library.appodeal.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: c  reason: collision with root package name */
    protected final HashSet<String> f22692c;

    /* renamed from: d  reason: collision with root package name */
    protected final JSONObject f22693d;

    /* renamed from: e  reason: collision with root package name */
    protected final long f22694e;

    public a(b.InterfaceC0327b interfaceC0327b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0327b);
        this.f22692c = new HashSet<>(hashSet);
        this.f22693d = jSONObject;
        this.f22694e = j10;
    }
}
