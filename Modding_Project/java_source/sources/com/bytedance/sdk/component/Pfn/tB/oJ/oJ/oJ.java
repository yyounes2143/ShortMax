package com.bytedance.sdk.component.Pfn.tB.oJ.oJ;

import android.util.Log;
import com.bytedance.sdk.component.utils.kkU;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class oJ implements Closeable {
    static final Pattern oJ = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream tB = new OutputStream() { // from class: com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ.2
        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
        }
    };
    private Writer BTZ;
    private final File Pfn;
    private int WcQ;
    final ExecutorService ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final File f12587ba;
    private final File cFZ;
    private final File ex;
    private long jFA;
    private final int kkU;

    /* renamed from: so  reason: collision with root package name */
    private final int f12589so;
    private long dLZ = 0;
    private final LinkedHashMap<String, ZYk> PiB = new LinkedHashMap<>(0, 0.75f, true);
    private long awB = -1;
    private long eZI = 0;

    /* renamed from: si  reason: collision with root package name */
    private final Callable<Void> f12588si = new Callable<Void>() { // from class: com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ.1
        @Override // java.util.concurrent.Callable
        /* renamed from: oJ */
        public Void call() throws Exception {
            synchronized (oJ.this) {
                try {
                    if (oJ.this.BTZ != null) {
                        oJ.this.so();
                        if (oJ.this.ba()) {
                            oJ.this.Pfn();
                            oJ.this.WcQ = 0;
                        }
                        return null;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class ZYk {
        private C0159oJ Pfn;
        private final String ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private long f12590ba;
        private boolean ex;
        private final long[] tB;

        private ZYk(String str) {
            this.ZYk = str;
            this.tB = new long[oJ.this.kkU];
        }

        private IOException ZYk(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File ZYk(int i10) {
            File file = oJ.this.ex;
            return new File(file, this.ZYk + "." + i10 + ".tmp");
        }

        public String oJ() throws IOException {
            long[] jArr;
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.tB) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void oJ(String[] strArr) throws IOException {
            if (strArr.length == oJ.this.kkU) {
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    try {
                        this.tB[i10] = Long.parseLong(strArr[i10]);
                    } catch (NumberFormatException unused) {
                        throw ZYk(strArr);
                    }
                }
                return;
            }
            throw ZYk(strArr);
        }

        public File oJ(int i10) {
            File file = oJ.this.ex;
            return new File(file, this.ZYk + "." + i10);
        }
    }

    /* renamed from: com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public final class C0159oJ {
        private boolean Pfn;
        private final ZYk ZYk;
        private boolean ex;
        private final boolean[] tB;

        /* renamed from: com.bytedance.sdk.component.Pfn.tB.oJ.oJ.oJ$oJ$oJ  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        private class C0160oJ extends FilterOutputStream {
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0159oJ.this.ex = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0159oJ.this.ex = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i10) {
                try {
                    ((FilterOutputStream) this).out.write(i10);
                } catch (IOException unused) {
                    C0159oJ.this.ex = true;
                }
            }

            private C0160oJ(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i10, i11);
                } catch (IOException unused) {
                    C0159oJ.this.ex = true;
                }
            }
        }

        private C0159oJ(ZYk zYk) {
            this.ZYk = zYk;
            this.tB = zYk.ex ? null : new boolean[oJ.this.kkU];
        }

        public void ZYk() throws IOException {
            oJ.this.oJ(this, false);
        }

        public OutputStream oJ(int i10) throws IOException {
            FileOutputStream fileOutputStream;
            C0160oJ c0160oJ;
            if (i10 < 0 || i10 >= oJ.this.kkU) {
                throw new IllegalArgumentException("Expected index " + i10 + " to be greater than 0 and less than the maximum value count of " + oJ.this.kkU);
            }
            synchronized (oJ.this) {
                try {
                    if (this.ZYk.Pfn == this) {
                        if (!this.ZYk.ex) {
                            this.tB[i10] = true;
                        }
                        File ZYk = this.ZYk.ZYk(i10);
                        try {
                            fileOutputStream = new FileOutputStream(ZYk);
                        } catch (FileNotFoundException unused) {
                            oJ.this.ex.mkdirs();
                            try {
                                fileOutputStream = new FileOutputStream(ZYk);
                            } catch (FileNotFoundException unused2) {
                                return oJ.tB;
                            }
                        }
                        c0160oJ = new C0160oJ(fileOutputStream);
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return c0160oJ;
        }

        public void oJ() throws IOException {
            if (this.ex) {
                oJ.this.oJ(this, false);
                oJ.this.tB(this.ZYk.ZYk);
            } else {
                oJ.this.oJ(this, true);
            }
            this.Pfn = true;
        }
    }

    /* loaded from: classes3.dex */
    public final class tB implements Closeable {
        private final long[] Pfn;
        private final String ZYk;
        private final InputStream[] ex;
        private final long tB;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.ex) {
                kkU.oJ(inputStream);
            }
        }

        public InputStream oJ(int i10) {
            return this.ex[i10];
        }

        private tB(String str, long j10, InputStream[] inputStreamArr, long[] jArr) {
            this.ZYk = str;
            this.tB = j10;
            this.ex = inputStreamArr;
            this.Pfn = jArr;
        }
    }

    private oJ(File file, int i10, int i11, long j10, ExecutorService executorService) {
        this.ex = file;
        this.f12589so = i10;
        this.Pfn = new File(file, "journal");
        this.f12587ba = new File(file, "journal.tmp");
        this.cFZ = new File(file, "journal.bkp");
        this.kkU = i11;
        this.jFA = j10;
        this.ZYk = executorService;
    }

    private void cFZ() {
        if (this.BTZ != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void so() throws IOException {
        long j10 = this.jFA;
        long j11 = this.awB;
        if (j11 >= 0) {
            j10 = j11;
        }
        while (this.dLZ > j10) {
            tB(this.PiB.entrySet().iterator().next().getKey());
        }
        this.awB = -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.BTZ == null) {
                return;
            }
            Iterator it = new ArrayList(this.PiB.values()).iterator();
            while (it.hasNext()) {
                ZYk zYk = (ZYk) it.next();
                if (zYk.Pfn != null) {
                    zYk.Pfn.ZYk();
                }
            }
            so();
            this.BTZ.close();
            this.BTZ = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Pfn() throws IOException {
        try {
            Writer writer = this.BTZ;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f12587ba), ex.oJ));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f12589so));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.kkU));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (ZYk zYk : this.PiB.values()) {
                if (zYk.Pfn != null) {
                    bufferedWriter.write("DIRTY " + zYk.ZYk + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + zYk.ZYk + zYk.oJ() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.Pfn.exists()) {
                oJ(this.Pfn, this.cFZ, true);
            }
            oJ(this.f12587ba, this.Pfn, false);
            this.cFZ.delete();
            this.BTZ = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.Pfn, true), ex.oJ));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ba() {
        int i10 = this.WcQ;
        return i10 >= 2000 && i10 >= this.PiB.size();
    }

    private void ex(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i10 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i10);
            if (indexOf2 == -1) {
                substring = str.substring(i10);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.PiB.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i10, indexOf2);
            }
            ZYk zYk = this.PiB.get(substring);
            if (zYk == null) {
                zYk = new ZYk(substring);
                this.PiB.put(substring, zYk);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                zYk.ex = true;
                zYk.Pfn = null;
                zYk.oJ(split);
                return;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                zYk.Pfn = new C0159oJ(zYk);
                return;
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: ".concat(str));
            } else {
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    private void tB() throws IOException {
        com.bytedance.sdk.component.Pfn.tB.oJ.oJ.tB tBVar = new com.bytedance.sdk.component.Pfn.tB.oJ.oJ.tB(new FileInputStream(this.Pfn), ex.oJ);
        try {
            String oJ2 = tBVar.oJ();
            String oJ3 = tBVar.oJ();
            String oJ4 = tBVar.oJ();
            String oJ5 = tBVar.oJ();
            String oJ6 = tBVar.oJ();
            if (!"libcore.io.DiskLruCache".equals(oJ2) || !"1".equals(oJ3) || !Integer.toString(this.f12589so).equals(oJ4) || !Integer.toString(this.kkU).equals(oJ5) || !"".equals(oJ6)) {
                throw new IOException("unexpected journal header: [" + oJ2 + ", " + oJ3 + ", " + oJ5 + ", " + oJ6 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    ex(tBVar.oJ());
                    i10++;
                } catch (EOFException unused) {
                    this.WcQ = i10 - this.PiB.size();
                    if (tBVar.ZYk()) {
                        Pfn();
                    } else {
                        this.BTZ = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.Pfn, true), ex.oJ));
                    }
                    kkU.oJ(tBVar);
                    return;
                }
            }
        } catch (Throwable th2) {
            kkU.oJ(tBVar);
            throw th2;
        }
    }

    public C0159oJ ZYk(String str) throws IOException {
        return oJ(str, -1L);
    }

    public void ZYk() throws IOException {
        close();
        ex.oJ(this.ex);
    }

    public static oJ oJ(File file, int i10, int i11, long j10, ExecutorService executorService) throws IOException {
        if (j10 > 0) {
            if (i11 > 0) {
                File file2 = new File(file, "journal.bkp");
                if (file2.exists()) {
                    File file3 = new File(file, "journal");
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        oJ(file2, file3, false);
                    }
                }
                oJ oJVar = new oJ(file, i10, i11, j10, executorService);
                if (oJVar.Pfn.exists()) {
                    try {
                        oJVar.tB();
                        oJVar.ex();
                        return oJVar;
                    } catch (IOException e10) {
                        Log.w("DiskLruCache ", file + " is corrupt: " + e10.getMessage() + ", removing");
                        oJVar.ZYk();
                    }
                }
                file.mkdirs();
                oJ oJVar2 = new oJ(file, i10, i11, j10, executorService);
                oJVar2.Pfn();
                return oJVar2;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public synchronized boolean tB(String str) throws IOException {
        try {
            cFZ();
            Pfn(str);
            ZYk zYk = this.PiB.get(str);
            if (zYk != null && zYk.Pfn == null) {
                for (int i10 = 0; i10 < this.kkU; i10++) {
                    File oJ2 = zYk.oJ(i10);
                    if (oJ2.exists() && !oJ2.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(oJ2)));
                    }
                    this.dLZ -= zYk.tB[i10];
                    zYk.tB[i10] = 0;
                }
                this.WcQ++;
                this.BTZ.append((CharSequence) ("REMOVE " + str + '\n'));
                this.PiB.remove(str);
                if (ba()) {
                    this.ZYk.submit(this.f12588si);
                }
                return true;
            }
            return false;
        } finally {
        }
    }

    private void ex() throws IOException {
        oJ(this.f12587ba);
        Iterator<ZYk> it = this.PiB.values().iterator();
        while (it.hasNext()) {
            ZYk next = it.next();
            int i10 = 0;
            if (next.Pfn != null) {
                next.Pfn = null;
                while (i10 < this.kkU) {
                    oJ(next.oJ(i10));
                    oJ(next.ZYk(i10));
                    i10++;
                }
                it.remove();
            } else {
                while (i10 < this.kkU) {
                    this.dLZ += next.tB[i10];
                    i10++;
                }
            }
        }
    }

    private static void oJ(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void oJ(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            oJ(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void Pfn(String str) {
        if (oJ.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public synchronized tB oJ(String str) throws IOException {
        InputStream inputStream;
        cFZ();
        Pfn(str);
        ZYk zYk = this.PiB.get(str);
        if (zYk == null) {
            return null;
        }
        if (zYk.ex) {
            InputStream[] inputStreamArr = new InputStream[this.kkU];
            for (int i10 = 0; i10 < this.kkU; i10++) {
                try {
                    inputStreamArr[i10] = new FileInputStream(zYk.oJ(i10));
                } catch (FileNotFoundException unused) {
                    for (int i11 = 0; i11 < this.kkU && (inputStream = inputStreamArr[i11]) != null; i11++) {
                        kkU.oJ(inputStream);
                    }
                    return null;
                }
            }
            this.WcQ++;
            this.BTZ.append((CharSequence) ("READ " + str + '\n'));
            if (ba()) {
                this.ZYk.submit(this.f12588si);
            }
            return new tB(str, zYk.f12590ba, inputStreamArr, zYk.tB);
        }
        return null;
    }

    private synchronized C0159oJ oJ(String str, long j10) throws IOException {
        cFZ();
        Pfn(str);
        ZYk zYk = this.PiB.get(str);
        if (j10 == -1 || (zYk != null && zYk.f12590ba == j10)) {
            if (zYk != null) {
                if (zYk.Pfn != null) {
                    return null;
                }
            } else {
                zYk = new ZYk(str);
                this.PiB.put(str, zYk);
            }
            C0159oJ c0159oJ = new C0159oJ(zYk);
            zYk.Pfn = c0159oJ;
            Writer writer = this.BTZ;
            writer.write("DIRTY " + str + '\n');
            this.BTZ.flush();
            return c0159oJ;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void oJ(C0159oJ c0159oJ, boolean z10) throws IOException {
        ZYk zYk = c0159oJ.ZYk;
        if (zYk.Pfn == c0159oJ) {
            if (z10 && !zYk.ex) {
                for (int i10 = 0; i10 < this.kkU; i10++) {
                    if (c0159oJ.tB[i10]) {
                        if (!zYk.ZYk(i10).exists()) {
                            c0159oJ.ZYk();
                            return;
                        }
                    } else {
                        c0159oJ.ZYk();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i10)));
                    }
                }
            }
            for (int i11 = 0; i11 < this.kkU; i11++) {
                File ZYk2 = zYk.ZYk(i11);
                if (z10) {
                    if (ZYk2.exists()) {
                        File oJ2 = zYk.oJ(i11);
                        ZYk2.renameTo(oJ2);
                        long j10 = zYk.tB[i11];
                        long length = oJ2.length();
                        zYk.tB[i11] = length;
                        this.dLZ = (this.dLZ - j10) + length;
                    }
                } else {
                    oJ(ZYk2);
                }
            }
            this.WcQ++;
            zYk.Pfn = null;
            if (!(zYk.ex | z10)) {
                this.PiB.remove(zYk.ZYk);
                this.BTZ.write("REMOVE " + zYk.ZYk + '\n');
            } else {
                zYk.ex = true;
                this.BTZ.write("CLEAN " + zYk.ZYk + zYk.oJ() + '\n');
                if (z10) {
                    long j11 = this.eZI;
                    this.eZI = 1 + j11;
                    zYk.f12590ba = j11;
                }
            }
            this.BTZ.flush();
            if (this.dLZ > this.jFA || ba()) {
                this.ZYk.submit(this.f12588si);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public synchronized void oJ() throws IOException {
        cFZ();
        so();
        this.BTZ.flush();
    }
}
