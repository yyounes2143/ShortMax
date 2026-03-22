package com.iab.omid.library.inmobi.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.inmobi.walking.async.b;
import com.iab.omid.library.inmobi.walking.async.d;
import com.iab.omid.library.inmobi.walking.async.e;
import com.iab.omid.library.inmobi.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0335b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f22966a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.inmobi.walking.async.c f22967b;

    public b(com.iab.omid.library.inmobi.walking.async.c cVar) {
        this.f22967b = cVar;
    }

    @Override // com.iab.omid.library.inmobi.walking.async.b.InterfaceC0335b
    @VisibleForTesting
    public JSONObject a() {
        return this.f22966a;
    }

    public void b() {
        this.f22967b.b(new d(this));
    }

    @Override // com.iab.omid.library.inmobi.walking.async.b.InterfaceC0335b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f22966a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22967b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f22967b.b(new e(this, hashSet, jSONObject, j10));
    }
}
