package ws;

import java.io.ByteArrayOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileReadWrite.kt */
@Metadata
/* loaded from: classes8.dex */
final class d extends ByteArrayOutputStream {
    public d(int i10) {
        super(i10);
    }

    @NotNull
    public final byte[] d() {
        byte[] buf = ((ByteArrayOutputStream) this).buf;
        Intrinsics.checkNotNullExpressionValue(buf, "buf");
        return buf;
    }
}
