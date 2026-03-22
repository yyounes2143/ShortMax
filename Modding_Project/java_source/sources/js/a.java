package js;

import io.ktor.utils.io.pool.DefaultPool;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteArrayPool.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<byte[]> f60543a = new C0840a();

    /* compiled from: ByteArrayPool.kt */
    @Metadata
    /* renamed from: js.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0840a extends DefaultPool<byte[]> {
        C0840a() {
            super(128);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.ktor.utils.io.pool.DefaultPool
        @NotNull
        /* renamed from: r */
        public byte[] l() {
            return new byte[4096];
        }
    }

    @NotNull
    public static final io.ktor.utils.io.pool.b<byte[]> a() {
        return f60543a;
    }
}
