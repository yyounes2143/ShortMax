package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b0 extends m2<Double, double[], a0> implements KSerializer<double[]> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final b0 f69379c = new b0();

    private b0() {
        super(tt.a.y(DoubleCompanionObject.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: v */
    public int e(@NotNull double[] dArr) {
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        return dArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    @NotNull
    /* renamed from: w */
    public double[] r() {
        return new double[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull a0 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(decoder.decodeDoubleElement(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: y */
    public a0 k(@NotNull double[] dArr) {
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        return new a0(dArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    /* renamed from: z */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull double[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeDoubleElement(getDescriptor(), i11, content[i11]);
        }
    }
}
