package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i3 extends m2<ms.n, ms.o, h3> implements KSerializer<ms.o> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final i3 f69449c = new i3();

    private i3() {
        super(tt.a.H(ms.n.f62638b));
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((ms.o) obj).s());
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((ms.o) obj).s());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ ms.o r() {
        return ms.o.a(w());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, ms.o oVar, int i10) {
        z(dVar, oVar.s(), i10);
    }

    protected int v(@NotNull int[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return ms.o.m(collectionSize);
    }

    @NotNull
    protected int[] w() {
        return ms.o.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull h3 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(ms.n.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeInt()));
    }

    @NotNull
    protected h3 y(@NotNull int[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new h3(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull int[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeInt(ms.o.j(content, i11));
        }
    }
}
