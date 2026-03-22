package com.facebook.soloader;

import android.content.Context;
import android.os.StrictMode;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: DirectApkSoSource.java */
/* loaded from: classes2.dex */
public class d extends w implements s {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Set<String>> f16837a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Set<String>> f16838b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f16839c;

    public d(Context context) {
        this.f16839c = l(context);
    }

    private void f(String str, String str2, String str3) {
        synchronized (this.f16838b) {
            try {
                String str4 = str + str2;
                if (!this.f16838b.containsKey(str4)) {
                    this.f16838b.put(str4, new HashSet());
                }
                this.f16838b.get(str4).add(str3);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void g(String str, String str2) {
        synchronized (this.f16837a) {
            try {
                if (!this.f16837a.containsKey(str)) {
                    this.f16837a.put(str, new HashSet());
                }
                this.f16837a.get(str).add(str2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void h(String str, String str2) throws IOException {
        String j10 = j(str);
        ZipFile zipFile = new ZipFile(j10);
        try {
            String n10 = n(str, str2);
            ZipEntry entry = zipFile.getEntry(n10);
            if (entry == null) {
                o.b("SoLoader", n10 + " not found in " + j10);
                zipFile.close();
                return;
            }
            i(str, zipFile, entry, str2);
            zipFile.close();
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private void i(String str, ZipFile zipFile, ZipEntry zipEntry, String str2) throws IOException {
        String[] b10;
        j jVar = new j(zipFile, zipEntry);
        try {
            for (String str3 : NativeDeps.b(str2, jVar)) {
                if (!str3.startsWith(DomExceptionUtils.SEPARATOR)) {
                    f(str, str2, str3);
                }
            }
            jVar.close();
        } catch (Throwable th2) {
            try {
                jVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static String j(String str) {
        return str.substring(0, str.indexOf(33));
    }

    private Set<String> k(String str, String str2) {
        Set<String> set;
        synchronized (this.f16838b) {
            set = this.f16838b.get(str + str2);
        }
        return set;
    }

    static Set<String> l(Context context) {
        HashSet hashSet = new HashSet();
        String m10 = m(context.getApplicationInfo().sourceDir);
        if (m10 != null) {
            hashSet.add(m10);
        }
        if (context.getApplicationInfo().splitSourceDirs != null) {
            for (String str : context.getApplicationInfo().splitSourceDirs) {
                String m11 = m(str);
                if (m11 != null) {
                    hashSet.add(m11);
                }
            }
        }
        return hashSet;
    }

    private static String m(String str) {
        String[] j10 = SysUtil.j();
        String str2 = "empty";
        if (str != null && !str.isEmpty()) {
            if (j10 != null && j10.length != 0) {
                return str + "!/lib/" + j10[0];
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot compute fallback path, supportedAbis is ");
            if (j10 == null) {
                str2 = "null";
            }
            sb2.append(str2);
            o.g("SoLoader", sb2.toString());
            return null;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Cannot compute fallback path, apk path is ");
        if (str == null) {
            str2 = "null";
        }
        sb3.append(str2);
        o.g("SoLoader", sb3.toString());
        return null;
    }

    private static String n(String str, String str2) {
        int indexOf = str.indexOf(33);
        return str.substring(indexOf + 2) + File.separator + str2;
    }

    private void p(String str, String str2, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        Set<String> k10 = k(str, str2);
        if (k10 == null) {
            h(str, str2);
            k10 = k(str, str2);
        }
        if (k10 != null) {
            for (String str3 : k10) {
                SoLoader.r(str3, i10, threadPolicy);
            }
        }
    }

    private void q() throws IOException {
        String str;
        int indexOf;
        int i10;
        for (String str2 : this.f16839c) {
            if (!TextUtils.isEmpty(str2) && (indexOf = str2.indexOf(33)) >= 0 && (i10 = indexOf + 2) < str2.length()) {
                str = str2.substring(i10);
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str)) {
                ZipFile zipFile = new ZipFile(j(str2));
                try {
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextElement = entries.nextElement();
                        if (nextElement != null && nextElement.getMethod() == 0 && nextElement.getName().startsWith(str) && nextElement.getName().endsWith(".so")) {
                            g(str2, nextElement.getName().substring(str.length() + 1));
                        }
                    }
                    zipFile.close();
                } catch (Throwable th2) {
                    try {
                        zipFile.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    @Override // com.facebook.soloader.s
    public w b(Context context) {
        d dVar = new d(context);
        try {
            dVar.q();
            return dVar;
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // com.facebook.soloader.w
    public String c() {
        return "DirectApkSoSource";
    }

    @Override // com.facebook.soloader.w
    public int d(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        if (SoLoader.f16818b != null) {
            for (String str2 : this.f16839c) {
                Set<String> set = this.f16837a.get(str2);
                if (!TextUtils.isEmpty(str2) && set != null && set.contains(str)) {
                    p(str2, str, i10, threadPolicy);
                    try {
                        i10 |= 4;
                        SoLoader.f16818b.a(str2 + File.separator + str, i10);
                        o.a("SoLoader", str + " found on " + str2);
                        return 1;
                    } catch (UnsatisfiedLinkError e10) {
                        o.h("SoLoader", str + " not found on " + str2 + " flag: " + i10, e10);
                    }
                } else {
                    o.f("SoLoader", str + " not found on " + str2);
                }
            }
            return 0;
        }
        throw new IllegalStateException("SoLoader.init() not yet called");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.w
    public void e(int i10) throws IOException {
        q();
    }

    public boolean o() {
        return !this.f16839c.isEmpty();
    }

    @Override // com.facebook.soloader.w
    public String toString() {
        return c() + "[root = " + this.f16839c.toString() + ']';
    }
}
