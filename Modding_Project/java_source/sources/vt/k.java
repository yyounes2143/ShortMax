package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class k extends m2<Byte, byte[], j> implements KSerializer<byte[]> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final k f69461c = new k();

    private k() {
        super(tt.a.w(ByteCompanionObject.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: v */
    public int e(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    @NotNull
    /* renamed from: w */
    public byte[] r() {
        return new byte[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w, vt.a
    /* renamed from: x */
    public void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull j builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.e(decoder.decodeByteElement(getDescriptor(), i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: y */
    public j k(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return new j(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.m2
    /* renamed from: z */
    public void u(@NotNull kotlinx.serialization.encoding.d encoder, @NotNull byte[] content, int i10) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.encodeByteElement(getDescriptor(), i11, content[i11]);
        }
    }
}
