package e0;

import coil.disk.DiskLruCache;
import e0.a;
import gt.c0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealDiskCache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c implements e0.a {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f50716e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f50717a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Path f50718b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final FileSystem f50719c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final DiskLruCache f50720d;

    /* compiled from: RealDiskCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealDiskCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b implements a.b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final DiskLruCache.b f50721a;

        public b(@NotNull DiskLruCache.b bVar) {
            this.f50721a = bVar;
        }

        @Override // e0.a.b
        public void abort() {
            this.f50721a.a();
        }

        @Override // e0.a.b
        @Nullable
        /* renamed from: b */
        public C0711c a() {
            DiskLruCache.d c10 = this.f50721a.c();
            if (c10 != null) {
                return new C0711c(c10);
            }
            return null;
        }

        @Override // e0.a.b
        @NotNull
        public Path getData() {
            return this.f50721a.f(1);
        }

        @Override // e0.a.b
        @NotNull
        public Path getMetadata() {
            return this.f50721a.f(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealDiskCache.kt */
    @Metadata
    /* renamed from: e0.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0711c implements a.c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final DiskLruCache.d f50722a;

        public C0711c(@NotNull DiskLruCache.d dVar) {
            this.f50722a = dVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f50722a.close();
        }

        @Override // e0.a.c
        @Nullable
        /* renamed from: d */
        public b L() {
            DiskLruCache.b d10 = this.f50722a.d();
            if (d10 != null) {
                return new b(d10);
            }
            return null;
        }

        @Override // e0.a.c
        @NotNull
        public Path getData() {
            return this.f50722a.g(1);
        }

        @Override // e0.a.c
        @NotNull
        public Path getMetadata() {
            return this.f50722a.g(0);
        }
    }

    public c(long j10, @NotNull Path path, @NotNull FileSystem fileSystem, @NotNull c0 c0Var) {
        this.f50717a = j10;
        this.f50718b = path;
        this.f50719c = fileSystem;
        this.f50720d = new DiskLruCache(a(), c(), c0Var, d(), 1, 2);
    }

    private final String e(String str) {
        return ByteString.Companion.encodeUtf8(str).sha256().hex();
    }

    @Override // e0.a
    @NotNull
    public FileSystem a() {
        return this.f50719c;
    }

    @Override // e0.a
    @Nullable
    public a.b b(@NotNull String str) {
        DiskLruCache.b w10 = this.f50720d.w(e(str));
        if (w10 != null) {
            return new b(w10);
        }
        return null;
    }

    @NotNull
    public Path c() {
        return this.f50718b;
    }

    public long d() {
        return this.f50717a;
    }

    @Override // e0.a
    @Nullable
    public a.c get(@NotNull String str) {
        DiskLruCache.d x10 = this.f50720d.x(e(str));
        if (x10 != null) {
            return new C0711c(x10);
        }
        return null;
    }
}
