package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class o3 extends m2<ms.s, ms.t, n3> implements KSerializer<ms.t> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final o3 f69485c = new o3();

    private o3() {
        super(tt.a.J(ms.s.f62649b));
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ int e(Object obj) {
        return v(((ms.t) obj).s());
    }

    @Override // vt.a
    public /* bridge */ /* synthetic */ Object k(Object obj) {
        return y(((ms.t) obj).s());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ ms.t r() {
        return ms.t.a(w());
    }

    @Override // vt.m2
    public /* bridge */ /* synthetic */ void u(kotlinx.serialization.encoding.d dVar, ms.t tVar, int i10) {
        z(dVar, tVar.s(), i10);
    }

    protected int v(@NotNull short[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return ms.t.m(collectionSize);
    }

    @NotNull
    protected short[] w() {
        return ms.t.c(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull n3 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(ms.s.b(decoder.decodeInlineElement(getDescriptor(), i10).decodeShort()));
    }

    @NotNull
    protected n3 y(@NotNull short[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new n3(toBuilder, null);
    }

    protected void z(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull short[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeInlineElement(getDescriptor(), i11).encodeShort(ms.t.j(content, i11));
        }
    }
}
