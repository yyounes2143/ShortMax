package com.applovin.impl.sdk.network;

import android.text.TextUtils;
import com.applovin.impl.g5;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.m;
import com.applovin.impl.sdk.o;
import com.applovin.impl.v4;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class c extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final b f9900g;

    /* renamed from: h  reason: collision with root package name */
    private final o f9901h;

    /* renamed from: i  reason: collision with root package name */
    private AtomicBoolean f9902i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f9903j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, k kVar) {
        super("PersistentPostbackQueueSaveTask", kVar);
        this.f9902i = new AtomicBoolean();
        this.f9903j = false;
        this.f9900g = bVar;
        this.f9901h = kVar.O();
    }

    public List a(int i10) {
        ArrayList arrayList = new ArrayList();
        m H = this.f7960a.H();
        if (!H.b("persistent_postback_cache.json", k.o())) {
            o.h("PersistentPostbackQueueSaveTask", "Postbacks queue file does not exist.");
            return arrayList;
        }
        File a10 = H.a("persistent_postback_cache.json", k.o());
        String f10 = H.f(a10);
        if (TextUtils.isEmpty(f10)) {
            o.h("PersistentPostbackQueueSaveTask", "Postbacks queue file has no content.");
            return arrayList;
        }
        boolean z10 = false;
        try {
            JSONArray jSONArray = new JSONObject(f10).getJSONArray("pb");
            if (o.a()) {
                this.f9901h.a("PersistentPostbackQueueSaveTask", "Deserializing " + jSONArray.length() + " postback(s)...");
            }
            arrayList.ensureCapacity(Math.max(1, jSONArray.length()));
            Integer num = (Integer) this.f7960a.a(v4.G2);
            for (int i11 = 0; i11 < jSONArray.length() && arrayList.size() < i10; i11++) {
                d dVar = new d(jSONArray.getJSONObject(i11), this.f7960a);
                if (dVar.c() < num.intValue()) {
                    arrayList.add(dVar);
                } else {
                    o.h("PersistentPostbackQueueSaveTask", "Skipping deserialization because maximum attempt count exceeded for postback: " + dVar);
                }
            }
            if (o.a()) {
                this.f9901h.a("PersistentPostbackQueueSaveTask", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
            }
        } catch (Throwable th2) {
            try {
                o.c("PersistentPostbackQueueSaveTask", "Failed to load postback queue", th2);
                try {
                    this.f7960a.E().a("PersistentPostbackQueueSaveTask", "deserializePostbackQueue", th2);
                    if (((Boolean) this.f7960a.a(v4.N0)).booleanValue()) {
                        H.a(a10, "removeAfterDeserializationFail");
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z10 = true;
                    if (z10 && ((Boolean) this.f7960a.a(v4.N0)).booleanValue()) {
                        H.a(a10, "removeAfterDeserializationFail");
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        this.f9903j = arrayList.isEmpty();
        return arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        a(this.f9900g.d());
    }

    private void a(List list) {
        if (!(this.f9903j && list.isEmpty()) && this.f9902i.compareAndSet(false, true)) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                try {
                    jSONArray.put(dVar.q());
                } catch (Throwable th2) {
                    o.c("PersistentPostbackQueueSaveTask", "Unable to serialize postback to JSON: " + dVar, th2);
                    this.f7960a.E().a("PersistentPostbackQueueSaveTask", "serializePostback", th2);
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pb", jSONArray);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(jSONObject.toString().getBytes("UTF-8"));
                m H = this.f7960a.H();
                if (H.a((InputStream) byteArrayInputStream, H.a("persistent_postback_cache.json", k.o()), true)) {
                    if (o.a()) {
                        this.f9901h.a("PersistentPostbackQueueSaveTask", "Exported postback queue to disk.");
                    }
                } else if (o.a()) {
                    this.f9901h.b("PersistentPostbackQueueSaveTask", "Unable to export postback queue to disk.");
                }
            } catch (Throwable th3) {
                o.c("PersistentPostbackQueueSaveTask", "Unable to export postbacks to disk: " + jSONArray, th3);
                this.f7960a.E().a("PersistentPostbackQueueSaveTask", "serializePostbackQueue", th3);
            }
            this.f9902i.set(false);
        }
    }
}
