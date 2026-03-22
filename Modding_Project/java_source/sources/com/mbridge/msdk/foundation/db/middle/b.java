package com.mbridge.msdk.foundation.db.middle;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.k;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ReplaceTempDaoMiddle.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.buffer.a f26797a;

    /* renamed from: b  reason: collision with root package name */
    private k f26798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaceTempDaoMiddle.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f26799a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.buffer.a f26800b;

        a(boolean z10, com.mbridge.msdk.foundation.same.buffer.a aVar) {
            this.f26799a = z10;
            this.f26800b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f26799a && b.this.f26798b != null) {
                for (String str : this.f26800b.a()) {
                    b.this.f26798b.a(str, b.this.f26797a.a(str));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReplaceTempDaoMiddle.java */
    /* renamed from: com.mbridge.msdk.foundation.db.middle.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0367b {

        /* renamed from: a  reason: collision with root package name */
        private static b f26802a = new b(null);
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    private b() {
        this.f26797a = new com.mbridge.msdk.foundation.same.buffer.a(1000);
        try {
            k a10 = k.a(g.a(c.m().d()));
            this.f26798b = a10;
            a(a10.a(), false);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void a(JSONObject jSONObject, boolean z10) {
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            com.mbridge.msdk.foundation.same.buffer.a aVar = new com.mbridge.msdk.foundation.same.buffer.a(100);
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                this.f26797a.a(next, optJSONObject);
                aVar.a(next, optJSONObject);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(z10, aVar));
        }
    }

    public JSONArray b() {
        return new JSONArray((Collection) this.f26797a.a());
    }

    public static b a() {
        return C0367b.f26802a;
    }

    public JSONObject a(String str) {
        k kVar;
        JSONObject a10 = this.f26797a.a(str);
        if (a10 == null && (kVar = this.f26798b) != null) {
            JSONObject b10 = kVar.b(str);
            if (b10 != null) {
                this.f26797a.a(str, b10);
            }
            return b10;
        }
        return a10;
    }
}
