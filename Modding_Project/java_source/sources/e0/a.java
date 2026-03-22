package e0;

import android.os.StatFs;
import gt.c0;
import gt.q0;
import java.io.Closeable;
import java.io.File;
import kotlin.Metadata;
import kotlin.ranges.e;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiskCache.kt */
@Metadata
/* loaded from: classes2.dex */
public interface a {

    /* compiled from: DiskCache.kt */
    @Metadata
    /* renamed from: e0.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0710a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Path f50707a;

        /* renamed from: f  reason: collision with root package name */
        private long f50712f;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private FileSystem f50708b = FileSystem.SYSTEM;

        /* renamed from: c  reason: collision with root package name */
        private double f50709c = 0.02d;

        /* renamed from: d  reason: collision with root package name */
        private long f50710d = 10485760;

        /* renamed from: e  reason: collision with root package name */
        private long f50711e = 262144000;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private c0 f50713g = q0.b();

        @NotNull
        public final a a() {
            long j10;
            Path path = this.f50707a;
            if (path != null) {
                if (this.f50709c > 0.0d) {
                    try {
                        StatFs statFs = new StatFs(path.toFile().getAbsolutePath());
                        j10 = e.p((long) (this.f50709c * statFs.getBlockCountLong() * statFs.getBlockSizeLong()), this.f50710d, this.f50711e);
                    } catch (Exception unused) {
                        j10 = this.f50710d;
                    }
                } else {
                    j10 = this.f50712f;
                }
                return new e0.c(j10, path, this.f50708b, this.f50713g);
            }
            throw new IllegalStateException("directory == null");
        }

        @NotNull
        public final C0710a b(@NotNull File file) {
            return c(Path.Companion.get$default(Path.Companion, file, false, 1, (Object) null));
        }

        @NotNull
        public final C0710a c(@NotNull Path path) {
            this.f50707a = path;
            return this;
        }
    }

    /* compiled from: DiskCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface b {
        @Nullable
        c a();

        void abort();

        @NotNull
        Path getData();

        @NotNull
        Path getMetadata();
    }

    /* compiled from: DiskCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface c extends Closeable {
        @Nullable
        b L();

        @NotNull
        Path getData();

        @NotNull
        Path getMetadata();
    }

    @NotNull
    FileSystem a();

    @Nullable
    b b(@NotNull String str);

    @Nullable
    c get(@NotNull String str);
}
