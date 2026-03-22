package mo;

import cn.b0;
import java.nio.ByteBuffer;
import java.util.Arrays;
import zm.t;
/* compiled from: EventMessageDecoder.java */
/* loaded from: classes8.dex */
public final class b extends ko.c {
    @Override // ko.c
    protected t b(ko.b bVar, ByteBuffer byteBuffer) {
        return new t(c(new b0(byteBuffer.array(), byteBuffer.limit())));
    }

    public a c(b0 b0Var) {
        return new a((String) cn.a.e(b0Var.B()), (String) cn.a.e(b0Var.B()), b0Var.A(), b0Var.A(), Arrays.copyOfRange(b0Var.e(), b0Var.f(), b0Var.g()));
    }
}
