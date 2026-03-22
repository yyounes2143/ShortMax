package com.apm.insight.nativecrash;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.apm.insight.ICommonParams;
import com.apm.insight.runtime.j;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: NativeFileParser.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private Context f7107a;

    /* renamed from: b  reason: collision with root package name */
    private ICommonParams f7108b;

    /* renamed from: c  reason: collision with root package name */
    private ICommonParams f7109c;

    /* compiled from: NativeFileParser.java */
    /* loaded from: classes2.dex */
    public static class a extends c {
        a(File file) {
            super(file);
            this.f7111b = "Total FD Count:";
            this.f7112c = ":";
            this.f7113d = -2;
        }
    }

    /* compiled from: NativeFileParser.java */
    /* renamed from: com.apm.insight.nativecrash.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0102b extends c {
        C0102b(File file) {
            super(file);
            this.f7111b = "VmSize:";
            this.f7112c = "\\s+";
            this.f7113d = -1;
        }
    }

    /* compiled from: NativeFileParser.java */
    /* loaded from: classes2.dex */
    public static class d extends c {
        d(File file) {
            super(file);
        }

        @NonNull
        public final HashMap<String, List<String>> b() {
            JSONArray a10;
            String str;
            HashMap<String, List<String>> hashMap = new HashMap<>();
            try {
                a10 = com.apm.insight.l.f.a(this.f7110a.getAbsolutePath());
            } catch (IOException unused) {
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
            if (a10 == null) {
                return hashMap;
            }
            for (int i10 = 0; i10 < a10.length(); i10++) {
                String optString = a10.optString(i10);
                if (!TextUtils.isEmpty(optString) && optString.startsWith("[tid:0") && optString.endsWith("sigstack:0x0]")) {
                    int indexOf = optString.indexOf("[routine:0x");
                    int i11 = indexOf + 11;
                    int indexOf2 = optString.indexOf(93, i11);
                    if (indexOf > 0) {
                        str = optString.substring(i11, indexOf2);
                    } else {
                        str = "unknown addr";
                    }
                    List<String> list = hashMap.get(str);
                    if (list == null) {
                        list = new ArrayList<>();
                        hashMap.put(str, list);
                    }
                    list.add(optString);
                }
            }
            return hashMap;
        }
    }

    /* compiled from: NativeFileParser.java */
    /* loaded from: classes2.dex */
    public static class e extends c {
        e(File file) {
            super(file);
        }

        @NonNull
        public final JSONArray a(HashMap<String, List<String>> hashMap) {
            JSONArray a10;
            int indexOf;
            List<String> list;
            JSONArray jSONArray = new JSONArray();
            if (hashMap.isEmpty()) {
                return jSONArray;
            }
            try {
                a10 = com.apm.insight.l.f.a(this.f7110a.getAbsolutePath());
            } catch (IOException unused) {
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
            if (a10 == null) {
                return jSONArray;
            }
            for (int i10 = 0; i10 < a10.length(); i10++) {
                String optString = a10.optString(i10);
                if (!TextUtils.isEmpty(optString) && (indexOf = optString.indexOf(":")) > 2) {
                    String substring = optString.substring(2, indexOf);
                    if (hashMap.containsKey(substring) && (list = hashMap.get(substring)) != null) {
                        Iterator<String> it = list.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(it.next() + " " + optString);
                        }
                        hashMap.remove(substring);
                    }
                }
            }
            for (List<String> list2 : hashMap.values()) {
                Iterator<String> it2 = list2.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next() + "  0x000000:unknown");
                }
            }
            return jSONArray;
        }
    }

    /* compiled from: NativeFileParser.java */
    /* loaded from: classes2.dex */
    public static class f extends c {
        f(File file) {
            super(file);
            this.f7111b = "Total Threads Count:";
            this.f7112c = ":";
            this.f7113d = -2;
        }
    }

    public b(Context context, ICommonParams iCommonParams) {
        this(context, iCommonParams, null);
    }

    @NonNull
    public static JSONArray a(File file, File file2) {
        return new e(file2).a(new d(file).b());
    }

    public static int b(String str) {
        return new f(com.apm.insight.l.j.c(str)).a();
    }

    public static int c(String str) {
        return new C0102b(com.apm.insight.l.j.d(str)).a();
    }

    public final String d() {
        try {
            return this.f7108b.getDeviceId();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final String e() {
        try {
            return String.valueOf(this.f7108b.getCommonParams().get(TTVideoEngineInterface.PLAY_API_KEY_APPID));
        } catch (Throwable unused) {
            return "4444";
        }
    }

    public final long f() {
        try {
            return this.f7108b.getUserId();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public b(Context context, ICommonParams iCommonParams, b bVar) {
        this.f7107a = context;
        this.f7108b = iCommonParams;
        this.f7109c = bVar == null ? null : bVar.f7108b;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> b() {
        /*
            r9 = this;
            java.lang.String r0 = "version_name"
            java.lang.String r1 = "update_version_code"
            java.lang.String r2 = "version_code"
            r3 = 0
            com.apm.insight.ICommonParams r4 = r9.f7109c     // Catch: java.lang.Throwable -> L13
            if (r4 == 0) goto L16
            java.util.Map r4 = r4.getCommonParams()     // Catch: java.lang.Throwable -> L13
            goto L1b
        L13:
            r4 = move-exception
            r5 = r3
            goto L2a
        L16:
            java.util.HashMap r4 = new java.util.HashMap     // Catch: java.lang.Throwable -> L13
            r4.<init>()     // Catch: java.lang.Throwable -> L13
        L1b:
            com.apm.insight.ICommonParams r5 = r9.f7108b     // Catch: java.lang.Throwable -> L26
            java.util.Map r5 = r5.getCommonParams()     // Catch: java.lang.Throwable -> L26
            r4.putAll(r5)     // Catch: java.lang.Throwable -> L26
            r5 = r3
            goto L2d
        L26:
            r5 = move-exception
            r8 = r5
            r5 = r4
            r4 = r8
        L2a:
            r8 = r5
            r5 = r4
            r4 = r8
        L2d:
            if (r4 != 0) goto L40
            java.util.HashMap r4 = new java.util.HashMap
            r6 = 4
            r4.<init>(r6)
            if (r5 == 0) goto L40
            java.lang.String r6 = "err_info"
            java.lang.String r5 = com.apm.insight.l.m.a(r5)     // Catch: java.lang.Throwable -> L40
            r4.put(r6, r5)     // Catch: java.lang.Throwable -> L40
        L40:
            boolean r5 = a(r4)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 == 0) goto La6
            android.content.Context r5 = r9.f7107a     // Catch: java.lang.Throwable -> L82
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L82
            android.content.Context r7 = r9.f7107a     // Catch: java.lang.Throwable -> L82
            java.lang.String r7 = r7.getPackageName()     // Catch: java.lang.Throwable -> L82
            android.content.pm.PackageInfo r5 = r5.getPackageInfo(r7, r6)     // Catch: java.lang.Throwable -> L82
            java.lang.String r6 = r5.versionName     // Catch: java.lang.Throwable -> L82
            r4.put(r0, r6)     // Catch: java.lang.Throwable -> L82
            int r6 = r5.versionCode     // Catch: java.lang.Throwable -> L82
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L82
            r4.put(r2, r6)     // Catch: java.lang.Throwable -> L82
            java.lang.Object r6 = r4.get(r1)     // Catch: java.lang.Throwable -> L82
            if (r6 != 0) goto Lec
            android.content.pm.ApplicationInfo r5 = r5.applicationInfo     // Catch: java.lang.Throwable -> L82
            android.os.Bundle r5 = r5.metaData     // Catch: java.lang.Throwable -> L82
            if (r5 == 0) goto L78
            java.lang.String r3 = "UPDATE_VERSION_CODE"
            java.lang.Object r3 = r5.get(r3)     // Catch: java.lang.Throwable -> L82
        L78:
            if (r3 != 0) goto L7e
            java.lang.Object r3 = r4.get(r2)     // Catch: java.lang.Throwable -> L82
        L7e:
            r4.put(r1, r3)     // Catch: java.lang.Throwable -> L82
            goto Lec
        L82:
            android.content.Context r3 = r9.f7107a
            java.lang.String r3 = com.apm.insight.l.a.c(r3)
            r4.put(r0, r3)
            android.content.Context r0 = r9.f7107a
            int r0 = com.apm.insight.l.a.d(r0)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r4.put(r2, r0)
            java.lang.Object r0 = r4.get(r1)
            if (r0 != 0) goto Lec
            java.lang.Object r0 = r4.get(r2)
            r4.put(r1, r0)
            goto Lec
        La6:
            android.content.Context r0 = r9.f7107a     // Catch: java.lang.Throwable -> Lec
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> Lec
            android.content.Context r1 = r9.f7107a     // Catch: java.lang.Throwable -> Lec
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Throwable -> Lec
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r6)     // Catch: java.lang.Throwable -> Lec
            java.lang.String r0 = r0.versionName     // Catch: java.lang.Throwable -> Lec
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lec
            r1.<init>()     // Catch: java.lang.Throwable -> Lec
            android.content.Context r2 = r9.f7107a     // Catch: java.lang.Throwable -> Lec
            java.lang.String r2 = r2.getPackageName()     // Catch: java.lang.Throwable -> Lec
            r1.append(r2)     // Catch: java.lang.Throwable -> Lec
            java.lang.String r2 = ".BuildConfig"
            r1.append(r2)     // Catch: java.lang.Throwable -> Lec
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lec
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> Lec
            java.lang.String r2 = "VERSION_NAME"
            java.lang.reflect.Field r1 = r1.getDeclaredField(r2)     // Catch: java.lang.Throwable -> Lec
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> Lec
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> Lec
            if (r0 == 0) goto Lec
            boolean r1 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lec
            if (r1 != 0) goto Lec
            java.lang.String r1 = "manifest_version"
            r4.put(r1, r0)     // Catch: java.lang.Throwable -> Lec
        Lec:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.nativecrash.b.b():java.util.Map");
    }

    @NonNull
    public final ICommonParams c() {
        return this.f7108b;
    }

    public static int a(String str) {
        return new a(com.apm.insight.l.j.b(str)).a();
    }

    public final Map<String, Object> a() {
        Object obj;
        Map<String, Object> b10 = b();
        if (((b10 == null || (obj = b10.get(TTVideoEngineInterface.PLAY_API_KEY_APPID)) == null) ? null : String.valueOf(obj)) == null) {
            b10.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, 4444);
        }
        return b10;
    }

    /* compiled from: NativeFileParser.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        protected File f7110a;

        /* renamed from: b  reason: collision with root package name */
        protected String f7111b;

        /* renamed from: c  reason: collision with root package name */
        protected String f7112c;

        /* renamed from: d  reason: collision with root package name */
        protected int f7113d;

        public c(File file) {
            this.f7110a = file;
        }

        public final int a() {
            int i10;
            Throwable th2;
            if (!this.f7110a.exists() || !this.f7110a.isFile()) {
                return -1;
            }
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f7110a));
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
            int i10 = this.f7113d;
            if (str.startsWith(this.f7111b)) {
                try {
                    i10 = Integer.parseInt(str.split(this.f7112c)[1].trim());
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

    public static boolean a(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        return ((map.containsKey("app_version") || map.containsKey("version_name")) && map.containsKey(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE) && map.containsKey(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE)) ? false : true;
    }
}
