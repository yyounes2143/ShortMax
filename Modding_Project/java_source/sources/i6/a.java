package i6;

import b7.g0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import g6.c;
import g6.e;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: EventMessageDecoder.java */
/* loaded from: classes4.dex */
public final class a extends e {
    @Override // g6.e
    protected Metadata b(c cVar, ByteBuffer byteBuffer) {
        return new Metadata(c(new g0(byteBuffer.array(), byteBuffer.limit())));
    }

    public EventMessage c(g0 g0Var) {
        return new EventMessage((String) b7.a.e(g0Var.x()), (String) b7.a.e(g0Var.x()), g0Var.w(), g0Var.w(), Arrays.copyOfRange(g0Var.d(), g0Var.e(), g0Var.f()));
    }
}
