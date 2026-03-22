package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: NoOpEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p1 extends kotlinx.serialization.encoding.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p1 f69488a = new p1();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final xt.a f69489b = xt.b.a();

    private p1() {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    @Override // kotlinx.serialization.encoding.b
    public void encodeValue(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public xt.a getSerializersModule() {
        return f69489b;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
    }
}
