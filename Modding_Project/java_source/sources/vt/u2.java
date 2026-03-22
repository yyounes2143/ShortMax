package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u2 extends m2<Short, short[], t2> implements KSerializer<short[]> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final u2 f69528c = new u2();

    private u2() {
        super(tt.a.C(ShortCompanionObject.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: v */
    public int e(@NotNull short[] sArr) {
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        return sArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    @NotNull
    /* renamed from: w */
    public short[] r() {
        return new short[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull t2 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(decoder.decodeShortElement(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: y */
    public t2 k(@NotNull short[] sArr) {
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        return new t2(sArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    /* renamed from: z */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull short[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeShortElement(getDescriptor(), i11, content[i11]);
        }
    }
}
