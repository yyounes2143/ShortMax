package zr;

import androidx.core.view.InputDeviceCompat;
import io.ktor.utils.io.pool.b;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteBufferPool.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final b<ByteBuffer> f72332a = new js.b(2048, InputDeviceCompat.SOURCE_TOUCHSCREEN);

    @NotNull
    public static final b<ByteBuffer> a() {
        return f72332a;
    }
}
