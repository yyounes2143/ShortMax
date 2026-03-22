package d0;

import d0.m;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageSource.kt */
@Metadata
/* loaded from: classes2.dex */
public final class p extends m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final File f49759a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final m.a f49760b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f49761c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BufferedSource f49762d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Path f49763e;

    public p(@NotNull BufferedSource bufferedSource, @NotNull File file, @Nullable m.a aVar) {
        super(null);
        this.f49759a = file;
        this.f49760b = aVar;
        this.f49762d = bufferedSource;
        if (file.isDirectory()) {
            return;
        }
        throw new IllegalArgumentException("cacheDirectory must be a directory.");
    }

    private final void l() {
        if (!this.f49761c) {
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.f49761c = true;
            BufferedSource bufferedSource = this.f49762d;
            if (bufferedSource != null) {
                r0.i.d(bufferedSource);
            }
            Path path = this.f49763e;
            if (path != null) {
                m().delete(path);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // d0.m
    @Nullable
    public m.a d() {
        return this.f49760b;
    }

    @Override // d0.m
    @NotNull
    public synchronized BufferedSource k() {
        l();
        BufferedSource bufferedSource = this.f49762d;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        FileSystem m10 = m();
        Path path = this.f49763e;
        Intrinsics.checkNotNull(path);
        BufferedSource buffer = Okio.buffer(m10.source(path));
        this.f49762d = buffer;
        return buffer;
    }

    @NotNull
    public FileSystem m() {
        return FileSystem.SYSTEM;
    }
}
