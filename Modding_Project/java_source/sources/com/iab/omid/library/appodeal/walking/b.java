package com.iab.omid.library.appodeal.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.appodeal.walking.async.b;
import com.iab.omid.library.appodeal.walking.async.d;
import com.iab.omid.library.appodeal.walking.async.e;
import com.iab.omid.library.appodeal.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0327b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f22701a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.walking.async.c f22702b;

    public b(com.iab.omid.library.appodeal.walking.async.c cVar) {
        this.f22702b = cVar;
    }

    @Override // com.iab.omid.library.appodeal.walking.async.b.InterfaceC0327b
    @VisibleForTesting
    public JSONObject a() {
        return this.f22701a;
    }

    public void b() {
        this.f22702b.b(new d(this));
    }

    @Override // com.iab.omid.library.appodeal.walking.async.b.InterfaceC0327b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f22701a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22702b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22702b.b(new e(this, hashSet, jSONObject, j10));
    }
}
