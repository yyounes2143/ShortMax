package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.GuardedBy;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ConfigStorageClient.java */
@AnyThread
/* loaded from: classes5.dex */
public class t {
    @GuardedBy("ConfigStorageClient.class")

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, t> f21484c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Context f21485a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21486b;

    private t(Context context, String str) {
        this.f21485a = context;
        this.f21486b = str;
    }

    public static synchronized t c(Context context, String str) {
        t tVar;
        synchronized (t.class) {
            try {
                Map<String, t> map = f21484c;
                if (!map.containsKey(str)) {
                    map.put(str, new t(context, str));
                }
                tVar = map.get(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tVar;
    }

    public synchronized Void a() {
        this.f21485a.deleteFile(this.f21486b);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f21486b;
    }

    public synchronized g d() throws IOException {
        FileInputStream fileInputStream;
        Throwable th2;
        try {
            fileInputStream = this.f21485a.openFileInput(this.f21486b);
        } catch (FileNotFoundException | JSONException unused) {
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th2 = th3;
        }
        try {
            int available = fileInputStream.available();
            byte[] bArr = new byte[available];
            fileInputStream.read(bArr, 0, available);
            g b10 = g.b(new JSONObject(new String(bArr, "UTF-8")));
            fileInputStream.close();
            return b10;
        } catch (FileNotFoundException | JSONException unused2) {
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return null;
        } catch (Throwable th4) {
            th2 = th4;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th2;
        }
    }

    public synchronized Void e(g gVar) throws IOException {
        FileOutputStream openFileOutput = this.f21485a.openFileOutput(this.f21486b, 0);
        openFileOutput.write(gVar.toString().getBytes("UTF-8"));
        openFileOutput.close();
        return null;
    }
}
