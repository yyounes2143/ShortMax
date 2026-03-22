package g6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.nio.ByteBuffer;
/* compiled from: SimpleMetadataDecoder.java */
/* loaded from: classes4.dex */
public abstract class e implements a {
    @Override // g6.a
    @Nullable
    public final Metadata a(c cVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) b7.a.e(cVar.f17473c);
        if (byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        if (cVar.g()) {
            return null;
        }
        return b(cVar, byteBuffer);
    }

    @Nullable
    protected abstract Metadata b(c cVar, ByteBuffer byteBuffer);
}
