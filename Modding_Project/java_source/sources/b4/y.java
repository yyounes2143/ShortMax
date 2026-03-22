package b4;

import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.memory.MemoryPooledByteBufferOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MemoryPooledByteBufferFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class y implements n2.g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.e f2259a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n2.j f2260b;

    public y(@NotNull com.facebook.imagepipeline.memory.e pool, @NotNull n2.j pooledByteStreams) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        Intrinsics.checkNotNullParameter(pooledByteStreams, "pooledByteStreams");
        this.f2259a = pool;
        this.f2260b = pooledByteStreams;
    }

    @VisibleForTesting
    @NotNull
    public final x f(@NotNull InputStream inputStream, @NotNull MemoryPooledByteBufferOutputStream outputStream) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        this.f2260b.a(inputStream, outputStream);
        return outputStream.d();
    }

    @Override // n2.g
    @NotNull
    /* renamed from: g */
    public x a(@NotNull InputStream inputStream) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f2259a, 0, 2, null);
        try {
            return f(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // n2.g
    @NotNull
    /* renamed from: h */
    public x e(@NotNull InputStream inputStream, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f2259a, i10);
        try {
            return f(inputStream, memoryPooledByteBufferOutputStream);
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // n2.g
    @NotNull
    /* renamed from: i */
    public x c(@NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        MemoryPooledByteBufferOutputStream memoryPooledByteBufferOutputStream = new MemoryPooledByteBufferOutputStream(this.f2259a, bytes.length);
        try {
            try {
                memoryPooledByteBufferOutputStream.write(bytes, 0, bytes.length);
                return memoryPooledByteBufferOutputStream.d();
            } catch (IOException e10) {
                throw k2.m.a(e10);
            }
        } finally {
            memoryPooledByteBufferOutputStream.close();
        }
    }

    @Override // n2.g
    @NotNull
    /* renamed from: j */
    public MemoryPooledByteBufferOutputStream b() {
        return new MemoryPooledByteBufferOutputStream(this.f2259a, 0, 2, null);
    }

    @Override // n2.g
    @NotNull
    /* renamed from: k */
    public MemoryPooledByteBufferOutputStream d(int i10) {
        return new MemoryPooledByteBufferOutputStream(this.f2259a, i10);
    }
}
