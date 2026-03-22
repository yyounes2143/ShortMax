package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l3 extends m2<ms.p, ms.q, k3> implements KSerializer<ms.q> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final l3 f69473c = new l3();

    private l3() {
        super(tt.a.I(ms.p.f62643b));
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((ms.q) obj).s());
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((ms.q) obj).s());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ ms.q r() {
        return ms.q.a(w());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, ms.q qVar, int i10) {
        z(dVar, qVar.s(), i10);
    }

    protected int v(@NotNull long[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return ms.q.m(collectionSize);
    }

    @NotNull
    protected long[] w() {
        return ms.q.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull k3 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(ms.p.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeLong()));
    }

    @NotNull
    protected k3 y(@NotNull long[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new k3(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull long[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeLong(ms.q.j(content, i11));
        }
    }
}
