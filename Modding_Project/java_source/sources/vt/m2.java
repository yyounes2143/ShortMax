package vt;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import vt.k2;
/* compiled from: CollectionSerializers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollectionSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/PrimitiveArraySerializer\n+ 2 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n*L\n1#1,283:1\n488#2,4:284\n*S KotlinDebug\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/PrimitiveArraySerializer\n*L\n174#1:284,4\n*E\n"})
/* loaded from: classes8.dex */
public abstract class m2<Element, Array, Builder extends k2<Array>> extends w<Element, Array, Builder> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f69475b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m2(@NotNull KSerializer<Element> primitiveSerializer) {
        super(primitiveSerializer, null);
        Intrinsics.checkNotNullParameter(primitiveSerializer, "primitiveSerializer");
        this.f69475b = new l2(primitiveSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    public final Iterator<Element> d(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // vt.a, st.c
    public final Array deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return f(decoder, null);
    }

    @Override // vt.w, kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return this.f69475b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: o */
    public final Builder a() {
        return (Builder) k(r());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: p */
    public final int b(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return builder.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: q */
    public final void c(@NotNull Builder builder, int i10) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.b(i10);
    }

    protected abstract Array r();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.w
    /* renamed from: s */
    public final void n(@NotNull Builder builder, int i10, Element element) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override // vt.w, st.l
    public final void serialize(@NotNull Encoder encoder, Array array) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int e10 = e(array);
        SerialDescriptor serialDescriptor = this.f69475b;
        kotlinx.serialization.encoding.d beginCollection = encoder.beginCollection(serialDescriptor, e10);
        u(beginCollection, array, e10);
        beginCollection.endStructure(serialDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: t */
    public final Array l(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return (Array) builder.a();
    }

    protected abstract void u(@NotNull kotlinx.serialization.encoding.d dVar, Array array, int i10);
}
