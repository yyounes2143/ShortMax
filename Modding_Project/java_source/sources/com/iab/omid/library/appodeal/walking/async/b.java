package com.iab.omid.library.appodeal.walking.async;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class b extends AsyncTask<Object, Void, String> {

    /* renamed from: a  reason: collision with root package name */
    private a f22695a;

    /* renamed from: b  reason: collision with root package name */
    protected final InterfaceC0327b f22696b;

    /* loaded from: classes5.dex */
    public interface a {
        void a(b bVar);
    }

    /* renamed from: com.iab.omid.library.appodeal.walking.async.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0327b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0327b interfaceC0327b) {
        this.f22696b = interfaceC0327b;
    }

    public void a(a aVar) {
        this.f22695a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        a aVar = this.f22695a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
