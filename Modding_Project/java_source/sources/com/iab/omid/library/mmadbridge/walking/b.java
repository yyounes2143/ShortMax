package com.iab.omid.library.mmadbridge.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.mmadbridge.walking.async.b;
import com.iab.omid.library.mmadbridge.walking.async.d;
import com.iab.omid.library.mmadbridge.walking.async.e;
import com.iab.omid.library.mmadbridge.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0339b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f23101a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.mmadbridge.walking.async.c f23102b;

    public b(com.iab.omid.library.mmadbridge.walking.async.c cVar) {
        this.f23102b = cVar;
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b.InterfaceC0339b
    @VisibleForTesting
    public JSONObject a() {
        return this.f23101a;
    }

    public void b() {
        this.f23102b.b(new d(this));
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b.InterfaceC0339b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f23101a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f23102b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f23102b.b(new e(this, hashSet, jSONObject, j10));
    }
}
