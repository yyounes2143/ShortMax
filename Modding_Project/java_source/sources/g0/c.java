package g0;

import coil.ImageLoader;
import coil.decode.DataSource;
import d0.n;
import g0.i;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteBufferFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f52140a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.j f52141b;

    /* compiled from: ByteBufferFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements i.a<ByteBuffer> {
        @Override // g0.i.a
        @NotNull
        /* renamed from: b */
        public i a(@NotNull ByteBuffer byteBuffer, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            return new c(byteBuffer, jVar);
        }
    }

    public c(@NotNull ByteBuffer byteBuffer, @NotNull m0.j jVar) {
        this.f52140a = byteBuffer;
        this.f52141b = jVar;
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        try {
            Buffer buffer = new Buffer();
            buffer.write(this.f52140a);
            this.f52140a.position(0);
            return new l(n.a(buffer, this.f52141b.g()), null, DataSource.MEMORY);
        } catch (Throwable th2) {
            this.f52140a.position(0);
            throw th2;
        }
    }
}
