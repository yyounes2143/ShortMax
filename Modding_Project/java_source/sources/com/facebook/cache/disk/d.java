package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.b;
import com.facebook.common.file.FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import k2.h;
import k2.k;
/* compiled from: DynamicDefaultDiskStorage.java */
/* loaded from: classes3.dex */
public class d implements b {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f15277f = d.class;

    /* renamed from: a  reason: collision with root package name */
    private final int f15278a;

    /* renamed from: b  reason: collision with root package name */
    private final k<File> f15279b;

    /* renamed from: c  reason: collision with root package name */
    private final String f15280c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheErrorLogger f15281d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    volatile a f15282e = new a(null, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicDefaultDiskStorage.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final b f15283a;

        /* renamed from: b  reason: collision with root package name */
        public final File f15284b;

        @VisibleForTesting
        a(File file, b bVar) {
            this.f15283a = bVar;
            this.f15284b = file;
        }
    }

    public d(int i10, k<File> kVar, String str, CacheErrorLogger cacheErrorLogger) {
        this.f15278a = i10;
        this.f15281d = cacheErrorLogger;
        this.f15279b = kVar;
        this.f15280c = str;
    }

    private void h() throws IOException {
        File file = new File(this.f15279b.get(), this.f15280c);
        g(file);
        this.f15282e = new a(file, new DefaultDiskStorage(file, this.f15278a, this.f15281d));
    }

    private boolean k() {
        File file;
        a aVar = this.f15282e;
        if (aVar.f15283a != null && (file = aVar.f15284b) != null && file.exists()) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.cache.disk.b
    public long a(b.a aVar) throws IOException {
        return j().a(aVar);
    }

    @Override // com.facebook.cache.disk.b
    public b.InterfaceC0258b b(String str, Object obj) throws IOException {
        return j().b(str, obj);
    }

    @Override // com.facebook.cache.disk.b
    public boolean c(String str, Object obj) throws IOException {
        return j().c(str, obj);
    }

    @Override // com.facebook.cache.disk.b
    public void d() {
        try {
            j().d();
        } catch (IOException e10) {
            l2.a.f(f15277f, "purgeUnexpectedResources", e10);
        }
    }

    @Override // com.facebook.cache.disk.b
    public boolean e(String str, Object obj) throws IOException {
        return j().e(str, obj);
    }

    @Override // com.facebook.cache.disk.b
    public com.facebook.binaryresource.a f(String str, Object obj) throws IOException {
        return j().f(str, obj);
    }

    @VisibleForTesting
    void g(File file) throws IOException {
        try {
            FileUtils.a(file);
            l2.a.a(f15277f, "Created cache directory %s", file.getAbsolutePath());
        } catch (FileUtils.CreateDirectoryException e10) {
            this.f15281d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f15277f, "createRootDirectoryIfNecessary", e10);
            throw e10;
        }
    }

    @Override // com.facebook.cache.disk.b
    public Collection<b.a> getEntries() throws IOException {
        return j().getEntries();
    }

    @VisibleForTesting
    void i() {
        if (this.f15282e.f15283a != null && this.f15282e.f15284b != null) {
            j2.a.b(this.f15282e.f15284b);
        }
    }

    @Override // com.facebook.cache.disk.b
    public boolean isExternal() {
        try {
            return j().isExternal();
        } catch (IOException unused) {
            return false;
        }
    }

    @VisibleForTesting
    synchronized b j() throws IOException {
        try {
            if (k()) {
                i();
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (b) h.g(this.f15282e.f15283a);
    }

    @Override // com.facebook.cache.disk.b
    public long remove(String str) throws IOException {
        return j().remove(str);
    }
}
