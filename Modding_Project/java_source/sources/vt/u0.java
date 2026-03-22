package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u0 extends m2<Integer, int[], t0> implements KSerializer<int[]> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final u0 f69526c = new u0();

    private u0() {
        super(tt.a.A(IntCompanionObject.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: v */
    public int e(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return iArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    @NotNull
    /* renamed from: w */
    public int[] r() {
        return new int[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull t0 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(decoder.decodeIntElement(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: y */
    public t0 k(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return new t0(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    /* renamed from: z */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull int[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeIntElement(getDescriptor(), i11, content[i11]);
        }
    }
}
