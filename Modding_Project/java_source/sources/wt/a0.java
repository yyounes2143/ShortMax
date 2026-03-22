package wt;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: StreamingJsonDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes\n+ 2 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,391:1\n384#2,5:392\n384#2,5:397\n384#2,5:402\n384#2,5:407\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes\n*L\n377#1:392,5\n378#1:397,5\n379#1:402,5\n380#1:407,5\n*E\n"})
/* loaded from: classes8.dex */
public final class a0 extends kotlinx.serialization.encoding.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a f70276a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final xt.a f70277b;

    public a0(@NotNull a lexer, @NotNull kotlinx.serialization.json.a json) {
        Intrinsics.checkNotNullParameter(lexer, "lexer");
        Intrinsics.checkNotNullParameter(json, "json");
        this.f70276a = lexer;
        this.f70277b = json.getSerializersModule();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        a aVar = this.f70276a;
        String q10 = aVar.q();
        try {
            return kotlin.text.d0.a(q10);
        } catch (IllegalArgumentException unused) {
            a.x(aVar, "Failed to parse type 'UByte' for input '" + q10 + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        a aVar = this.f70276a;
        String q10 = aVar.q();
        try {
            return kotlin.text.d0.d(q10);
        } catch (IllegalArgumentException unused) {
            a.x(aVar, "Failed to parse type 'UInt' for input '" + q10 + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        a aVar = this.f70276a;
        String q10 = aVar.q();
        try {
            return kotlin.text.d0.g(q10);
        } catch (IllegalArgumentException unused) {
            a.x(aVar, "Failed to parse type 'ULong' for input '" + q10 + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        a aVar = this.f70276a;
        String q10 = aVar.q();
        try {
            return kotlin.text.d0.j(q10);
        } catch (IllegalArgumentException unused) {
            a.x(aVar, "Failed to parse type 'UShort' for input '" + q10 + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public xt.a getSerializersModule() {
        return this.f70277b;
    }
}
