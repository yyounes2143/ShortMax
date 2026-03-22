package com.apm.insight.k;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.entity.b;
import com.apm.insight.k.c;
import com.apm.insight.l.n;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.o;
import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: CrashFileCollector.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f6968b;

    /* renamed from: a  reason: collision with root package name */
    private Context f6969a;

    /* renamed from: f  reason: collision with root package name */
    private C0100b f6973f;

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, C0100b> f6974g;

    /* renamed from: c  reason: collision with root package name */
    private List<File> f6970c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<File> f6971d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private int f6972e = -1;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f6975h = false;

    /* renamed from: i  reason: collision with root package name */
    private Runnable f6976i = new Runnable() { // from class: com.apm.insight.k.b.1
        @Override // java.lang.Runnable
        public final void run() {
            b.this.f();
        }
    };

    /* renamed from: j  reason: collision with root package name */
    private Runnable f6977j = new Runnable() { // from class: com.apm.insight.k.b.2
        @Override // java.lang.Runnable
        public final void run() {
            b.this.d();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashFileCollector.java */
    /* renamed from: com.apm.insight.k.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0100b {

        /* renamed from: a  reason: collision with root package name */
        String f6992a;

        /* renamed from: d  reason: collision with root package name */
        a f6995d;

        /* renamed from: e  reason: collision with root package name */
        a f6996e;

        /* renamed from: b  reason: collision with root package name */
        List<a> f6993b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        List<a> f6994c = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        boolean f6997f = false;

        /* renamed from: g  reason: collision with root package name */
        int f6998g = 0;

        C0100b(String str) {
            this.f6992a = str;
        }
    }

    private b(Context context) {
        this.f6969a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (!this.f6975h && this.f6974g != null) {
            if (!com.apm.insight.l.k.b(this.f6969a)) {
                e();
            }
            boolean z10 = false;
            if (this.f6972e == -1) {
                if (com.apm.insight.runtime.a.a() && com.apm.insight.runtime.a.f()) {
                    this.f6972e = 1;
                } else {
                    this.f6972e = 0;
                }
            }
            if (this.f6972e == 1) {
                z10 = true;
            }
            com.apm.insight.runtime.f fVar = new com.apm.insight.runtime.f(this.f6969a);
            for (C0100b c0100b : this.f6974g.values()) {
                b(c0100b, z10, fVar);
            }
            for (C0100b c0100b2 : this.f6974g.values()) {
                a(c0100b2, z10, fVar);
            }
            for (C0100b c0100b3 : this.f6974g.values()) {
                com.apm.insight.l.f.a(com.apm.insight.l.j.a(this.f6969a, c0100b3.f6992a));
            }
            fVar.a();
            com.apm.insight.runtime.b.a();
            e();
        }
    }

    private void e() {
        this.f6975h = true;
        this.f6974g = null;
        NativeImpl.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f6975h) {
            return;
        }
        if (com.apm.insight.l.k.b(this.f6969a) && (System.currentTimeMillis() - com.apm.insight.e.j() > 5000 || !com.apm.insight.e.i().isApmExists() || Npth.hasCrash())) {
            d();
        } else {
            m.a().a(this.f6976i, 5000L);
        }
    }

    private void g() {
        File[] listFiles = com.apm.insight.l.j.i(this.f6969a).listFiles();
        if (listFiles == null) {
            return;
        }
        for (int i10 = 0; i10 < listFiles.length && i10 < 5; i10++) {
            File file = listFiles[i10];
            if (file.getName().endsWith(".atmp")) {
                com.apm.insight.a.a.a();
                file.getAbsolutePath();
            } else {
                try {
                    com.apm.insight.f.b c10 = com.apm.insight.l.f.c(file.getAbsolutePath());
                    if (c10 != null) {
                        if (c10.b() != null) {
                            c10.b().put("upload_scene", "launch_scan");
                        }
                        if (e.a(e.d(), c10.e(), c10.d(), c10.f(), c10.g())) {
                            com.apm.insight.l.f.a(file);
                            String c11 = c10.c();
                            if (!TextUtils.isEmpty(c11)) {
                                com.apm.insight.l.f.a(new File(c11));
                            }
                        }
                    } else {
                        com.apm.insight.l.f.a(file);
                    }
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        }
    }

    public static b a() {
        if (f6968b == null) {
            synchronized (b.class) {
                try {
                    if (f6968b == null) {
                        f6968b = new b(com.apm.insight.e.g());
                    }
                } finally {
                }
            }
        }
        return f6968b;
    }

    public final void b() {
        try {
            if (!this.f6975h && com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                m.a().a(this.f6977j);
            }
        } catch (Throwable unused) {
        }
    }

    public final boolean c() {
        return this.f6975h;
    }

    private void b(HashMap<String, C0100b> hashMap) {
        File[] listFiles = com.apm.insight.l.j.d(this.f6969a).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        for (int i10 = 0; i10 < listFiles.length && i10 < 5; i10++) {
            File file = listFiles[i10];
            try {
                if (!file.isDirectory()) {
                    com.apm.insight.l.f.a(file);
                } else if (file.getName().endsWith(RequestConfiguration.MAX_AD_CONTENT_RATING_G)) {
                    String name = file.getName();
                    C0100b c0100b = hashMap.get(name);
                    if (c0100b == null) {
                        c0100b = new C0100b(name);
                        hashMap.put(name, c0100b);
                    }
                    c0100b.f6994c.add(new a(file, CrashType.NATIVE));
                } else {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                com.apm.insight.l.f.a(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashFileCollector.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        File f6987a;

        /* renamed from: b  reason: collision with root package name */
        long f6988b;

        /* renamed from: c  reason: collision with root package name */
        long f6989c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        CrashType f6990d;

        /* renamed from: e  reason: collision with root package name */
        String f6991e;

        a(File file, @Nullable CrashType crashType) {
            this.f6988b = -1L;
            this.f6989c = -1L;
            this.f6987a = file;
            this.f6990d = crashType;
            this.f6991e = file.getName();
        }

        a(File file, long j10, @Nullable CrashType crashType) {
            this.f6989c = -1L;
            this.f6987a = file;
            this.f6988b = j10;
            this.f6990d = crashType;
            this.f6991e = file.getName();
        }
    }

    public final void a(boolean z10) {
        if (!Npth.isStopUpload() && z10) {
            if (this.f6973f == null) {
                this.f6973f = new C0100b("old_uuid");
                HashMap<String, C0100b> hashMap = new HashMap<>();
                this.f6974g = hashMap;
                a(hashMap);
                a(this.f6974g, this.f6973f);
                com.apm.insight.l.f.a(com.apm.insight.l.j.b(this.f6969a));
                b(this.f6974g);
                b(this.f6973f, true, null);
                a(this.f6973f, true, null);
                this.f6973f = null;
                if (this.f6974g.isEmpty()) {
                    e();
                } else {
                    f();
                }
            }
            g();
            com.apm.insight.a.c();
        }
    }

    private void b(final C0100b c0100b, boolean z10, @Nullable com.apm.insight.runtime.f fVar) {
        Iterator<a> it;
        boolean z11;
        JSONObject a10;
        a aVar;
        if (c0100b.f6994c.size() <= 1 && c0100b.f6994c.isEmpty()) {
            c0100b.f6996e = c0100b.f6995d;
            return;
        }
        boolean b10 = com.apm.insight.l.k.b(this.f6969a);
        c0100b.f6996e = c0100b.f6995d;
        com.apm.insight.nativecrash.a aVar2 = new com.apm.insight.nativecrash.a(this.f6969a);
        Iterator<a> it2 = c0100b.f6994c.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            final File file = next.f6987a;
            try {
                aVar2.a(file);
                a10 = a(aVar2);
            } catch (Throwable th2) {
                th = th2;
                it = it2;
            }
            if (a10 != null && a10.length() != 0) {
                if (a10.length() != 0) {
                    if (!z10) {
                        long optLong = a10.optLong("crash_time");
                        try {
                            aVar = c0100b.f6996e;
                        } catch (Throwable th3) {
                            th = th3;
                            it = it2;
                            z11 = b10;
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                            com.apm.insight.l.f.a(file);
                            b10 = z11;
                            it2 = it;
                        }
                        if (aVar == null) {
                            c0100b.f6996e = next;
                            c0100b.f6997f = true;
                            if (fVar == null || fVar.a(DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
                                it = it2;
                                z11 = b10;
                            } else {
                                aVar2.i();
                            }
                        } else {
                            it = it2;
                            try {
                            } catch (Throwable th4) {
                                th = th4;
                                z11 = b10;
                            }
                            if (c0100b.f6997f) {
                                z11 = b10;
                            } else {
                                z11 = b10;
                                try {
                                } catch (Throwable th5) {
                                    th = th5;
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                    com.apm.insight.l.f.a(file);
                                    b10 = z11;
                                    it2 = it;
                                }
                                if (optLong < aVar.f6988b) {
                                    c0100b.f6996e = next;
                                    if (fVar != null && !fVar.a(DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
                                        aVar2.i();
                                        b10 = z11;
                                        it2 = it;
                                    } else {
                                        a(file);
                                        c0100b.f6997f = true;
                                    }
                                }
                            }
                            com.apm.insight.entity.a.a(a10, "filters", TTVideoEngineInterface.PLAY_API_KEY_APPID, String.valueOf(a10.optJSONObject("header").opt(TTVideoEngineInterface.PLAY_API_KEY_APPID)));
                            a10.optJSONObject("header").put(TTVideoEngineInterface.PLAY_API_KEY_APPID, 2010);
                        }
                    } else {
                        it = it2;
                        z11 = b10;
                        if (fVar != null && !fVar.a(DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
                            aVar2.i();
                        }
                    }
                    com.apm.insight.entity.a.a(a10, "filters", "start_uuid", c0100b.f6992a);
                    com.apm.insight.entity.a.a(a10, "filters", "crash_thread_name", a10.optString("crash_thread_name", "unknown"));
                    if (z11) {
                        try {
                            c.a aVar3 = new c.a(a10, CrashType.NATIVE);
                            com.apm.insight.entity.b.a(a10, com.apm.insight.entity.b.a(aVar3.c(), aVar3.a(), o.a().b(aVar3.b() == -1 ? System.currentTimeMillis() : aVar3.b())), new b.a() { // from class: com.apm.insight.k.b.4
                                @Override // com.apm.insight.entity.b.a
                                public final void a(JSONObject jSONObject) {
                                    d.a();
                                    d.a(jSONObject, file, com.apm.insight.l.j.a(b.this.f6969a, c0100b.f6992a));
                                }
                            });
                            if (!aVar2.i()) {
                                aVar2.f();
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                            com.apm.insight.l.f.a(file);
                            b10 = z11;
                            it2 = it;
                        }
                    }
                    c.a(CrashType.NATIVE, a10);
                } else {
                    it = it2;
                    z11 = b10;
                }
            } else {
                it = it2;
                z11 = b10;
                aVar2.i();
            }
            b10 = z11;
            it2 = it;
        }
    }

    private void a(HashMap<String, C0100b> hashMap) {
        File[] listFiles = com.apm.insight.l.j.f(this.f6969a).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        for (int i10 = 0; i10 < listFiles.length && i10 < 5; i10++) {
            File file = listFiles[i10];
            try {
                if (!file.isDirectory()) {
                    com.apm.insight.l.f.a(file);
                } else if (file.getName().endsWith(RequestConfiguration.MAX_AD_CONTENT_RATING_G)) {
                    String name = file.getName();
                    C0100b c0100b = hashMap.get(name);
                    if (c0100b == null) {
                        c0100b = new C0100b(name);
                        hashMap.put(name, c0100b);
                    }
                    JSONArray a10 = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.l(file), com.apm.insight.l.j.m(file));
                    int length = a10.length();
                    c0100b.f6998g = length;
                    if (length > 0) {
                        try {
                            com.apm.insight.l.f.a(com.apm.insight.l.j.n(file), a10);
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                com.apm.insight.l.f.a(file);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d5 A[Catch: all -> 0x0036, TryCatch #1 {all -> 0x0036, blocks: (B:9:0x0023, B:11:0x0031, B:14:0x0039, B:17:0x0041, B:20:0x0051, B:22:0x0057, B:23:0x005c, B:25:0x0068, B:27:0x0073, B:31:0x008d, B:57:0x00d7, B:59:0x00df, B:60:0x00e7, B:62:0x00f2, B:70:0x010a, B:65:0x00fc, B:67:0x0100, B:69:0x0108, B:54:0x00cf, B:55:0x00d2, B:56:0x00d5, B:38:0x00a6, B:41:0x00b0, B:44:0x00ba, B:72:0x012d, B:29:0x007f), top: B:77:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00df A[Catch: all -> 0x0036, TryCatch #1 {all -> 0x0036, blocks: (B:9:0x0023, B:11:0x0031, B:14:0x0039, B:17:0x0041, B:20:0x0051, B:22:0x0057, B:23:0x005c, B:25:0x0068, B:27:0x0073, B:31:0x008d, B:57:0x00d7, B:59:0x00df, B:60:0x00e7, B:62:0x00f2, B:70:0x010a, B:65:0x00fc, B:67:0x0100, B:69:0x0108, B:54:0x00cf, B:55:0x00d2, B:56:0x00d5, B:38:0x00a6, B:41:0x00b0, B:44:0x00ba, B:72:0x012d, B:29:0x007f), top: B:77:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f2 A[Catch: all -> 0x0036, TryCatch #1 {all -> 0x0036, blocks: (B:9:0x0023, B:11:0x0031, B:14:0x0039, B:17:0x0041, B:20:0x0051, B:22:0x0057, B:23:0x005c, B:25:0x0068, B:27:0x0073, B:31:0x008d, B:57:0x00d7, B:59:0x00df, B:60:0x00e7, B:62:0x00f2, B:70:0x010a, B:65:0x00fc, B:67:0x0100, B:69:0x0108, B:54:0x00cf, B:55:0x00d2, B:56:0x00d5, B:38:0x00a6, B:41:0x00b0, B:44:0x00ba, B:72:0x012d, B:29:0x007f), top: B:77:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.HashMap<java.lang.String, com.apm.insight.k.b.C0100b> r17, com.apm.insight.k.b.C0100b r18) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.k.b.a(java.util.HashMap, com.apm.insight.k.b$b):void");
    }

    private static JSONObject a(com.apm.insight.nativecrash.a aVar) {
        JSONObject b10 = aVar.b();
        if (b10 == null || b10.length() == 0) {
            if (com.apm.insight.e.d()) {
                aVar.j();
            }
            if (!aVar.a()) {
                aVar.i();
                return null;
            } else if (!aVar.d()) {
                aVar.i();
                return null;
            } else if (aVar.e()) {
                aVar.i();
                return null;
            } else {
                aVar.c();
                return aVar.h();
            }
        }
        return b10;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0156 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x014a, B:69:0x0156, B:73:0x016a), top: B:89:0x014a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(final com.apm.insight.k.b.C0100b r21, boolean r22, @androidx.annotation.Nullable com.apm.insight.runtime.f r23) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.k.b.a(com.apm.insight.k.b$b, boolean, com.apm.insight.runtime.f):void");
    }

    private static boolean a(File file) {
        String[] list = file.list();
        if (list == null) {
            return false;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && str.endsWith("")) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private com.apm.insight.f.b a(File file, CrashType crashType, String str, long j10, long j11) {
        com.apm.insight.f.b bVar;
        try {
            try {
                if (file.isFile()) {
                    com.apm.insight.l.f.a(file);
                    return null;
                }
                boolean z10 = crashType == CrashType.LAUNCH;
                if (crashType == null) {
                    try {
                        return com.apm.insight.l.f.b(new File(file, file.getName()).getAbsolutePath());
                    } catch (Throwable th2) {
                        th = th2;
                        bVar = null;
                        com.apm.insight.l.f.a(file);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return bVar;
                    }
                }
                com.apm.insight.f.b a10 = com.apm.insight.l.f.a(file, crashType);
                try {
                    JSONObject b10 = a10.b();
                    try {
                        if (a10.b() != null) {
                            if (crashType == CrashType.ANR) {
                                return a10;
                            }
                            b10.put("crash_time", j10);
                            b10.put("app_start_time", j11);
                            JSONObject optJSONObject = b10.optJSONObject("header");
                            if (optJSONObject == null) {
                                optJSONObject = Header.a(j10).f();
                            } else if (z10) {
                                b10.remove("header");
                            }
                            String optString = optJSONObject.optString("sdk_version_name", null);
                            if (optString == null) {
                                optString = "2008-20250701130429";
                            }
                            com.apm.insight.entity.a.a(b10, "filters", "sdk_version", optString);
                            JSONArray optJSONArray = b10.optJSONArray("logcat");
                            if (optJSONArray == null || optJSONArray.length() == 0) {
                                b10.put("logcat", com.apm.insight.runtime.h.a(str));
                            }
                            com.apm.insight.entity.a.a(b10, "filters", "has_dump", "true");
                            com.apm.insight.entity.a.a(b10, "filters", "has_logcat", String.valueOf(!com.apm.insight.a.a(b10, "logcat")));
                            com.apm.insight.entity.a.a(b10, "filters", "memory_leak", String.valueOf(com.apm.insight.entity.a.a(str)));
                            com.apm.insight.entity.a.a(b10, "filters", "fd_leak", String.valueOf(com.apm.insight.entity.a.b(str)));
                            com.apm.insight.entity.a.a(b10, "filters", "threads_leak", String.valueOf(com.apm.insight.entity.a.c(str)));
                            com.apm.insight.entity.a.a(b10, "filters", "is_64_devices", String.valueOf(Header.a()));
                            com.apm.insight.entity.a.a(b10, "filters", "is_64_runtime", String.valueOf(NativeImpl.f()));
                            com.apm.insight.entity.a.a(b10, "filters", "is_x86_devices", String.valueOf(Header.b()));
                            com.apm.insight.entity.a.a(b10, "filters", "has_meminfo_file", String.valueOf(com.apm.insight.l.j.d(str).exists()));
                            com.apm.insight.entity.a.a(b10, "filters", "is_root", String.valueOf(com.apm.insight.nativecrash.a.k()));
                            b10.put("launch_did", com.apm.insight.i.a.a(this.f6969a));
                            b10.put("crash_uuid", file.getName());
                            long parseLong = Long.parseLong(com.apm.insight.runtime.b.a(j10, str));
                            com.apm.insight.entity.a.a(b10, "filters", "lastAliveTime", Math.abs(parseLong - j10) < ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS ? "< 60s" : "> 60s");
                            b10.put("lastAliveTime", String.valueOf(parseLong));
                            b10.put("has_dump", "true");
                            if (b10.opt("storage") == null) {
                                com.apm.insight.e.g();
                                com.apm.insight.entity.a.a(b10, n.a());
                            }
                            if (Header.b(optJSONObject)) {
                                com.apm.insight.entity.a.a(b10, "filters", "unauthentic_version", "unauthentic_version");
                            }
                            com.apm.insight.entity.d.b(b10);
                            a10.b().put("upload_scene", "launch_scan");
                            if (z10) {
                                JSONObject jSONObject = new JSONObject();
                                b10.put(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, "start_crash");
                                b10.put("stack", b10.remove("data"));
                                jSONObject.put("data", new JSONArray().put(b10));
                                jSONObject.put("header", optJSONObject);
                                a10.a(jSONObject);
                            } else {
                                b10.put("isJava", 1);
                            }
                        } else {
                            com.apm.insight.l.f.a(file);
                        }
                        return a10;
                    } catch (Throwable th3) {
                        th = th3;
                        bVar = a10;
                        com.apm.insight.l.f.a(file);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return bVar;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            bVar = null;
        }
    }
}
