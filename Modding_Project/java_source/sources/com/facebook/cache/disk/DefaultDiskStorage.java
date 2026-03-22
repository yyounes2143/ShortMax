package com.facebook.cache.disk;

import android.os.Environment;
import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.b;
import com.facebook.common.file.FileUtils;
import f2.f;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import k2.h;
/* loaded from: classes3.dex */
public class DefaultDiskStorage implements com.facebook.cache.disk.b {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f15229f = DefaultDiskStorage.class;

    /* renamed from: g  reason: collision with root package name */
    static final long f15230g = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a  reason: collision with root package name */
    private final File f15231a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15232b;

    /* renamed from: c  reason: collision with root package name */
    private final File f15233c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheErrorLogger f15234d;

    /* renamed from: e  reason: collision with root package name */
    private final q2.a f15235e;

    /* loaded from: classes3.dex */
    private static class IncompleteFileException extends IOException {
        public IncompleteFileException(long j10, long j11) {
            super("File was not written completely. Expected: " + j10 + ", found: " + j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a implements j2.b {

        /* renamed from: a  reason: collision with root package name */
        private final List<b.a> f15236a;

        @Override // j2.b
        public void a(File file) {
            c s10 = DefaultDiskStorage.this.s(file);
            if (s10 != null && s10.f15242a == ".cnt") {
                this.f15236a.add(new b(s10.f15243b, file));
            }
        }

        public List<b.a> d() {
            return Collections.unmodifiableList(this.f15236a);
        }

        private a() {
            this.f15236a = new ArrayList();
        }

        @Override // j2.b
        public void b(File file) {
        }

        @Override // j2.b
        public void c(File file) {
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    static class b implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private final String f15238a;

        /* renamed from: b  reason: collision with root package name */
        private final com.facebook.binaryresource.b f15239b;

        /* renamed from: c  reason: collision with root package name */
        private long f15240c;

        /* renamed from: d  reason: collision with root package name */
        private long f15241d;

        public com.facebook.binaryresource.b a() {
            return this.f15239b;
        }

        @Override // com.facebook.cache.disk.b.a
        public String getId() {
            return this.f15238a;
        }

        @Override // com.facebook.cache.disk.b.a
        public long getSize() {
            if (this.f15240c < 0) {
                this.f15240c = this.f15239b.size();
            }
            return this.f15240c;
        }

        @Override // com.facebook.cache.disk.b.a
        public long getTimestamp() {
            if (this.f15241d < 0) {
                this.f15241d = this.f15239b.d().lastModified();
            }
            return this.f15241d;
        }

        private b(String str, File file) {
            h.g(file);
            this.f15238a = (String) h.g(str);
            this.f15239b = com.facebook.binaryresource.b.b(file);
            this.f15240c = -1L;
            this.f15241d = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f15242a;

        /* renamed from: b  reason: collision with root package name */
        public final String f15243b;

        public static c b(File file) {
            String q10;
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf <= 0 || (q10 = DefaultDiskStorage.q(name.substring(lastIndexOf))) == null) {
                return null;
            }
            String substring = name.substring(0, lastIndexOf);
            if (q10.equals(".tmp")) {
                int lastIndexOf2 = substring.lastIndexOf(46);
                if (lastIndexOf2 <= 0) {
                    return null;
                }
                substring = substring.substring(0, lastIndexOf2);
            }
            return new c(q10, substring);
        }

        public File a(File file) throws IOException {
            return File.createTempFile(this.f15243b + ".", ".tmp", file);
        }

        public String c(String str) {
            return str + File.separator + this.f15243b + this.f15242a;
        }

        public String toString() {
            return this.f15242a + "(" + this.f15243b + ")";
        }

        private c(String str, String str2) {
            this.f15242a = str;
            this.f15243b = str2;
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    class d implements b.InterfaceC0258b {

        /* renamed from: a  reason: collision with root package name */
        private final String f15244a;
        @VisibleForTesting

        /* renamed from: b  reason: collision with root package name */
        final File f15245b;

        public d(String str, File file) {
            this.f15244a = str;
            this.f15245b = file;
        }

        @Override // com.facebook.cache.disk.b.InterfaceC0258b
        public void A(f fVar, Object obj) throws IOException {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.f15245b);
                try {
                    k2.c cVar = new k2.c(fileOutputStream);
                    fVar.a(cVar);
                    cVar.flush();
                    long d10 = cVar.d();
                    fileOutputStream.close();
                    if (this.f15245b.length() == d10) {
                        return;
                    }
                    throw new IncompleteFileException(d10, this.f15245b.length());
                } catch (Throwable th2) {
                    fileOutputStream.close();
                    throw th2;
                }
            } catch (FileNotFoundException e10) {
                DefaultDiskStorage.this.f15234d.a(CacheErrorLogger.CacheErrorCategory.WRITE_UPDATE_FILE_NOT_FOUND, DefaultDiskStorage.f15229f, "updateResource", e10);
                throw e10;
            }
        }

        @Override // com.facebook.cache.disk.b.InterfaceC0258b
        public com.facebook.binaryresource.a B(Object obj) throws IOException {
            return a(obj, DefaultDiskStorage.this.f15235e.now());
        }

        public com.facebook.binaryresource.a a(Object obj, long j10) throws IOException {
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory;
            File o10 = DefaultDiskStorage.this.o(this.f15244a);
            try {
                FileUtils.b(this.f15245b, o10);
                if (o10.exists()) {
                    o10.setLastModified(j10);
                }
                return com.facebook.binaryresource.b.b(o10);
            } catch (FileUtils.RenameException e10) {
                Throwable cause = e10.getCause();
                if (cause != null) {
                    if (!(cause instanceof FileUtils.ParentDirNotFoundException)) {
                        if (cause instanceof FileNotFoundException) {
                            cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND;
                        } else {
                            cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                        }
                    } else {
                        cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
                    }
                } else {
                    cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                }
                DefaultDiskStorage.this.f15234d.a(cacheErrorCategory, DefaultDiskStorage.f15229f, "commit", e10);
                throw e10;
            }
        }

        @Override // com.facebook.cache.disk.b.InterfaceC0258b
        public boolean z() {
            if (this.f15245b.exists() && !this.f15245b.delete()) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    private class e implements j2.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15247a;

        private boolean d(File file) {
            c s10 = DefaultDiskStorage.this.s(file);
            boolean z10 = false;
            if (s10 == null) {
                return false;
            }
            String str = s10.f15242a;
            if (str == ".tmp") {
                return e(file);
            }
            if (str == ".cnt") {
                z10 = true;
            }
            h.i(z10);
            return true;
        }

        private boolean e(File file) {
            if (file.lastModified() > DefaultDiskStorage.this.f15235e.now() - DefaultDiskStorage.f15230g) {
                return true;
            }
            return false;
        }

        @Override // j2.b
        public void a(File file) {
            if (!this.f15247a || !d(file)) {
                file.delete();
            }
        }

        @Override // j2.b
        public void b(File file) {
            if (!DefaultDiskStorage.this.f15231a.equals(file) && !this.f15247a) {
                file.delete();
            }
            if (this.f15247a && file.equals(DefaultDiskStorage.this.f15233c)) {
                this.f15247a = false;
            }
        }

        @Override // j2.b
        public void c(File file) {
            if (!this.f15247a && file.equals(DefaultDiskStorage.this.f15233c)) {
                this.f15247a = true;
            }
        }

        private e() {
        }
    }

    public DefaultDiskStorage(File file, int i10, CacheErrorLogger cacheErrorLogger) {
        h.g(file);
        this.f15231a = file;
        this.f15232b = w(file, cacheErrorLogger);
        this.f15233c = new File(file, v(i10));
        this.f15234d = cacheErrorLogger;
        z();
        this.f15235e = q2.d.a();
    }

    private long n(File file) {
        if (!file.exists()) {
            return 0L;
        }
        long length = file.length();
        if (file.delete()) {
            return length;
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String q(String str) {
        if (".cnt".equals(str)) {
            return ".cnt";
        }
        if (".tmp".equals(str)) {
            return ".tmp";
        }
        return null;
    }

    private String r(String str) {
        c cVar = new c(".cnt", str);
        return cVar.c(u(cVar.f15243b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c s(File file) {
        c b10 = c.b(file);
        if (b10 == null || !t(b10.f15243b).equals(file.getParentFile())) {
            return null;
        }
        return b10;
    }

    private File t(String str) {
        return new File(u(str));
    }

    private String u(String str) {
        String valueOf = String.valueOf(Math.abs(str.hashCode() % 100));
        return this.f15233c + File.separator + valueOf;
    }

    @VisibleForTesting
    static String v(int i10) {
        return String.format(null, "%s.ols%d.%d", "v2", 100, Integer.valueOf(i10));
    }

    private static boolean w(File file, CacheErrorLogger cacheErrorLogger) {
        String str;
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return false;
            }
            String file2 = externalStorageDirectory.toString();
            try {
                str = file.getCanonicalPath();
            } catch (IOException e10) {
                e = e10;
                str = null;
            }
            try {
                return str.contains(file2);
            } catch (IOException e11) {
                e = e11;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.OTHER;
                Class<?> cls = f15229f;
                cacheErrorLogger.a(cacheErrorCategory, cls, "failed to read folder to check if external: " + str, e);
                return false;
            }
        } catch (Exception e12) {
            cacheErrorLogger.a(CacheErrorLogger.CacheErrorCategory.OTHER, f15229f, "failed to get the external storage directory!", e12);
            return false;
        }
    }

    private void x(File file, String str) throws IOException {
        try {
            FileUtils.a(file);
        } catch (FileUtils.CreateDirectoryException e10) {
            this.f15234d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f15229f, str, e10);
            throw e10;
        }
    }

    private boolean y(String str, boolean z10) {
        File o10 = o(str);
        boolean exists = o10.exists();
        if (z10 && exists) {
            o10.setLastModified(this.f15235e.now());
        }
        return exists;
    }

    private void z() {
        if (this.f15231a.exists()) {
            if (!this.f15233c.exists()) {
                j2.a.b(this.f15231a);
            } else {
                return;
            }
        }
        try {
            FileUtils.a(this.f15233c);
        } catch (FileUtils.CreateDirectoryException unused) {
            CacheErrorLogger cacheErrorLogger = this.f15234d;
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR;
            Class<?> cls = f15229f;
            cacheErrorLogger.a(cacheErrorCategory, cls, "version directory could not be created: " + this.f15233c, null);
        }
    }

    @Override // com.facebook.cache.disk.b
    public long a(b.a aVar) {
        return n(((b) aVar).a().d());
    }

    @Override // com.facebook.cache.disk.b
    public b.InterfaceC0258b b(String str, Object obj) throws IOException {
        c cVar = new c(".tmp", str);
        File t10 = t(cVar.f15243b);
        if (!t10.exists()) {
            x(t10, "insert");
        }
        try {
            return new d(str, cVar.a(t10));
        } catch (IOException e10) {
            this.f15234d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_TEMPFILE, f15229f, "insert", e10);
            throw e10;
        }
    }

    @Override // com.facebook.cache.disk.b
    public boolean c(String str, Object obj) {
        return y(str, false);
    }

    @Override // com.facebook.cache.disk.b
    public void d() {
        j2.a.c(this.f15231a, new e());
    }

    @Override // com.facebook.cache.disk.b
    public boolean e(String str, Object obj) {
        return y(str, true);
    }

    @Override // com.facebook.cache.disk.b
    public com.facebook.binaryresource.a f(String str, Object obj) {
        File o10 = o(str);
        if (o10.exists()) {
            o10.setLastModified(this.f15235e.now());
            return com.facebook.binaryresource.b.c(o10);
        }
        return null;
    }

    @Override // com.facebook.cache.disk.b
    public boolean isExternal() {
        return this.f15232b;
    }

    @VisibleForTesting
    File o(String str) {
        return new File(r(str));
    }

    @Override // com.facebook.cache.disk.b
    /* renamed from: p */
    public List<b.a> getEntries() throws IOException {
        a aVar = new a();
        j2.a.c(this.f15233c, aVar);
        return aVar.d();
    }

    @Override // com.facebook.cache.disk.b
    public long remove(String str) {
        return n(o(str));
    }
}
