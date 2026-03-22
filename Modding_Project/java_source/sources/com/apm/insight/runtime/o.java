package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RuntimeContext.java */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static o f7226a;

    /* renamed from: b  reason: collision with root package name */
    private File f7227b;

    /* renamed from: c  reason: collision with root package name */
    private File f7228c;

    /* renamed from: d  reason: collision with root package name */
    private File f7229d;

    /* renamed from: e  reason: collision with root package name */
    private Context f7230e;

    /* renamed from: f  reason: collision with root package name */
    private a f7231f = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RuntimeContext.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f7234a;

        /* renamed from: b  reason: collision with root package name */
        private long f7235b;

        /* renamed from: c  reason: collision with root package name */
        private File f7236c;

        /* renamed from: d  reason: collision with root package name */
        private JSONObject f7237d;

        /* synthetic */ a(File file, byte b10) {
            this(file);
        }

        static /* synthetic */ void d(a aVar) {
            aVar.f7236c.delete();
        }

        private a(File file) {
            this.f7237d = null;
            this.f7236c = file;
            String[] split = file.getName().split("-|\\.");
            if (split.length >= 2) {
                this.f7234a = Long.parseLong(split[0]);
                this.f7235b = Long.parseLong(split[1]);
                return;
            }
            String name = file.getName();
            if (TextUtils.isEmpty(name) || name.length() < 13) {
                return;
            }
            String substring = name.substring(0, 13);
            if (TextUtils.isDigitsOnly(substring)) {
                long parseLong = Long.parseLong(substring);
                this.f7234a = parseLong;
                this.f7235b = parseLong;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject a() {
            if (this.f7237d == null) {
                try {
                    this.f7237d = new JSONObject(com.apm.insight.l.f.a(this.f7236c.getAbsolutePath(), "\n"));
                } catch (Throwable unused) {
                }
                if (this.f7237d == null) {
                    this.f7237d = new JSONObject();
                }
            }
            return this.f7237d;
        }

        static /* synthetic */ boolean a(a aVar, long j10) {
            long j11 = aVar.f7234a;
            if (j11 <= j10 || j11 - j10 <= 604800000) {
                long j12 = aVar.f7235b;
                if (j12 >= j10 || j10 - j12 <= 604800000) {
                    return aVar.f7236c.lastModified() < j10 && j10 - aVar.f7236c.lastModified() > 604800000;
                }
                return true;
            }
            return true;
        }
    }

    private o(Context context) {
        File c10 = com.apm.insight.l.j.c(context);
        if (!c10.exists() || (!c10.isDirectory() && c10.delete())) {
            c10.mkdirs();
            com.apm.insight.runtime.a.b.a();
        }
        this.f7227b = c10;
        this.f7228c = new File(c10, "did");
        this.f7229d = new File(c10, "device_uuid");
        this.f7230e = context;
    }

    public static o a() {
        if (f7226a == null) {
            f7226a = new o(com.apm.insight.e.g());
        }
        return f7226a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b() {
        try {
            return com.apm.insight.l.f.a(this.f7228c.getAbsolutePath(), "\n");
        } catch (Throwable unused) {
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
    }

    public final String c() {
        try {
            return com.apm.insight.l.f.a(this.f7229d.getAbsolutePath(), "\n");
        } catch (Throwable unused) {
            return null;
        }
    }

    private ArrayList<a> c(final String str) {
        File[] listFiles = this.f7227b.listFiles(new FilenameFilter() { // from class: com.apm.insight.runtime.o.1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                if (str2.endsWith(str) && Pattern.compile("^\\d{1,13}-\\d{1,13}.*").matcher(str2).matches()) {
                    return true;
                }
                return false;
            }
        });
        ArrayList<a> arrayList = new ArrayList<>();
        if (listFiles == null) {
            return arrayList;
        }
        com.apm.insight.a.a((Object) ("foundRuntimeContextFiles " + listFiles.length));
        a aVar = null;
        for (File file : listFiles) {
            try {
                a aVar2 = new a(file, (byte) 0);
                arrayList.add(aVar2);
                if (this.f7231f == null && ".ctx".equals(str) && (aVar == null || aVar2.f7235b >= aVar.f7235b)) {
                    aVar = aVar2;
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
        if (this.f7231f == null && aVar != null) {
            this.f7231f = aVar;
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c A[Catch: all -> 0x00a6, TryCatch #0 {all -> 0x00a6, blocks: (B:28:0x007e, B:31:0x008c, B:32:0x0090, B:34:0x0096, B:36:0x00a2), top: B:43:0x007e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Map<java.lang.String, java.lang.Object> r11, org.json.JSONArray r12) {
        /*
            r10 = this;
            android.content.Context r0 = r10.f7230e
            com.apm.insight.entity.Header r0 = com.apm.insight.entity.Header.a(r0)
            org.json.JSONObject r6 = r0.a(r11)
            boolean r11 = com.apm.insight.entity.Header.c(r6)
            if (r11 == 0) goto L11
            return
        L11:
            long r8 = java.lang.System.currentTimeMillis()
            com.apm.insight.runtime.o$a r11 = r10.f7231f
            if (r11 != 0) goto L1e
            java.lang.String r11 = ".ctx"
            r10.c(r11)
        L1e:
            com.apm.insight.runtime.o$a r11 = r10.f7231f
            if (r11 != 0) goto L2a
            r1 = r10
            r2 = r8
            r4 = r8
            r7 = r12
            r1.a(r2, r4, r6, r7)
            return
        L2a:
            org.json.JSONObject r0 = com.apm.insight.runtime.o.a.a(r11)
            boolean r1 = com.apm.insight.entity.Header.c(r0)
            r2 = 1
            r3 = 2
            if (r1 != 0) goto L5f
            boolean r1 = com.apm.insight.entity.Header.c(r6)
            if (r1 == 0) goto L3e
            r0 = 0
            goto L60
        L3e:
            java.lang.String r1 = "update_version_code"
            java.lang.Object r4 = r6.opt(r1)
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.Object r1 = r0.opt(r1)
            java.lang.String r1 = java.lang.String.valueOf(r1)
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L5f
            boolean r0 = com.apm.insight.entity.Header.d(r0)
            if (r0 == 0) goto L5f
            r0 = r2
            goto L60
        L5f:
            r0 = r3
        L60:
            if (r0 == r2) goto L6d
            if (r0 == r3) goto L65
            goto L7e
        L65:
            r1 = r10
            r2 = r8
            r4 = r8
            r7 = r12
            r1.a(r2, r4, r6, r7)
            goto L7e
        L6d:
            long r2 = com.apm.insight.runtime.o.a.b(r11)
            r1 = r10
            r4 = r8
            r7 = r12
            r1.a(r2, r4, r6, r7)
            java.io.File r11 = com.apm.insight.runtime.o.a.c(r11)
            com.apm.insight.l.f.a(r11)
        L7e:
            java.lang.String r11 = ""
            java.util.ArrayList r11 = r10.c(r11)     // Catch: java.lang.Throwable -> La6
            int r12 = r11.size()     // Catch: java.lang.Throwable -> La6
            r0 = 6
            if (r12 > r0) goto L8c
            return
        L8c:
            java.util.Iterator r11 = r11.iterator()     // Catch: java.lang.Throwable -> La6
        L90:
            boolean r12 = r11.hasNext()     // Catch: java.lang.Throwable -> La6
            if (r12 == 0) goto La8
            java.lang.Object r12 = r11.next()     // Catch: java.lang.Throwable -> La6
            com.apm.insight.runtime.o$a r12 = (com.apm.insight.runtime.o.a) r12     // Catch: java.lang.Throwable -> La6
            boolean r0 = com.apm.insight.runtime.o.a.a(r12, r8)     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L90
            com.apm.insight.runtime.o.a.d(r12)     // Catch: java.lang.Throwable -> La6
            goto L90
        La6:
            r11 = move-exception
            goto La9
        La8:
            return
        La9:
            com.apm.insight.c.a()
            java.lang.String r12 = "NPTH_CATCH"
            com.apm.insight.runtime.j.a(r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.runtime.o.a(java.util.Map, org.json.JSONArray):void");
    }

    public final void b(String str) {
        try {
            com.apm.insight.l.f.a(this.f7229d, str, false);
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public final JSONArray b(long j10) {
        File file;
        String str;
        Iterator<a> it = c(".allData").iterator();
        while (true) {
            if (!it.hasNext()) {
                file = null;
                break;
            }
            a next = it.next();
            if (j10 >= next.f7234a && j10 <= next.f7235b) {
                file = next.f7236c;
                break;
            }
        }
        if (file == null) {
            Iterator<a> it2 = c(".allData").iterator();
            a aVar = null;
            while (it2.hasNext()) {
                a next2 = it2.next();
                if (aVar == null || Math.abs(aVar.f7235b - j10) > Math.abs(next2.f7235b - j10)) {
                    aVar = next2;
                }
            }
            file = aVar == null ? null : aVar.f7236c;
        }
        if (file == null) {
            return null;
        }
        try {
            str = com.apm.insight.l.f.a(file.getAbsolutePath(), "\n");
            try {
                return new JSONArray(str);
            } catch (Throwable th2) {
                th = th2;
                com.apm.insight.c.a();
                j.a(new IOException("content :".concat(String.valueOf(str)), th), "NPTH_CATCH");
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            str = null;
        }
    }

    private void a(long j10, long j11, JSONObject jSONObject, JSONArray jSONArray) {
        File file = this.f7227b;
        File file2 = new File(file, j10 + "-" + j11 + ".ctx");
        File file3 = this.f7227b;
        File file4 = new File(file3, j10 + "-" + j11 + ".allData");
        try {
            com.apm.insight.l.f.a(file2, jSONObject);
            com.apm.insight.l.f.a(file4, jSONArray);
            this.f7231f = new a(file2, (byte) 0);
        } catch (IOException e10) {
            com.apm.insight.c.a();
            j.a(e10, "NPTH_CATCH");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str) {
        try {
            com.apm.insight.l.f.a(this.f7228c, str, false);
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public final JSONObject a(long j10) {
        JSONObject jSONObject;
        File file;
        boolean z10;
        String str;
        Iterator<a> it = c(".ctx").iterator();
        while (true) {
            jSONObject = null;
            if (!it.hasNext()) {
                file = null;
                break;
            }
            a next = it.next();
            if (j10 >= next.f7234a && j10 <= next.f7235b) {
                file = next.f7236c;
                break;
            }
        }
        if (file == null) {
            Iterator<a> it2 = c(".ctx").iterator();
            a aVar = null;
            while (it2.hasNext()) {
                a next2 = it2.next();
                if (aVar == null || Math.abs(aVar.f7235b - j10) > Math.abs(next2.f7235b - j10)) {
                    aVar = next2;
                }
            }
            file = aVar == null ? null : aVar.f7236c;
            z10 = true;
        } else {
            z10 = false;
        }
        if (file != null) {
            try {
                str = com.apm.insight.l.f.a(file.getAbsolutePath(), "\n");
                try {
                    jSONObject = new JSONObject(str);
                } catch (Throwable th2) {
                    th = th2;
                    com.apm.insight.c.a();
                    j.a(new IOException("content :".concat(String.valueOf(str)), th), "NPTH_CATCH");
                    if (jSONObject != null) {
                        try {
                            jSONObject.put("unauthentic_version", 1);
                        } catch (JSONException e10) {
                            com.apm.insight.c.a();
                            j.a(e10, "NPTH_CATCH");
                        }
                    }
                    return jSONObject;
                }
            } catch (Throwable th3) {
                th = th3;
                str = null;
            }
        }
        if (jSONObject != null && z10) {
            jSONObject.put("unauthentic_version", 1);
        }
        return jSONObject;
    }
}
