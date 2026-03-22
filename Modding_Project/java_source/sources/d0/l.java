package d0;

import d0.m;
import java.io.Closeable;
import kotlin.Metadata;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageSource.kt */
@Metadata
/* loaded from: classes2.dex */
public final class l extends m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Path f49749a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final FileSystem f49750b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f49751c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Closeable f49752d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final m.a f49753e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f49754f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BufferedSource f49755g;

    public l(@NotNull Path path, @NotNull FileSystem fileSystem, @Nullable String str, @Nullable Closeable closeable, @Nullable m.a aVar) {
        super(null);
        this.f49749a = path;
        this.f49750b = fileSystem;
        this.f49751c = str;
        this.f49752d = closeable;
        this.f49753e = aVar;
    }

    private final void l() {
        if (!this.f49754f) {
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.f49754f = true;
            BufferedSource bufferedSource = this.f49755g;
            if (bufferedSource != null) {
                r0.i.d(bufferedSource);
            }
            Closeable closeable = this.f49752d;
            if (closeable != null) {
                r0.i.d(closeable);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // d0.m
    @Nullable
    public m.a d() {
        return this.f49753e;
    }

    @Override // d0.m
    @NotNull
    public synchronized BufferedSource k() {
        l();
        BufferedSource bufferedSource = this.f49755g;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        BufferedSource buffer = Okio.buffer(o().source(this.f49749a));
        this.f49755g = buffer;
        return buffer;
    }

    @Nullable
    public final String m() {
        return this.f49751c;
    }

    @NotNull
    public FileSystem o() {
        return this.f49750b;
    }
}
