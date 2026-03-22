package js;

import io.ktor.utils.io.pool.DefaultPool;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteBufferPools.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends DefaultPool<ByteBuffer> {

    /* renamed from: h  reason: collision with root package name */
    private final int f60544h;

    public b(int i10, int i11) {
        super(i10);
        this.f60544h = i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    @NotNull
    /* renamed from: r */
    public ByteBuffer c(@NotNull ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        instance.clear();
        instance.order(ByteOrder.BIG_ENDIAN);
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    @NotNull
    /* renamed from: s */
    public ByteBuffer l() {
        ByteBuffer allocate = ByteBuffer.allocate(this.f60544h);
        Intrinsics.checkNotNull(allocate);
        return allocate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.io.pool.DefaultPool
    /* renamed from: t */
    public void q(@NotNull ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (instance.capacity() == this.f60544h) {
            if (!instance.isDirect()) {
                return;
            }
            throw new IllegalStateException("Check failed.");
        }
        throw new IllegalStateException("Check failed.");
    }
}
