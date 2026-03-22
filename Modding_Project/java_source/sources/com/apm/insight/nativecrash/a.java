package com.apm.insight.nativecrash;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashFilter;
import com.apm.insight.entity.Header;
import com.apm.insight.l.h;
import com.apm.insight.l.m;
import com.apm.insight.l.n;
import com.apm.insight.runtime.j;
import com.apm.insight.runtime.o;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: NativeCrashFileManager.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f7090d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f7091a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f7092b = null;

    /* renamed from: c  reason: collision with root package name */
    private b f7093c;

    /* compiled from: NativeCrashFileManager.java */
    /* renamed from: com.apm.insight.nativecrash.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0101a {
        /* JADX INFO: Access modifiers changed from: private */
        public static String b(File file) {
            BufferedReader bufferedReader;
            String readLine;
            BufferedReader bufferedReader2 = null;
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                readLine = bufferedReader.readLine();
            } catch (Throwable th3) {
                th = th3;
                bufferedReader2 = bufferedReader;
                try {
                    com.apm.insight.c.a();
                    j.a(th, "NPTH_CATCH");
                    return "";
                } finally {
                    com.apm.insight.a.a((Closeable) bufferedReader2);
                }
            }
            if (readLine == null) {
                com.apm.insight.a.a((Closeable) bufferedReader);
                return "";
            } else if (readLine.startsWith("[FATAL:jni_android.cc") && readLine.contains("Please include Java exception stack in crash report ttwebview:")) {
                StringBuilder sb2 = new StringBuilder();
                int indexOf = readLine.indexOf(" ttwebview:");
                sb2.append("Caused by: ");
                sb2.append("Please include Java exception stack in crash report");
                sb2.append("\n");
                sb2.append(readLine.substring(indexOf + 11));
                sb2.append("\n");
                while (true) {
                    String readLine2 = bufferedReader.readLine();
                    if (readLine2 != null) {
                        sb2.append(readLine2);
                        sb2.append("\n");
                    } else {
                        String sb3 = sb2.toString();
                        com.apm.insight.a.a((Closeable) bufferedReader);
                        return sb3;
                    }
                }
            } else {
                com.apm.insight.a.a((Closeable) bufferedReader);
                return "";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeCrashFileManager.java */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final com.apm.insight.nativecrash.c f7094a;

        /* renamed from: b  reason: collision with root package name */
        private final com.apm.insight.h.b f7095b;

        /* renamed from: c  reason: collision with root package name */
        private final File f7096c;

        /* renamed from: d  reason: collision with root package name */
        private final File f7097d;

        public b(File file) {
            this.f7096c = file;
            this.f7097d = com.apm.insight.l.j.a(com.apm.insight.e.g(), file.getName());
            com.apm.insight.h.b bVar = new com.apm.insight.h.b(file);
            this.f7095b = bVar;
            com.apm.insight.nativecrash.c cVar = new com.apm.insight.nativecrash.c(file);
            this.f7094a = cVar;
            if (bVar.d() && cVar.a() == null) {
                cVar.a(file);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x001c A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0008, B:6:0x000e, B:11:0x001c), top: B:16:0x0008 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long a() {
            /*
                r2 = this;
                com.apm.insight.h.b r0 = r2.f7095b
                java.util.Map r0 = r0.f()
                if (r0 == 0) goto L19
                boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L17
                if (r1 != 0) goto L19
                java.lang.String r1 = "start_time"
                java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L17
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L17
                goto L1a
            L17:
                r0 = move-exception
                goto L21
            L19:
                r0 = 0
            L1a:
                if (r0 == 0) goto L29
                long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Throwable -> L17
                return r0
            L21:
                com.apm.insight.c.a()
                java.lang.String r1 = "NPTH_CATCH"
                com.apm.insight.runtime.j.a(r0, r1)
            L29:
                long r0 = java.lang.System.currentTimeMillis()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.nativecrash.a.b.a():long");
        }

        public final File b() {
            return this.f7096c;
        }

        public final boolean c() {
            return this.f7095b.d();
        }
    }

    /* compiled from: NativeCrashFileManager.java */
    /* loaded from: classes2.dex */
    public class c extends e {
        c() {
            super();
            this.f7102b = "Total FD Count:";
            this.f7101a = com.apm.insight.l.j.i(a.this.f7093c.b());
            this.f7103c = ":";
            this.f7104d = -2;
        }
    }

    /* compiled from: NativeCrashFileManager.java */
    /* loaded from: classes2.dex */
    public class d extends e {
        d() {
            super();
            this.f7102b = "VmSize:";
            this.f7101a = com.apm.insight.l.j.k(a.this.f7093c.b());
            this.f7103c = "\\s+";
            this.f7104d = -1;
        }
    }

    /* compiled from: NativeCrashFileManager.java */
    /* loaded from: classes2.dex */
    public class f extends e {
        f() {
            super();
            this.f7102b = "Total Threads Count:";
            this.f7101a = com.apm.insight.l.j.j(a.this.f7093c.b());
            this.f7103c = ":";
            this.f7104d = -2;
        }
    }

    public a(Context context) {
        this.f7091a = context;
    }

    public static long g() {
        if (NativeImpl.f()) {
            return Long.MAX_VALUE;
        }
        if (Header.a()) {
            return 3891200L;
        }
        return 2867200L;
    }

    public static boolean k() {
        Boolean bool = f7090d;
        if (bool != null) {
            return bool.booleanValue();
        }
        String[] strArr = {"/data/local/su", "/data/local/bin/su", "/data/local/xbin/su", "/system/xbin/su", "/system/bin/su", "/system/bin/.ext/su", "/system/bin/failsafe/su", "/system/sd/xbin/su", "/system/usr/we-need-root/su", "/sbin/su", "/su/bin/su"};
        for (int i10 = 0; i10 < 11; i10++) {
            try {
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
            if (new File(strArr[i10]).exists()) {
                f7090d = Boolean.TRUE;
                return true;
            }
            continue;
        }
        f7090d = Boolean.FALSE;
        return false;
    }

    @Nullable
    private String l() {
        b bVar = this.f7093c;
        if (bVar != null) {
            String c10 = bVar.f7094a.c();
            if (c10 == null || c10.isEmpty()) {
                return this.f7093c.f7095b.e();
            }
            return c10;
        }
        return null;
    }

    public final JSONObject b() {
        File f10 = com.apm.insight.l.j.f(this.f7093c.b());
        if (f10.exists()) {
            try {
                String a10 = com.apm.insight.l.f.a(f10.getAbsolutePath(), "\n");
                if (a10 != null && !a10.isEmpty()) {
                    return new JSONObject(a10);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
            return null;
        }
        return null;
    }

    public final void c() {
        BufferedWriter bufferedWriter;
        Throwable th2;
        try {
            File e10 = com.apm.insight.l.j.e(this.f7093c.b());
            File file = new File(e10.getAbsolutePath() + ".tmp'");
            if (file.exists()) {
                file.delete();
            }
            int i10 = 0;
            if (e10.exists()) {
                while (i10 < NativeCrashCollector.a()) {
                    File file2 = new File(e10.getAbsolutePath() + '.' + i10);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    i10++;
                }
                return;
            }
            com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
            for (int i11 = 0; i11 < NativeCrashCollector.a(); i11++) {
                File file3 = new File(e10.getAbsolutePath() + '.' + i11);
                if (file3.exists()) {
                    try {
                        String a10 = com.apm.insight.l.f.a(file3.getAbsolutePath(), "\n");
                        if (!TextUtils.isEmpty(a10)) {
                            JSONObject jSONObject = new JSONObject(a10);
                            if (jSONObject.length() > 0) {
                                aVar.c(jSONObject);
                            }
                        }
                    } catch (JSONException e11) {
                        com.apm.insight.c.a();
                        j.a(e11, "NPTH_CATCH");
                    }
                }
            }
            JSONObject c10 = aVar.c();
            try {
                if (c10.length() != 0 && c10.opt("storage") == null) {
                    com.apm.insight.e.g();
                    com.apm.insight.entity.a.a(c10, n.a());
                }
            } catch (Throwable unused) {
            }
            if (c10.length() != 0) {
                this.f7092b = c10;
                file.getParentFile().mkdirs();
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(file));
                } catch (Throwable th3) {
                    bufferedWriter = null;
                    th2 = th3;
                }
                try {
                    h.a(c10, bufferedWriter);
                    com.apm.insight.a.a((Closeable) bufferedWriter);
                    if (file.renameTo(e10)) {
                        while (i10 < NativeCrashCollector.a()) {
                            File file4 = new File(e10.getAbsolutePath() + '.' + i10);
                            if (file4.exists()) {
                                file4.delete();
                            }
                            i10++;
                        }
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    try {
                        c10.put("err_write", th2.toString());
                        com.apm.insight.entity.a.a(c10, "filters", "err_write", th2.getLocalizedMessage());
                    } catch (JSONException unused2) {
                        com.apm.insight.c.a();
                        j.a(th2, "NPTH_CATCH");
                    }
                }
            }
        } catch (IOException e12) {
            com.apm.insight.c.a();
            j.a(e12, "NPTH_CATCH");
        }
    }

    public final boolean d() {
        ICrashFilter b10 = com.apm.insight.e.b().b();
        if (b10 != null) {
            try {
                if (!b10.onNativeCrashFilter(l(), "")) {
                    return false;
                }
                return true;
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
                return true;
            }
        }
        return true;
    }

    public final boolean e() {
        return com.apm.insight.e.a.a().a(com.apm.insight.l.j.f(this.f7093c.b()).getAbsolutePath());
    }

    public final void f() {
        com.apm.insight.e.a.a().a(com.apm.insight.d.a.b(com.apm.insight.l.j.f(this.f7093c.b()).getAbsolutePath()));
    }

    public final JSONObject h() {
        Map<String, String> map;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        try {
            com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
            Header header = new Header(this.f7091a);
            JSONObject a10 = o.a().a(this.f7093c.a());
            if (a10 != null) {
                header.a(a10);
                header.d();
                header.e();
            }
            Header.b(header);
            aVar.a(header);
            boolean z10 = true;
            aVar.a("is_native_crash", (Object) 1);
            aVar.a("repack_time", Long.valueOf(System.currentTimeMillis()));
            aVar.a("crash_uuid", this.f7093c.b().getName());
            b bVar = this.f7093c;
            if (bVar != null) {
                map = bVar.f7095b.f();
            } else {
                map = null;
            }
            if (map != null) {
                Object obj7 = (String) map.get("process_name");
                if (obj7 != null) {
                    aVar.a("process_name", obj7);
                }
                String str = map.get(MetricsSQLiteCacheKt.METRICS_START_TIME);
                if (str != null) {
                    aVar.a(Long.decode(str).longValue());
                }
                String str2 = map.get("pid");
                if (str2 != null) {
                    aVar.a("pid", Long.decode(str2));
                }
                Object obj8 = (String) map.get("crash_thread_name");
                if (obj8 != null) {
                    aVar.a("crash_thread_name", obj8);
                }
                String str3 = map.get("crash_time");
                if (str3 != null) {
                    aVar.a("crash_time", Long.decode(str3));
                }
                aVar.a("data", l());
            }
            Map<String, String> b10 = this.f7093c.f7094a.b();
            if (!b10.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (String str4 : b10.keySet()) {
                    String a11 = a(b10.get(str4));
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("lib_name", str4);
                        jSONObject.put("lib_uuid", a11);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e10) {
                        com.apm.insight.c.a();
                        j.a(e10, "NPTH_CATCH");
                    }
                }
                aVar.a("crash_lib_uuid", (Object) jSONArray);
            }
            File e11 = com.apm.insight.l.j.e(this.f7093c.b());
            if (!e11.exists() && this.f7092b == null) {
                com.apm.insight.e.g();
                aVar.b(n.a());
                aVar.a("has_callback", "false");
            } else {
                JSONObject jSONObject2 = this.f7092b;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject(com.apm.insight.l.f.a(e11.getAbsolutePath(), "\n"));
                }
                aVar.c(jSONObject2);
                aVar.a("has_callback", "true");
                if (aVar.c().opt("storage") == null) {
                    com.apm.insight.e.g();
                    aVar.b(n.a());
                }
                com.apm.insight.a.a(aVar, aVar.d(), CrashType.NATIVE);
                long j10 = -1;
                long optLong = aVar.c().optLong("crash_time", -1L);
                long optLong2 = aVar.c().optLong("java_end", -1L);
                if (optLong2 != -1 && optLong != -1) {
                    j10 = optLong2 - optLong;
                }
                try {
                    aVar.b("total_cost", String.valueOf(j10));
                    aVar.a("total_cost", String.valueOf(j10 / 1000));
                } catch (Throwable unused) {
                }
            }
            File g10 = com.apm.insight.l.j.g(this.f7093c.b());
            String str5 = "";
            if (g10.exists()) {
                str5 = m.a(g10.getAbsolutePath());
            }
            File o10 = com.apm.insight.l.j.o(this.f7093c.b());
            if (o10.exists()) {
                String b11 = C0101a.b(o10);
                if (!str5.isEmpty()) {
                    str5 = str5 + "\n" + b11;
                } else {
                    str5 = b11;
                }
            }
            if (!str5.isEmpty()) {
                aVar.a("java_data", (Object) str5);
            }
            b(aVar);
            a(aVar);
            com.apm.insight.entity.d.b(aVar.c());
            Map<? extends String, ? extends String> hashMap = new HashMap<>();
            if (k()) {
                hashMap.put("is_root", "true");
                aVar.a("is_root", "true");
            } else {
                hashMap.put("is_root", "false");
                aVar.a("is_root", "false");
            }
            if (com.apm.insight.l.j.i(this.f7093c.b()).exists()) {
                obj = "true";
            } else {
                obj = "false";
            }
            hashMap.put("has_fds_file", obj);
            File h10 = com.apm.insight.l.j.h(this.f7093c.b());
            if (h10.exists() && h10.length() > 128) {
                obj2 = "true";
            } else {
                obj2 = "false";
            }
            hashMap.put("has_logcat_file", obj2);
            if (com.apm.insight.l.j.d(this.f7093c.b()).exists()) {
                obj3 = "true";
            } else {
                obj3 = "false";
            }
            hashMap.put("has_maps_file", obj3);
            if (com.apm.insight.l.j.b(this.f7093c.b()).exists()) {
                obj4 = "true";
            } else {
                obj4 = "false";
            }
            hashMap.put("has_tombstone_file", obj4);
            if (com.apm.insight.l.j.k(this.f7093c.b()).exists()) {
                obj5 = "true";
            } else {
                obj5 = "false";
            }
            hashMap.put("has_meminfo_file", obj5);
            if (com.apm.insight.l.j.j(this.f7093c.b()).exists()) {
                obj6 = "true";
            } else {
                obj6 = "false";
            }
            hashMap.put("has_threads_file", obj6);
            int a12 = new c().a();
            if (a12 > 0) {
                if (a12 > 960) {
                    hashMap.put("fd_leak", "true");
                } else {
                    hashMap.put("fd_leak", "false");
                }
                aVar.a("fd_count", Integer.valueOf(a12));
            }
            int a13 = new f().a();
            if (a13 > 0) {
                if (a13 > 350) {
                    hashMap.put("threads_leak", "true");
                } else {
                    hashMap.put("threads_leak", "false");
                }
                aVar.a("threads_count", Integer.valueOf(a13));
            }
            int a14 = new d().a();
            if (a14 > 0) {
                if (a14 > g()) {
                    hashMap.put("memory_leak", "true");
                } else {
                    hashMap.put("memory_leak", "false");
                }
                aVar.a("memory_size", Integer.valueOf(a14));
            }
            hashMap.put("sdk_version", "2008-20250701130429");
            if (aVar.c().opt("java_data") == null) {
                z10 = false;
            }
            hashMap.put("has_java_stack", String.valueOf(z10));
            JSONArray a15 = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.l(this.f7093c.f7096c), com.apm.insight.l.j.m(this.f7093c.f7096c));
            hashMap.put("leak_threads_count", String.valueOf(a15.length()));
            if (a15.length() > 0) {
                try {
                    com.apm.insight.l.f.a(com.apm.insight.l.j.n(this.f7093c.f7096c), a15);
                } catch (Throwable unused2) {
                }
            }
            aVar.b();
            aVar.a("is_64_devices", String.valueOf(Header.a()));
            aVar.a("is_64_runtime", String.valueOf(NativeImpl.f()));
            aVar.a("is_x86_devices", String.valueOf(Header.b()));
            aVar.c(hashMap);
            File f10 = com.apm.insight.l.j.f(this.f7093c.b());
            JSONObject c10 = aVar.c();
            com.apm.insight.l.f.a(f10, c10);
            return c10;
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
            return null;
        }
    }

    public final boolean i() {
        return com.apm.insight.l.f.a(this.f7093c.b());
    }

    public final void j() {
        try {
            String absolutePath = this.f7093c.b().getAbsolutePath();
            com.apm.insight.l.f.b(absolutePath, Environment.getExternalStorageDirectory().getAbsolutePath() + "/localDebug/" + com.apm.insight.e.g().getPackageName() + DomExceptionUtils.SEPARATOR + this.f7093c.b().getName() + ".zip");
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
    }

    public final void a(File file) {
        this.f7093c = new b(file);
    }

    public final boolean a() {
        b bVar = this.f7093c;
        if (bVar != null) {
            return bVar.c();
        }
        return false;
    }

    private void a(com.apm.insight.entity.a aVar) {
        File a10 = com.apm.insight.l.j.a(this.f7093c.b());
        if (a10.exists()) {
            try {
                String a11 = com.apm.insight.l.f.a(a10.getAbsolutePath(), "\n");
                JSONArray jSONArray = new JSONArray();
                if (a11 != null) {
                    for (String str : a11.split("\n")) {
                        jSONArray.put(str);
                    }
                }
                aVar.a("native_log", (Object) jSONArray);
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
    }

    /* compiled from: NativeCrashFileManager.java */
    /* loaded from: classes2.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        protected File f7101a;

        /* renamed from: b  reason: collision with root package name */
        protected String f7102b;

        /* renamed from: c  reason: collision with root package name */
        protected String f7103c;

        /* renamed from: d  reason: collision with root package name */
        protected int f7104d;

        public e() {
        }

        public final int a() {
            int i10;
            Throwable th2;
            if (!this.f7101a.exists() || !this.f7101a.isFile()) {
                return -1;
            }
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f7101a));
                int i11 = -1;
                do {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        i11 = a(readLine);
                    } catch (Throwable th3) {
                        th2 = th3;
                        i10 = i11;
                        bufferedReader = bufferedReader2;
                        try {
                            com.apm.insight.c.a();
                            j.a(th2, "NPTH_CATCH");
                            return i10;
                        } finally {
                            if (bufferedReader != null) {
                                com.apm.insight.a.a((Closeable) bufferedReader);
                            }
                        }
                    }
                } while (i11 == -1);
                com.apm.insight.a.a((Closeable) bufferedReader2);
                return i11;
            } catch (Throwable th4) {
                i10 = -1;
                th2 = th4;
            }
        }

        private int a(String str) {
            int i10 = this.f7104d;
            if (str.startsWith(this.f7102b)) {
                try {
                    i10 = Integer.parseInt(str.split(this.f7103c)[1].trim());
                } catch (NumberFormatException e10) {
                    com.apm.insight.c.a();
                    j.a(e10, "NPTH_CATCH");
                }
                if (i10 < 0) {
                    return -2;
                }
                return i10;
            }
            return i10;
        }
    }

    private void b(com.apm.insight.entity.a aVar) {
        BufferedReader bufferedReader;
        File h10 = com.apm.insight.l.j.h(this.f7093c.b());
        if (!h10.exists()) {
            NativeImpl.a(h10.getAbsolutePath(), String.valueOf(com.apm.insight.e.i().getLogcatDumpCount()), String.valueOf(com.apm.insight.e.i().getLogcatLevel()));
        }
        JSONArray jSONArray = new JSONArray();
        String str = " " + this.f7093c.f7095b.f().get("pid") + " ";
        try {
            bufferedReader = new BufferedReader(new FileReader(h10));
            try {
                if (h10.length() > 512000) {
                    bufferedReader.skip(h10.length() - 512000);
                }
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if ((readLine.length() > 32 ? readLine.substring(0, 31) : readLine).contains(str)) {
                        jSONArray.put(readLine);
                    }
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
        com.apm.insight.a.a((Closeable) bufferedReader);
        aVar.a("logcat", (Object) jSONArray);
    }

    private static String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            if (str.length() < 16) {
                sb2.append(str);
            } else {
                sb2.append(str.charAt(6));
                sb2.append(str.charAt(7));
                sb2.append(str.charAt(4));
                sb2.append(str.charAt(5));
                sb2.append(str.charAt(2));
                sb2.append(str.charAt(3));
                sb2.append(str.charAt(0));
                sb2.append(str.charAt(1));
                sb2.append(str.charAt(10));
                sb2.append(str.charAt(11));
                sb2.append(str.charAt(8));
                sb2.append(str.charAt(9));
                sb2.append(str.charAt(14));
                sb2.append(str.charAt(15));
                sb2.append(str.charAt(12));
                sb2.append(str.charAt(13));
                if (str.length() >= 32) {
                    sb2.append((CharSequence) str, 16, 32);
                    sb2.append('0');
                }
            }
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
        return sb2.toString().toUpperCase();
    }
}
