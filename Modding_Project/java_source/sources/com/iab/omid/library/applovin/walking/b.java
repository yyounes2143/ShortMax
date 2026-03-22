package com.iab.omid.library.applovin.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.applovin.walking.async.b;
import com.iab.omid.library.applovin.walking.async.d;
import com.iab.omid.library.applovin.walking.async.e;
import com.iab.omid.library.applovin.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0323b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f22565a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.applovin.walking.async.c f22566b;

    public b(com.iab.omid.library.applovin.walking.async.c cVar) {
        this.f22566b = cVar;
    }

    @Override // com.iab.omid.library.applovin.walking.async.b.InterfaceC0323b
    @VisibleForTesting
    public JSONObject a() {
        return this.f22565a;
    }

    public void b() {
        this.f22566b.b(new d(this));
    }

    @Override // com.iab.omid.library.applovin.walking.async.b.InterfaceC0323b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f22565a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22566b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22566b.b(new e(this, hashSet, jSONObject, j10));
    }
}
