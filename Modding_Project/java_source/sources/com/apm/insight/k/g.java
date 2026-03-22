package com.apm.insight.k;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.Npth;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.p;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
/* compiled from: EventUploadQueue.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentHashMap<Object, ConcurrentLinkedQueue<com.apm.insight.entity.c>> f7027a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<Object, HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>>> f7028b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static volatile g f7029c;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f7031e = false;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f7032f = new Runnable() { // from class: com.apm.insight.k.g.1
        @Override // java.lang.Runnable
        public final void run() {
            if (Npth.isStopUpload()) {
                return;
            }
            if (!g.f7028b.isEmpty() && l.e()) {
                g.f();
            }
            g.this.c();
            g.this.f7030d.a(g.this.f7032f, 30000L);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final p f7030d = m.a();

    private g() {
    }

    private static void c(Object obj, com.apm.insight.entity.c cVar) {
        ConcurrentLinkedQueue<com.apm.insight.entity.c> concurrentLinkedQueue;
        try {
            String string = cVar.c().getString("log_type");
            HashMap<Object, HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>>> hashMap = f7028b;
            synchronized (hashMap) {
                HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>> hashMap2 = hashMap.get(string);
                if (hashMap2 == null) {
                    hashMap2 = new HashMap<>();
                    hashMap.put(obj, hashMap2);
                }
                concurrentLinkedQueue = hashMap2.get(string);
                if (concurrentLinkedQueue == null) {
                    concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                    hashMap2.put(string, concurrentLinkedQueue);
                }
            }
            concurrentLinkedQueue.add(cVar);
            if (concurrentLinkedQueue.size() > 100) {
                concurrentLinkedQueue.poll();
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        HashMap hashMap;
        HashMap<Object, HashMap<String, ConcurrentLinkedQueue<com.apm.insight.entity.c>>> hashMap2 = f7028b;
        synchronized (hashMap2) {
            hashMap = new HashMap(hashMap2);
            hashMap2.clear();
        }
        if (!com.apm.insight.runtime.a.a()) {
            com.apm.insight.a.a("EventUploadQueue", "ApmConfig not inited, clear cache.");
            return;
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            for (Map.Entry entry2 : ((HashMap) entry.getValue()).entrySet()) {
                String str = (String) entry2.getKey();
                ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) entry2.getValue();
                if (concurrentLinkedQueue != null && (!com.apm.insight.runtime.a.a() || com.apm.insight.runtime.a.b(entry.getKey()))) {
                    while (!concurrentLinkedQueue.isEmpty()) {
                        try {
                            com.apm.insight.entity.c cVar = (com.apm.insight.entity.c) concurrentLinkedQueue.poll();
                            if (cVar != null) {
                                b(entry.getKey(), cVar);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    com.apm.insight.a.a("EventUploadQueue", "logType " + str + " not sampled");
                }
            }
        }
    }

    private static void g() {
        if (l.e() && !Npth.isStopUpload()) {
            try {
                m.a().a(new Runnable() { // from class: com.apm.insight.k.g.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a().c();
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    public static g a() {
        if (f7029c == null) {
            synchronized (g.class) {
                try {
                    if (f7029c == null) {
                        f7029c = new g();
                    }
                } finally {
                }
            }
        }
        return f7029c;
    }

    private static void b(Object obj, com.apm.insight.entity.c cVar) {
        ConcurrentHashMap<Object, ConcurrentLinkedQueue<com.apm.insight.entity.c>> concurrentHashMap;
        ConcurrentLinkedQueue<com.apm.insight.entity.c> concurrentLinkedQueue;
        synchronized (obj) {
            try {
                concurrentHashMap = f7027a;
                concurrentLinkedQueue = concurrentHashMap.get(obj);
                if (concurrentLinkedQueue == null) {
                    concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                    concurrentHashMap.put(obj, concurrentLinkedQueue);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        concurrentLinkedQueue.add(cVar);
        int size = concurrentHashMap.size();
        boolean z10 = size >= 30;
        com.apm.insight.a.b((Object) "[enqueue] size=".concat(String.valueOf(size)));
        if (z10) {
            g();
        }
    }

    public static void a(@NonNull com.apm.insight.entity.c cVar) {
        a(com.apm.insight.d.a(), cVar);
    }

    public static void a(@Nullable final Object obj, @NonNull final com.apm.insight.entity.c cVar) {
        String str;
        Handler a10 = m.a().a();
        if (a10 != null && a10.getLooper() == Looper.myLooper()) {
            if (obj == null) {
                obj = com.apm.insight.d.a();
            }
            if (!l.e()) {
                com.apm.insight.a.a("EventUploadQueue", "enqueue before init.");
                c(obj, cVar);
                return;
            }
            if (!com.apm.insight.runtime.a.a(obj)) {
                a.b();
            }
            f();
            try {
                str = cVar.c().getString("log_type");
            } catch (JSONException e10) {
                e10.printStackTrace();
                str = null;
            }
            if (!TextUtils.isEmpty(str) && com.apm.insight.runtime.a.b(obj)) {
                com.apm.insight.a.a("EventUploadQueue", "logType " + str + " enqueued");
                b(obj, cVar);
                return;
            }
            com.apm.insight.a.a("EventUploadQueue", "logType " + str + " not sampled");
            return;
        }
        m.a().a(new Runnable() { // from class: com.apm.insight.k.g.2
            @Override // java.lang.Runnable
            public final void run() {
                g.a(obj, cVar);
            }
        });
    }

    public final void b() {
        if (f7027a.isEmpty()) {
            this.f7030d.a(this.f7032f, 30000L);
        } else {
            this.f7030d.a(this.f7032f);
        }
    }

    public final void c() {
        synchronized (this.f7030d) {
            try {
                if (this.f7031e) {
                    return;
                }
                this.f7031e = true;
                LinkedList linkedList = new LinkedList();
                for (Map.Entry<Object, ConcurrentLinkedQueue<com.apm.insight.entity.c>> entry : f7027a.entrySet()) {
                    ConcurrentLinkedQueue<com.apm.insight.entity.c> value = entry.getValue();
                    Object key = entry.getKey();
                    while (!value.isEmpty()) {
                        for (int i10 = 0; i10 < 30; i10++) {
                            try {
                                if (value.isEmpty()) {
                                    break;
                                }
                                linkedList.add(value.poll());
                            } catch (Throwable th2) {
                                com.apm.insight.a.b(th2);
                            }
                        }
                        if (linkedList.isEmpty()) {
                            break;
                        }
                        com.apm.insight.entity.a a10 = com.apm.insight.runtime.a.f.a().a(linkedList, com.apm.insight.entity.b.a(key));
                        if (a10 != null) {
                            com.apm.insight.a.a((Object) "upload events");
                            d.a().b(a10.c());
                        }
                        linkedList.clear();
                    }
                }
                this.f7031e = false;
            } finally {
            }
        }
    }
}
