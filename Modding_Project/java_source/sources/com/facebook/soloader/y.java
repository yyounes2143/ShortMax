package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.SyncFailedException;
import java.util.Arrays;
/* compiled from: UnpackingSoSource.java */
/* loaded from: classes2.dex */
public abstract class y extends f implements com.facebook.soloader.b {

    /* renamed from: d  reason: collision with root package name */
    protected final Context f16875d;

    /* renamed from: e  reason: collision with root package name */
    private String[] f16876e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public class a implements FilenameFilter {
        a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.equals("dso_state") && !str.equals("dso_lock") && !str.equals("dso_deps")) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16878a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ File f16879b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ m f16880c;

        b(boolean z10, File file, m mVar) {
            this.f16878a = z10;
            this.f16879b = file;
            this.f16880c = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.f("fb-UnpackingSoSource", "starting syncer worker");
            try {
                if (this.f16878a) {
                    SysUtil.f(y.this.f16843a);
                }
                y.u(this.f16879b, (byte) 1, this.f16878a);
                o.f("fb-UnpackingSoSource", "releasing dso store lock for " + y.this.f16843a + " (from syncer thread)");
                this.f16880c.close();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f16882a;

        /* renamed from: b  reason: collision with root package name */
        public final String f16883b;

        public c(String str, String str2) {
            this.f16882a = str;
            this.f16883b = str2;
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    protected static final class d implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        private final c f16884a;

        /* renamed from: b  reason: collision with root package name */
        private final InputStream f16885b;

        public d(c cVar, InputStream inputStream) {
            this.f16884a = cVar;
            this.f16885b = inputStream;
        }

        public int available() throws IOException {
            return this.f16885b.available();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f16885b.close();
        }

        public c d() {
            return this.f16884a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y(Context context, String str, boolean z10) {
        super(p(context, str), z10 ? 1 : 0);
        this.f16875d = context;
    }

    private void j() throws IOException {
        File[] listFiles = this.f16843a.listFiles(new a());
        if (listFiles != null) {
            for (File file : listFiles) {
                o.f("fb-UnpackingSoSource", "Deleting " + file);
                SysUtil.c(file);
            }
            return;
        }
        throw new IOException("unable to list directory " + this.f16843a);
    }

    private static boolean m(int i10) {
        if ((i10 & 2) != 0) {
            return true;
        }
        return false;
    }

    public static File p(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + DomExceptionUtils.SEPARATOR + str);
    }

    private boolean r(m mVar, int i10) throws IOException {
        byte b10;
        boolean z10;
        RandomAccessFile randomAccessFile;
        File file = new File(this.f16843a, "dso_state");
        byte[] n10 = n();
        if (!m(i10) && !k(n10)) {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                if (randomAccessFile.length() == 1) {
                    try {
                        b10 = randomAccessFile.readByte();
                    } catch (IOException e10) {
                        o.f("fb-UnpackingSoSource", "dso store " + this.f16843a + " regeneration interrupted: " + e10.getMessage());
                    }
                    if (b10 == 1) {
                        o.f("fb-UnpackingSoSource", "dso store " + this.f16843a + " regeneration not needed: state file clean");
                        randomAccessFile.close();
                    }
                }
                b10 = 0;
                randomAccessFile.close();
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            b10 = 0;
        }
        if (b10 == 1) {
            return false;
        }
        if ((i10 & 4) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        o.f("fb-UnpackingSoSource", "so store dirty: regenerating");
        u(file, (byte) 0, z10);
        j();
        e q10 = q();
        try {
            q10.g(this.f16843a);
            q10.close();
            randomAccessFile = new RandomAccessFile(new File(this.f16843a, "dso_deps"), "rw");
            try {
                randomAccessFile.write(n10);
                randomAccessFile.setLength(randomAccessFile.getFilePointer());
                randomAccessFile.close();
                b bVar = new b(z10, file, mVar);
                if (s(i10)) {
                    new Thread(bVar, "SoSync:" + this.f16843a.getName()).start();
                } else {
                    bVar.run();
                }
                return true;
            } finally {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
        } catch (Throwable th4) {
            if (q10 != null) {
                try {
                    q10.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
            }
            throw th4;
        }
    }

    private static boolean s(int i10) {
        if ((i10 & 1) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u(File file, byte b10, boolean z10) throws IOException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(0L);
            randomAccessFile.write(b10);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            if (z10) {
                randomAccessFile.getFD().sync();
            }
            randomAccessFile.close();
        } catch (SyncFailedException e10) {
            o.h("fb-UnpackingSoSource", "state file sync failed", e10);
        }
    }

    @Override // com.facebook.soloader.b
    public void a() {
        try {
            m i10 = SysUtil.i(this.f16843a, new File(this.f16843a, "dso_lock"));
            if (i10 != null) {
                i10.close();
            }
        } catch (Exception e10) {
            o.c("fb-UnpackingSoSource", "Encountered exception during wait for unpacking trying to acquire file lock for " + getClass().getName() + " (" + this.f16843a + "): ", e10);
        }
    }

    @Override // com.facebook.soloader.w
    public void e(int i10) throws IOException {
        SysUtil.m(this.f16843a);
        if (!this.f16843a.canWrite() && !this.f16843a.setWritable(true)) {
            throw new IOException("error adding " + this.f16843a.getCanonicalPath() + " write permission");
        }
        m mVar = null;
        try {
            try {
                m i11 = SysUtil.i(this.f16843a, new File(this.f16843a, "dso_lock"));
                try {
                    o.f("fb-UnpackingSoSource", "locked dso store " + this.f16843a);
                    if (!this.f16843a.canWrite() && !this.f16843a.setWritable(true)) {
                        throw new IOException("error adding " + this.f16843a.getCanonicalPath() + " write permission");
                    }
                    if (!r(i11, i10)) {
                        o.d("fb-UnpackingSoSource", "dso store is up-to-date: " + this.f16843a);
                        mVar = i11;
                    }
                    if (mVar != null) {
                        o.f("fb-UnpackingSoSource", "releasing dso store lock for " + this.f16843a);
                        mVar.close();
                    } else {
                        o.f("fb-UnpackingSoSource", "not releasing dso store lock for " + this.f16843a + " (syncer thread started)");
                    }
                    if (this.f16843a.canWrite() && !this.f16843a.setWritable(false)) {
                        throw new IOException("error removing " + this.f16843a.getCanonicalPath() + " write permission");
                    }
                } catch (Throwable th2) {
                    th = th2;
                    mVar = i11;
                    if (mVar != null) {
                        o.f("fb-UnpackingSoSource", "releasing dso store lock for " + this.f16843a);
                        mVar.close();
                    } else {
                        o.f("fb-UnpackingSoSource", "not releasing dso store lock for " + this.f16843a + " (syncer thread started)");
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (this.f16843a.canWrite() && !this.f16843a.setWritable(false)) {
                    throw new IOException("error removing " + this.f16843a.getCanonicalPath() + " write permission");
                }
                throw th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    protected boolean k(byte[] bArr) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.f16843a, "dso_deps"), "rw");
            if (randomAccessFile.length() == 0) {
                randomAccessFile.close();
                return true;
            }
            int length = (int) randomAccessFile.length();
            byte[] bArr2 = new byte[length];
            if (randomAccessFile.read(bArr2) != length) {
                o.f("fb-UnpackingSoSource", "short read of so store deps file: marking unclean");
                randomAccessFile.close();
                return true;
            }
            boolean l10 = l(bArr2, bArr);
            randomAccessFile.close();
            return l10;
        } catch (IOException e10) {
            o.h("fb-UnpackingSoSource", "failed to compare whether deps changed", e10);
            return true;
        }
    }

    protected boolean l(byte[] bArr, byte[] bArr2) {
        return !Arrays.equals(bArr, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] n() throws IOException {
        Parcel obtain = Parcel.obtain();
        e q10 = q();
        try {
            c[] d10 = q10.d();
            obtain.writeInt(d10.length);
            for (c cVar : d10) {
                obtain.writeString(cVar.f16882a);
                obtain.writeString(cVar.f16883b);
            }
            q10.close();
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            return marshall;
        } catch (Throwable th2) {
            if (q10 != null) {
                try {
                    q10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public c[] o() throws IOException {
        e q10 = q();
        try {
            c[] d10 = q10.d();
            q10.close();
            return d10;
        } catch (Throwable th2) {
            if (q10 != null) {
                try {
                    q10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    protected abstract e q() throws IOException;

    public void t(String[] strArr) {
        this.f16876e = strArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y(Context context, String str) {
        this(context, str, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static abstract class e implements Closeable {
        public void a(d dVar, byte[] bArr, File file) throws IOException {
            boolean exists;
            boolean writable;
            o.d("fb-UnpackingSoSource", "extracting DSO " + dVar.d().f16882a);
            File file2 = new File(file, dVar.d().f16882a);
            try {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                    try {
                        int available = dVar.available();
                        if (available > 1) {
                            SysUtil.d(randomAccessFile.getFD(), available);
                        }
                        SysUtil.a(randomAccessFile, dVar.f16885b, Integer.MAX_VALUE, bArr);
                        randomAccessFile.setLength(randomAccessFile.getFilePointer());
                        if (file2.setExecutable(true, false)) {
                            randomAccessFile.close();
                            if (exists) {
                                if (!writable) {
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        throw new IOException("cannot make file executable: " + file2);
                    } catch (Throwable th2) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (IOException e10) {
                    o.b("fb-UnpackingSoSource", "error extracting dso  " + file2 + " due to: " + e10);
                    SysUtil.c(file2);
                    throw e10;
                }
            } finally {
                if (file2.exists() && !file2.setWritable(false)) {
                    o.b("SoLoader", "Error removing " + file2 + " write permission from directory " + file + " (writable: " + file.canWrite() + ")");
                }
            }
        }

        public abstract c[] d() throws IOException;

        public abstract void g(File file) throws IOException;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }
}
