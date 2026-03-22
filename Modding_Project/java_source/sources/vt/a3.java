package vt;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tagged.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTagged.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n1#2:343\n*E\n"})
/* loaded from: classes8.dex */
public abstract class a3<Tag> implements Encoder, kotlinx.serialization.encoding.d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Tag> f69378a = new ArrayList<>();

    private final boolean c(SerialDescriptor serialDescriptor, int i10) {
        u(s(serialDescriptor, i10));
        return true;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d beginCollection(@NotNull SerialDescriptor serialDescriptor, int i10) {
        return Encoder.a.a(this, serialDescriptor, i10);
    }

    public <T> void d(@NotNull st.l<? super T> lVar, @Nullable T t10) {
        Encoder.a.c(this, lVar, t10);
    }

    protected abstract void e(Tag tag, boolean z10);

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeBoolean(boolean z10) {
        e(t(), z10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeBooleanElement(@NotNull SerialDescriptor descriptor, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        e(s(descriptor, i10), z10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeByte(byte b10) {
        f(t(), b10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeByteElement(@NotNull SerialDescriptor descriptor, int i10, byte b10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        f(s(descriptor, i10), b10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeChar(char c10) {
        g(t(), c10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeCharElement(@NotNull SerialDescriptor descriptor, int i10, char c10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        g(s(descriptor, i10), c10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeDouble(double d10) {
        h(t(), d10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeDoubleElement(@NotNull SerialDescriptor descriptor, int i10, double d10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        h(s(descriptor, i10), d10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        i(t(), enumDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeFloat(float f10) {
        j(t(), f10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeFloatElement(@NotNull SerialDescriptor descriptor, int i10, float f10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        j(s(descriptor, i10), f10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder encodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return k(t(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.d
    @NotNull
    public final Encoder encodeInlineElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return k(s(descriptor, i10), descriptor.d(i10));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeInt(int i10) {
        l(t(), i10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeIntElement(@NotNull SerialDescriptor descriptor, int i10, int i11) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        l(s(descriptor, i10), i11);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeLong(long j10) {
        m(t(), j10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeLongElement(@NotNull SerialDescriptor descriptor, int i10, long j10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        m(s(descriptor, i10), j10);
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void encodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.l<? super T> serializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (c(descriptor, i10)) {
            d(serializer, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.d
    public <T> void encodeSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.l<? super T> serializer, T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (c(descriptor, i10)) {
            encodeSerializableValue(serializer, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract <T> void encodeSerializableValue(@NotNull st.l<? super T> lVar, T t10);

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeShort(short s10) {
        n(t(), s10);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeShortElement(@NotNull SerialDescriptor descriptor, int i10, short s10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        n(s(descriptor, i10), s10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        o(t(), value);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void encodeStringElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(value, "value");
        o(s(descriptor, i10), value);
    }

    @Override // kotlinx.serialization.encoding.d
    public final void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (!this.f69378a.isEmpty()) {
            t();
        }
        p(descriptor);
    }

    protected abstract void f(Tag tag, byte b10);

    protected abstract void g(Tag tag, char c10);

    protected abstract void h(Tag tag, double d10);

    protected abstract void i(Tag tag, @NotNull SerialDescriptor serialDescriptor, int i10);

    protected abstract void j(Tag tag, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Encoder k(Tag tag, @NotNull SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        u(tag);
        return this;
    }

    protected abstract void l(Tag tag, int i10);

    protected abstract void m(Tag tag, long j10);

    protected abstract void n(Tag tag, short s10);

    protected abstract void o(Tag tag, @NotNull String str);

    protected abstract void p(@NotNull SerialDescriptor serialDescriptor);

    /* JADX INFO: Access modifiers changed from: protected */
    public final Tag q() {
        return (Tag) CollectionsKt.C0(this.f69378a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Tag r() {
        return (Tag) CollectionsKt.D0(this.f69378a);
    }

    protected abstract Tag s(@NotNull SerialDescriptor serialDescriptor, int i10);

    protected final Tag t() {
        if (!this.f69378a.isEmpty()) {
            ArrayList<Tag> arrayList = this.f69378a;
            return arrayList.remove(CollectionsKt.p(arrayList));
        }
        throw new SerializationException("No tag in stack for requested element");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(Tag tag) {
        this.f69378a.add(tag);
    }
}
