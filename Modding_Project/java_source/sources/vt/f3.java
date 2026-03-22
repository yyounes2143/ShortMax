package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f3 extends m2<ms.l, ms.m, e3> implements KSerializer<ms.m> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final f3 f69412c = new f3();

    private f3() {
        super(tt.a.G(ms.l.f62633b));
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((ms.m) obj).s());
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((ms.m) obj).s());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ ms.m r() {
        return ms.m.a(w());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, ms.m mVar, int i10) {
        z(dVar, mVar.s(), i10);
    }

    protected int v(@NotNull byte[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return ms.m.m(collectionSize);
    }

    @NotNull
    protected byte[] w() {
        return ms.m.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull e3 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(ms.l.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeByte()));
    }

    @NotNull
    protected e3 y(@NotNull byte[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new e3(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull byte[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeByte(ms.m.j(content, i11));
        }
    }
}
