package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import e9.i;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import u8.h;
import u8.o;
import w7.a0;
import w7.g;
import w7.q;
import w7.t;
/* compiled from: DefaultHeartBeatController.java */
/* loaded from: classes5.dex */
public class a implements h, HeartBeatInfo {

    /* renamed from: a  reason: collision with root package name */
    private final w8.b<f> f20993a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f20994b;

    /* renamed from: c  reason: collision with root package name */
    private final w8.b<i> f20995c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<u8.f> f20996d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f20997e;

    private a(final Context context, final String str, Set<u8.f> set, w8.b<i> bVar, Executor executor) {
        this(new t(new w8.b() { // from class: u8.e
            @Override // w8.b
            public final Object get() {
                com.google.firebase.heartbeatinfo.f j10;
                j10 = com.google.firebase.heartbeatinfo.a.j(context, str);
                return j10;
            }
        }), set, executor, bVar, context);
    }

    @NonNull
    public static w7.c<a> g() {
        final a0 a10 = a0.a(o7.a.class, Executor.class);
        return w7.c.d(a.class, h.class, HeartBeatInfo.class).b(q.k(Context.class)).b(q.k(com.google.firebase.f.class)).b(q.o(u8.f.class)).b(q.m(i.class)).b(q.l(a10)).f(new g() { // from class: u8.d
            @Override // w7.g
            public final Object a(w7.d dVar) {
                com.google.firebase.heartbeatinfo.a h10;
                h10 = com.google.firebase.heartbeatinfo.a.h(a0.this, dVar);
                return h10;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a h(a0 a0Var, w7.d dVar) {
        return new a((Context) dVar.a(Context.class), ((com.google.firebase.f) dVar.a(com.google.firebase.f.class)).q(), dVar.b(u8.f.class), dVar.e(i.class), (Executor) dVar.h(a0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i() throws Exception {
        String byteArrayOutputStream;
        synchronized (this) {
            try {
                f fVar = this.f20993a.get();
                List<o> g10 = fVar.g();
                fVar.f();
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < g10.size(); i10++) {
                    o oVar = g10.get(i10);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", oVar.c());
                    jSONObject.put("dates", new JSONArray((Collection) oVar.b()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                gZIPOutputStream.close();
                base64OutputStream.close();
                byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return byteArrayOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f j(Context context, String str) {
        return new f(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void k() throws Exception {
        synchronized (this) {
            this.f20993a.get().s(System.currentTimeMillis(), this.f20995c.get().getUserAgent());
        }
        return null;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    @NonNull
    public synchronized HeartBeatInfo.HeartBeat a(@NonNull String str) {
        long currentTimeMillis = System.currentTimeMillis();
        f fVar = this.f20993a.get();
        if (fVar.q(currentTimeMillis)) {
            fVar.o();
            return HeartBeatInfo.HeartBeat.GLOBAL;
        }
        return HeartBeatInfo.HeartBeat.NONE;
    }

    @Override // u8.h
    public Task<String> b() {
        if (!UserManagerCompat.isUserUnlocked(this.f20994b)) {
            return Tasks.forResult("");
        }
        return Tasks.call(this.f20997e, new Callable() { // from class: u8.b
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String i10;
                i10 = com.google.firebase.heartbeatinfo.a.this.i();
                return i10;
            }
        });
    }

    public Task<Void> l() {
        if (this.f20996d.size() <= 0) {
            return Tasks.forResult(null);
        }
        if (!UserManagerCompat.isUserUnlocked(this.f20994b)) {
            return Tasks.forResult(null);
        }
        return Tasks.call(this.f20997e, new Callable() { // from class: u8.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void k10;
                k10 = com.google.firebase.heartbeatinfo.a.this.k();
                return k10;
            }
        });
    }

    @VisibleForTesting
    a(w8.b<f> bVar, Set<u8.f> set, Executor executor, w8.b<i> bVar2, Context context) {
        this.f20993a = bVar;
        this.f20996d = set;
        this.f20997e = executor;
        this.f20995c = bVar2;
        this.f20994b = context;
    }
}
