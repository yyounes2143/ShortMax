package com.iab.omid.library.unity3d.walking.async;

import com.iab.omid.library.unity3d.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class e extends a {
    public e(b.InterfaceC0343b interfaceC0343b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0343b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.unity3d.internal.c c10 = com.iab.omid.library.unity3d.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : c10.b()) {
                if (this.f23220c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().a(str, this.f23222e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        return this.f23221d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.unity3d.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        b(str);
        super.onPostExecute(str);
    }
}
