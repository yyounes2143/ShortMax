package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f1 extends m2<Long, long[], e1> implements KSerializer<long[]> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final f1 f69410c = new f1();

    private f1() {
        super(tt.a.B(LongCompanionObject.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: v */
    public int e(@NotNull long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        return jArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    @NotNull
    /* renamed from: w */
    public long[] r() {
        return new long[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull e1 builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(decoder.decodeLongElement(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: y */
    public e1 k(@NotNull long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        return new e1(jArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    /* renamed from: z */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull long[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeLongElement(getDescriptor(), i11, content[i11]);
        }
    }
}
