package com.iab.omid.library.inmobi.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.inmobi.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0335b interfaceC0335b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0335b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.inmobi.internal.c c10 = com.iab.omid.library.inmobi.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.inmobi.adsession.a aVar : c10.b()) {
                if (this.f22957c.contains(aVar.c())) {
                    aVar.d().b(str, this.f22959e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.inmobi.utils.c.h(this.f22958d, this.f22961b.a())) {
            return null;
        }
        this.f22961b.a(this.f22958d);
        return this.f22958d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.inmobi.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
