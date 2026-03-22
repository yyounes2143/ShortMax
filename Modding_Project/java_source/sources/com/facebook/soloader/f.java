package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* compiled from: DirectorySoSource.java */
/* loaded from: classes2.dex */
public class f extends w {

    /* renamed from: a  reason: collision with root package name */
    protected final File f16843a;

    /* renamed from: b  reason: collision with root package name */
    protected int f16844b;

    /* renamed from: c  reason: collision with root package name */
    protected final List<String> f16845c;

    public f(File file, int i10) {
        this(file, i10, new String[0]);
    }

    @Override // com.facebook.soloader.w
    public String c() {
        return "DirectorySoSource";
    }

    @Override // com.facebook.soloader.w
    public int d(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return g(str, i10, this.f16843a, threadPolicy);
    }

    public File f(String str) throws IOException {
        File file = new File(this.f16843a, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    protected int g(String str, int i10, File file, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        if (SoLoader.f16818b != null) {
            if (this.f16845c.contains(str)) {
                o.a("SoLoader", str + " is on the denyList, skip loading from " + file.getCanonicalPath());
                return 0;
            }
            File f10 = f(str);
            if (f10 == null) {
                o.f("SoLoader", str + " file not found on " + file.getCanonicalPath());
                return 0;
            }
            String canonicalPath = f10.getCanonicalPath();
            o.a("SoLoader", str + " file found at " + canonicalPath);
            if ((i10 & 1) != 0 && (this.f16844b & 2) != 0) {
                o.a("SoLoader", str + " loaded implicitly");
                return 2;
            }
            if ((this.f16844b & 1) != 0) {
                i iVar = new i(f10);
                try {
                    NativeDeps.h(str, iVar, i10, threadPolicy);
                    iVar.close();
                } catch (Throwable th2) {
                    try {
                        iVar.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } else {
                o.a("SoLoader", "Not resolving dependencies for " + str);
            }
            try {
                SoLoader.f16818b.a(canonicalPath, i10);
                return 1;
            } catch (UnsatisfiedLinkError e10) {
                throw v.b(str, e10);
            }
        }
        throw new IllegalStateException("SoLoader.init() not yet called");
    }

    public void h() {
        this.f16844b |= 1;
    }

    @Override // com.facebook.soloader.w
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f16843a.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f16843a.getName();
        }
        return c() + "[root = " + name + " flags = " + this.f16844b + ']';
    }

    public f(File file, int i10, String[] strArr) {
        this.f16843a = file;
        this.f16844b = i10;
        this.f16845c = Arrays.asList(strArr);
    }
}
