package ko;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import zm.t;
/* compiled from: SimpleMetadataDecoder.java */
/* loaded from: classes8.dex */
public abstract class c implements a {
    @Override // ko.a
    @Nullable
    public final t a(b bVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) cn.a.e(bVar.f55345d);
        if (byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        return b(bVar, byteBuffer);
    }

    @Nullable
    protected abstract t b(b bVar, ByteBuffer byteBuffer);
}
