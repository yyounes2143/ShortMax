package hs;

import io.ktor.utils.io.pool.DefaultPool;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferFactory.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n15#2:94\n15#2:95\n1#3:96\n*S KotlinDebug\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n*L\n75#1:94\n76#1:95\n*E\n"})
/* loaded from: classes8.dex */
public final class k extends DefaultPool<is.a> {

    /* renamed from: h  reason: collision with root package name */
    private final int f53234h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final fs.a f53235i;

    public /* synthetic */ k(int i10, int i11, fs.a aVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 4096 : i10, (i12 & 2) != 0 ? 1000 : i11, (i12 & 4) != 0 ? fs.b.f51937a : aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    @NotNull
    /* renamed from: r */
    public is.a c(@NotNull is.a instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        is.a aVar = (is.a) super.c(instance);
        aVar.E();
        aVar.q();
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    /* renamed from: s */
    public void d(@NotNull is.a instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.f53235i.a(instance.g());
        super.d(instance);
        instance.D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    @NotNull
    /* renamed from: t */
    public is.a l() {
        return new is.a(this.f53235i.b(this.f53234h), null, this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    /* renamed from: u */
    public void q(@NotNull is.a instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        super.q(instance);
        if (instance.g().limit() == this.f53234h) {
            if (instance != is.a.f60072j.a()) {
                if (instance != a.f53224g.a()) {
                    if (instance.z() == 0) {
                        if (instance.x() == null) {
                            if (instance.y() == null) {
                                return;
                            }
                            throw new IllegalStateException("Recycled instance shouldn't be a view or another buffer.");
                        }
                        throw new IllegalStateException("Recycled instance shouldn't be a part of a chain.");
                    }
                    throw new IllegalStateException("Unable to clear buffer: it is still in use.");
                }
                throw new IllegalStateException("Empty instance couldn't be recycled");
            }
            throw new IllegalStateException("ChunkBuffer.Empty couldn't be recycled");
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Buffer size mismatch. Expected: ");
        sb2.append(this.f53234h);
        sb2.append(", actual: ");
        sb2.append(instance.g().limit());
        throw new IllegalStateException(sb2.toString().toString());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(int i10, int i11, @NotNull fs.a allocator) {
        super(i11);
        Intrinsics.checkNotNullParameter(allocator, "allocator");
        this.f53234h = i10;
        this.f53235i = allocator;
    }
}
