package com.iab.omid.library.bytedance2.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.bytedance2.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0331b interfaceC0331b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0331b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.bytedance2.internal.c c10 = com.iab.omid.library.bytedance2.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : c10.b()) {
                if (this.f22821c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().b(str, this.f22823e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.bytedance2.utils.c.h(this.f22822d, this.f22825b.a())) {
            return null;
        }
        this.f22825b.a(this.f22822d);
        return this.f22822d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.bytedance2.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
