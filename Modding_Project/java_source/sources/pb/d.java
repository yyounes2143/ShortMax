package pb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.AsyncTask;
import java.io.InputStream;
/* loaded from: classes5.dex */
public class d extends AsyncTask<Context, Integer, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64847a = "d";

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f64848b = false;

    @SuppressLint({"NewApi"})
    public static void b() {
        if (e()) {
            f.e(f64847a, "checkUpgradeBks, execute check task");
            new d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, b.a());
        }
    }

    private static boolean e() {
        if (f64848b) {
            return false;
        }
        Context a10 = b.a();
        if (a10 == null) {
            f.f(f64847a, "checkUpgradeBks, context is null");
            return false;
        }
        f64848b = true;
        long a11 = h.a("lastCheckTime", 0L, a10);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - a11 > 432000000) {
            h.d("lastCheckTime", currentTimeMillis, a10);
            return true;
        }
        f.e(f64847a, "checkUpgradeBks, ignore");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public Boolean doInBackground(Context... contextArr) {
        InputStream inputStream;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            inputStream = a.m(contextArr[0]);
        } catch (Exception e10) {
            String str = f64847a;
            f.d(str, "doInBackground: exception : " + e10.getMessage());
            inputStream = null;
        }
        String str2 = f64847a;
        f.b(str2, "doInBackground: get bks from hms tss cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        if (inputStream != null) {
            e.b(inputStream);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: c */
    public void onPostExecute(Boolean bool) {
        if (bool.booleanValue()) {
            f.e(f64847a, "onPostExecute: upate done");
        } else {
            f.d(f64847a, "onPostExecute: upate failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: d */
    public void onProgressUpdate(Integer... numArr) {
        f.e(f64847a, "onProgressUpdate");
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        f.b(f64847a, "onPreExecute");
    }
}
