package com.inmobi.media;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class S3 implements Closeable {

    /* renamed from: p  reason: collision with root package name */
    public static final Pattern f24104p = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: q  reason: collision with root package name */
    public static final N3 f24105q = new N3();

    /* renamed from: a  reason: collision with root package name */
    public final File f24106a;

    /* renamed from: b  reason: collision with root package name */
    public final File f24107b;

    /* renamed from: c  reason: collision with root package name */
    public final File f24108c;

    /* renamed from: d  reason: collision with root package name */
    public final File f24109d;

    /* renamed from: f  reason: collision with root package name */
    public final long f24111f;

    /* renamed from: g  reason: collision with root package name */
    public final of f24112g;

    /* renamed from: j  reason: collision with root package name */
    public BufferedWriter f24115j;

    /* renamed from: l  reason: collision with root package name */
    public int f24117l;

    /* renamed from: i  reason: collision with root package name */
    public long f24114i = 0;

    /* renamed from: k  reason: collision with root package name */
    public final LinkedHashMap f24116k = new LinkedHashMap(0, 0.75f, true);

    /* renamed from: m  reason: collision with root package name */
    public long f24118m = 0;

    /* renamed from: n  reason: collision with root package name */
    public final ThreadPoolExecutor f24119n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: o  reason: collision with root package name */
    public final M3 f24120o = new M3(this);

    /* renamed from: e  reason: collision with root package name */
    public final int f24110e = 1;

    /* renamed from: h  reason: collision with root package name */
    public final int f24113h = 2;

    public S3(File file, long j10, of ofVar) {
        this.f24106a = file;
        this.f24107b = new File(file, "journal");
        this.f24108c = new File(file, "journal.tmp");
        this.f24109d = new File(file, "journal.bkp");
        this.f24111f = j10;
        this.f24112g = ofVar;
    }

    public static void a(S3 s32, P3 p32, boolean z10) {
        long[] jArr;
        synchronized (s32) {
            Q3 q32 = p32.f23970a;
            if (q32.f24031d == p32) {
                if (z10 && !q32.f24030c) {
                    for (int i10 = 0; i10 < s32.f24113h; i10++) {
                        if (p32.f23971b[i10]) {
                            if (!q32.b(i10).exists()) {
                                a(p32.f23973d, p32, false);
                                return;
                            }
                        } else {
                            a(p32.f23973d, p32, false);
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                        }
                    }
                }
                for (int i11 = 0; i11 < s32.f24113h; i11++) {
                    File b10 = q32.b(i11);
                    if (z10) {
                        if (b10.exists()) {
                            File a10 = q32.a(i11);
                            b10.renameTo(a10);
                            long j10 = q32.f24029b[i11];
                            long length = a10.length();
                            q32.f24029b[i11] = length;
                            s32.f24114i = (s32.f24114i - j10) + length;
                        }
                    } else if (b10.exists() && !b10.delete()) {
                        throw new IOException();
                    }
                }
                s32.f24117l++;
                q32.f24031d = null;
                if (q32.f24030c | z10) {
                    q32.f24030c = true;
                    BufferedWriter bufferedWriter = s32.f24115j;
                    StringBuilder sb2 = new StringBuilder("CLEAN ");
                    sb2.append(q32.f24028a);
                    StringBuilder sb3 = new StringBuilder();
                    for (long j11 : q32.f24029b) {
                        sb3.append(' ');
                        sb3.append(j11);
                    }
                    sb2.append(sb3.toString());
                    sb2.append('\n');
                    bufferedWriter.write(sb2.toString());
                    if (z10) {
                        s32.f24118m++;
                    }
                } else {
                    s32.f24116k.remove(q32.f24028a);
                    s32.f24115j.write("REMOVE " + q32.f24028a + '\n');
                }
                s32.f24115j.flush();
                if (s32.f24114i > s32.f24111f || s32.a()) {
                    s32.f24119n.submit(s32.f24120o);
                }
                return;
            }
            throw new IllegalStateException("CurrentEditor of Entry didn't match with CurrentEditor instance.");
        }
    }

    public final void b() {
        File file = this.f24108c;
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
        Iterator it = this.f24116k.values().iterator();
        while (it.hasNext()) {
            Q3 q32 = (Q3) it.next();
            int i10 = 0;
            if (q32.f24031d == null) {
                while (i10 < this.f24113h) {
                    this.f24114i += q32.f24029b[i10];
                    i10++;
                }
            } else {
                q32.f24031d = null;
                while (i10 < this.f24113h) {
                    File a10 = q32.a(i10);
                    if (a10.exists() && !a10.delete()) {
                        throw new IOException();
                    }
                    File b10 = q32.b(i10);
                    if (b10.exists() && !b10.delete()) {
                        throw new IOException();
                    }
                    i10++;
                }
                it.remove();
            }
        }
    }

    public final void c() {
        Fd fd2 = new Fd(new FileInputStream(this.f24107b), Ge.f23689a);
        try {
            String a10 = fd2.a();
            String a11 = fd2.a();
            String a12 = fd2.a();
            String a13 = fd2.a();
            String a14 = fd2.a();
            if (!"libcore.io.DiskLruCache".equals(a10) || !"1".equals(a11) || !Integer.toString(this.f24110e).equals(a12) || !Integer.toString(this.f24113h).equals(a13) || !"".equals(a14)) {
                throw new IOException("unexpected journal header: [" + a10 + ", " + a11 + ", " + a13 + ", " + a14 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    c(fd2.a());
                    i10++;
                } catch (EOFException unused) {
                    this.f24117l = i10 - this.f24116k.size();
                    Ge.a(fd2);
                    return;
                }
            }
        } catch (Throwable th2) {
            Ge.a(fd2);
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f24115j == null) {
                return;
            }
            Iterator it = new ArrayList(this.f24116k.values()).iterator();
            while (it.hasNext()) {
                P3 p32 = ((Q3) it.next()).f24031d;
                if (p32 != null) {
                    a(p32.f23973d, p32, false);
                }
            }
            while (this.f24114i > this.f24111f) {
                d((String) ((Map.Entry) this.f24116k.entrySet().iterator().next()).getKey());
            }
            this.f24115j.close();
            this.f24115j = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void d() {
        long[] jArr;
        try {
            BufferedWriter bufferedWriter = this.f24115j;
            if (bufferedWriter != null) {
                bufferedWriter.close();
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f24108c), Ge.f23689a));
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write("\n");
            bufferedWriter2.write("1");
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f24110e));
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f24113h));
            bufferedWriter2.write("\n");
            bufferedWriter2.write("\n");
            for (Q3 q32 : this.f24116k.values()) {
                if (q32.f24031d != null) {
                    bufferedWriter2.write("DIRTY " + q32.f24028a + '\n');
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("CLEAN ");
                    sb2.append(q32.f24028a);
                    StringBuilder sb3 = new StringBuilder();
                    for (long j10 : q32.f24029b) {
                        sb3.append(' ');
                        sb3.append(j10);
                    }
                    sb2.append(sb3.toString());
                    sb2.append('\n');
                    bufferedWriter2.write(sb2.toString());
                }
            }
            bufferedWriter2.close();
            if (this.f24107b.exists()) {
                File file = this.f24107b;
                File file2 = this.f24109d;
                if (file2.exists() && !file2.delete()) {
                    throw new IOException();
                }
                if (!file.renameTo(file2)) {
                    throw new IOException();
                }
            }
            if (this.f24108c.renameTo(this.f24107b)) {
                this.f24109d.delete();
                this.f24115j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f24107b, true), Ge.f23689a));
            } else {
                throw new IOException();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void c(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i10 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i10);
            if (indexOf2 == -1) {
                substring = str.substring(i10);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f24116k.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i10, indexOf2);
            }
            Q3 q32 = (Q3) this.f24116k.get(substring);
            if (q32 == null) {
                q32 = new Q3(this, substring);
                this.f24116k.put(substring, q32);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                q32.f24030c = true;
                q32.f24031d = null;
                if (split.length == q32.f24032e.f24113h) {
                    for (int i11 = 0; i11 < split.length; i11++) {
                        try {
                            q32.f24029b[i11] = Long.parseLong(split[i11]);
                        } catch (NumberFormatException unused) {
                            throw new IOException("unexpected journal line: " + Arrays.toString(split));
                        }
                    }
                    return;
                }
                throw new IOException("unexpected journal line: " + Arrays.toString(split));
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                q32.f24031d = new P3(this, q32);
                return;
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: ".concat(str));
            } else {
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    public final synchronized R3 b(String key) {
        InputStream inputStream;
        if (this.f24115j != null) {
            if (f24104p.matcher(key).matches()) {
                Q3 q32 = (Q3) this.f24116k.get(key);
                if (q32 == null) {
                    return null;
                }
                if (q32.f24030c) {
                    InputStream[] inputStreamArr = new InputStream[this.f24113h];
                    for (int i10 = 0; i10 < this.f24113h; i10++) {
                        try {
                            inputStreamArr[i10] = new FileInputStream(q32.a(i10));
                        } catch (FileNotFoundException unused) {
                            if (this.f24112g != null) {
                                Intrinsics.checkNotNullParameter(key, "key");
                                Map o10 = kotlin.collections.p0.o(ms.k.a("urlKey", key));
                                Pd pd2 = Pd.f23988a;
                                Pd.b("ResourceDiskCacheFileMissing", o10, Td.f24224a);
                            }
                            for (int i11 = 0; i11 < this.f24113h && (inputStream = inputStreamArr[i11]) != null; i11++) {
                                Ge.a(inputStream);
                            }
                            return null;
                        }
                    }
                    this.f24117l++;
                    this.f24115j.append((CharSequence) ("READ " + key + '\n'));
                    if (a()) {
                        this.f24119n.submit(this.f24120o);
                    }
                    return new R3(inputStreamArr);
                }
                return null;
            }
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + key + "\"");
        }
        throw new IllegalStateException("cache is closed");
    }

    public final synchronized void d(String str) {
        if (this.f24115j != null) {
            if (f24104p.matcher(str).matches()) {
                Q3 q32 = (Q3) this.f24116k.get(str);
                if (q32 != null && q32.f24031d == null) {
                    for (int i10 = 0; i10 < this.f24113h; i10++) {
                        File file = q32.a(i10);
                        if (this.f24112g != null) {
                            Intrinsics.checkNotNullParameter(file, "file");
                            if (str != null && i10 == 0) {
                                String str2 = "";
                                try {
                                    String a10 = Ge.a(new InputStreamReader(new FileInputStream(file), Ge.f23690b));
                                    Intrinsics.checkNotNullExpressionValue(a10, "readFully(...)");
                                    str2 = a10;
                                } catch (Exception unused) {
                                }
                                Map o10 = kotlin.collections.p0.o(ms.k.a("urlKey", str), ms.k.a("url", str2));
                                Pd pd2 = Pd.f23988a;
                                Pd.b("ResourceDiskCacheFileEvicted", o10, Td.f24224a);
                            }
                        }
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        long j10 = this.f24114i;
                        long[] jArr = q32.f24029b;
                        this.f24114i = j10 - jArr[i10];
                        jArr[i10] = 0;
                    }
                    this.f24117l++;
                    this.f24115j.append((CharSequence) ("REMOVE " + str + '\n'));
                    this.f24116k.remove(str);
                    if (a()) {
                        this.f24119n.submit(this.f24120o);
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
        throw new IllegalStateException("cache is closed");
    }

    public final P3 a(String str) {
        synchronized (this) {
            try {
                if (this.f24115j != null) {
                    if (f24104p.matcher(str).matches()) {
                        Q3 q32 = (Q3) this.f24116k.get(str);
                        if (q32 == null) {
                            q32 = new Q3(this, str);
                            this.f24116k.put(str, q32);
                        } else if (q32.f24031d != null) {
                            return null;
                        }
                        P3 p32 = new P3(this, q32);
                        q32.f24031d = p32;
                        BufferedWriter bufferedWriter = this.f24115j;
                        bufferedWriter.write("DIRTY " + str + '\n');
                        this.f24115j.flush();
                        return p32;
                    }
                    throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
                }
                throw new IllegalStateException("cache is closed");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean a() {
        int i10 = this.f24117l;
        return i10 >= 2000 && i10 >= this.f24116k.size();
    }
}
