package com.iab.omid.library.bytedance2.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.bytedance2.walking.async.b;
import com.iab.omid.library.bytedance2.walking.async.d;
import com.iab.omid.library.bytedance2.walking.async.e;
import com.iab.omid.library.bytedance2.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0331b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f22830a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.walking.async.c f22831b;

    public b(com.iab.omid.library.bytedance2.walking.async.c cVar) {
        this.f22831b = cVar;
    }

    @Override // com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0331b
    @VisibleForTesting
    public JSONObject a() {
        return this.f22830a;
    }

    public void b() {
        this.f22831b.b(new d(this));
    }

    @Override // com.iab.omid.library.bytedance2.walking.async.b.InterfaceC0331b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f22830a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22831b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22831b.b(new e(this, hashSet, jSONObject, j10));
    }
}
