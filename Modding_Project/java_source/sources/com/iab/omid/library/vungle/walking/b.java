package com.iab.omid.library.vungle.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.walking.async.b;
import com.iab.omid.library.vungle.walking.async.d;
import com.iab.omid.library.vungle.walking.async.e;
import com.iab.omid.library.vungle.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0347b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f23364a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.vungle.walking.async.c f23365b;

    public b(com.iab.omid.library.vungle.walking.async.c cVar) {
        this.f23365b = cVar;
    }

    @Override // com.iab.omid.library.vungle.walking.async.b.InterfaceC0347b
    @VisibleForTesting
    public JSONObject a() {
        return this.f23364a;
    }

    public void b() {
        this.f23365b.b(new d(this));
    }

    @Override // com.iab.omid.library.vungle.walking.async.b.InterfaceC0347b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f23364a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f23365b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f23365b.b(new e(this, hashSet, jSONObject, j10));
    }
}
