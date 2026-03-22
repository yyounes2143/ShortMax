package com.iab.omid.library.vungle.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.vungle.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0347b interfaceC0347b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0347b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.vungle.internal.c c10 = com.iab.omid.library.vungle.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.vungle.adsession.a aVar : c10.b()) {
                if (this.f23355c.contains(aVar.c())) {
                    aVar.d().b(str, this.f23357e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.vungle.utils.c.h(this.f23356d, this.f23359b.a())) {
            return null;
        }
        this.f23359b.a(this.f23356d);
        return this.f23356d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.vungle.walking.async.b, android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
