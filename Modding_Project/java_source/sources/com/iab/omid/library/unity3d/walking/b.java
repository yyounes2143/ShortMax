package com.iab.omid.library.unity3d.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.unity3d.walking.async.b;
import com.iab.omid.library.unity3d.walking.async.d;
import com.iab.omid.library.unity3d.walking.async.e;
import com.iab.omid.library.unity3d.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0343b {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f23229a;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.unity3d.walking.async.c f23230b;

    public b(com.iab.omid.library.unity3d.walking.async.c cVar) {
        this.f23230b = cVar;
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b.InterfaceC0343b
    @VisibleForTesting
    public JSONObject a() {
        return this.f23229a;
    }

    public void b() {
        this.f23230b.b(new d(this));
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b.InterfaceC0343b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f23229a = jSONObject;
    }

    public void b(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f23230b.b(new f(this, hashSet, jSONObject, j10));
    }

    public void a(JSONObject jSONObject, HashSet<String> hashSet, long j10) {
        this.f23230b.b(new e(this, hashSet, jSONObject, j10));
    }
}
