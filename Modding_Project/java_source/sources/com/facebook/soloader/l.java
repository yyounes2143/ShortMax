package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.y;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: ExtractFromZipSoSource.java */
/* loaded from: classes2.dex */
public class l extends y {

    /* renamed from: f  reason: collision with root package name */
    protected final File f16858f;

    /* renamed from: g  reason: collision with root package name */
    protected final String f16859g;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes2.dex */
    public static final class a extends y.c implements Comparable<a> {

        /* renamed from: c  reason: collision with root package name */
        final ZipEntry f16860c;

        /* renamed from: d  reason: collision with root package name */
        final int f16861d;

        a(String str, ZipEntry zipEntry, int i10) {
            super(str, String.valueOf(zipEntry.getCrc()));
            this.f16860c = zipEntry;
            this.f16861d = i10;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            return this.f16882a.compareTo(aVar.f16882a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f16860c.equals(aVar.f16860c) && this.f16861d == aVar.f16861d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f16861d * 31) + this.f16860c.hashCode();
        }
    }

    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes2.dex */
    protected class b extends y.e {

        /* renamed from: a  reason: collision with root package name */
        protected a[] f16862a;

        /* renamed from: b  reason: collision with root package name */
        private final ZipFile f16863b;

        /* renamed from: c  reason: collision with root package name */
        private final y f16864c;

        b(y yVar) throws IOException {
            this.f16863b = new ZipFile(l.this.f16858f);
            this.f16864c = yVar;
        }

        @Override // com.facebook.soloader.y.e, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f16863b.close();
        }

        @Override // com.facebook.soloader.y.e
        public final y.c[] d() throws IOException {
            return l();
        }

        @Override // com.facebook.soloader.y.e
        public void g(File file) throws IOException {
            a[] l10;
            byte[] bArr = new byte[32768];
            for (a aVar : l()) {
                InputStream inputStream = this.f16863b.getInputStream(aVar.f16860c);
                try {
                    y.d dVar = new y.d(aVar, inputStream);
                    a(dVar, bArr, file);
                    dVar.close();
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th2;
                }
            }
        }

        a[] k() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            HashMap hashMap = new HashMap();
            Pattern compile = Pattern.compile(l.this.f16859g);
            String[] j10 = SysUtil.j();
            Enumeration<? extends ZipEntry> entries = this.f16863b.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                Matcher matcher = compile.matcher(nextElement.getName());
                if (matcher.matches()) {
                    int groupCount = matcher.groupCount();
                    String group = matcher.group(groupCount - 1);
                    String group2 = matcher.group(groupCount);
                    int e10 = SysUtil.e(j10, group);
                    if (e10 >= 0) {
                        linkedHashSet.add(group);
                        a aVar = (a) hashMap.get(group2);
                        if (aVar == null || e10 < aVar.f16861d) {
                            hashMap.put(group2, new a(group2, nextElement, e10));
                        }
                    }
                }
            }
            this.f16864c.t((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
            a[] aVarArr = (a[]) hashMap.values().toArray(new a[hashMap.size()]);
            Arrays.sort(aVarArr);
            return aVarArr;
        }

        a[] l() {
            a[] aVarArr = this.f16862a;
            if (aVarArr != null) {
                return aVarArr;
            }
            a[] k10 = k();
            this.f16862a = k10;
            return k10;
        }
    }

    public l(Context context, String str, File file, String str2) {
        super(context, str);
        this.f16858f = file;
        this.f16859g = str2;
    }

    @Override // com.facebook.soloader.f, com.facebook.soloader.w
    public String c() {
        return "ExtractFromZipSoSource";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.y
    public y.e q() throws IOException {
        return new b(this);
    }

    @Override // com.facebook.soloader.f, com.facebook.soloader.w
    public String toString() {
        try {
            return this.f16858f.getCanonicalPath();
        } catch (IOException unused) {
            return this.f16858f.getName();
        }
    }

    public boolean v() throws IOException {
        boolean z10;
        b bVar = new b(this);
        try {
            if (bVar.k().length != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            bVar.close();
            return z10;
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
