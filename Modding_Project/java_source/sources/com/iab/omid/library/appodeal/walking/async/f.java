package com.iab.omid.library.appodeal.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.appodeal.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0327b interfaceC0327b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0327b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.appodeal.internal.c c10 = com.iab.omid.library.appodeal.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.appodeal.adsession.a aVar : c10.b()) {
                if (this.f22692c.contains(aVar.c())) {
                    aVar.d().b(str, this.f22694e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.appodeal.utils.c.h(this.f22693d, this.f22696b.a())) {
            return null;
        }
        this.f22696b.a(this.f22693d);
        return this.f22693d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.appodeal.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
