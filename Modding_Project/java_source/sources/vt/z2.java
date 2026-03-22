package vt;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tagged.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTagged.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,342:1\n1#2:343\n270#3,2:344\n*S KotlinDebug\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedDecoder\n*L\n287#1:344,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class z2<Tag> implements Decoder, kotlinx.serialization.encoding.c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Tag> f69556a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f69557b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object e(z2 z2Var, st.c cVar, Object obj) {
        if (!cVar.getDescriptor().b() && !z2Var.decodeNotNullMark()) {
            return z2Var.decodeNull();
        }
        return z2Var.g(cVar, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(z2 z2Var, st.c cVar, Object obj) {
        return z2Var.g(cVar, obj);
    }

    private final <E> E x(Tag tag, Function0<? extends E> function0) {
        w(tag);
        E invoke = function0.invoke();
        if (!this.f69557b) {
            v();
        }
        this.f69557b = false;
        return invoke;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        return h(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final boolean decodeBooleanElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return h(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        return i(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final byte decodeByteElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return i(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        return j(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final char decodeCharElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return j(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeCollectionSize(@NotNull SerialDescriptor serialDescriptor) {
        return c.a.a(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        return k(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final double decodeDoubleElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return k(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeEnum(@NotNull SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        return l(v(), enumDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        return m(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final float decodeFloatElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return m(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public Decoder decodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return n(v(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public final Decoder decodeInlineElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return n(t(descriptor, i10), descriptor.d(i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        return o(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final int decodeIntElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return o(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return p(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final long decodeLongElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return p(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @Nullable
    public final Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.c
    @Nullable
    public final <T> T decodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull final st.c<? extends T> deserializer, @Nullable final T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) x(t(descriptor, i10), new Function0() { // from class: vt.y2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object e10;
                e10 = z2.e(z2.this, deserializer, t10);
                return e10;
            }
        });
    }

    @Override // kotlinx.serialization.encoding.c
    public boolean decodeSequentially() {
        return c.a.b(this);
    }

    @Override // kotlinx.serialization.encoding.c
    public final <T> T decodeSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull final st.c<? extends T> deserializer, @Nullable final T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) x(t(descriptor, i10), new Function0() { // from class: vt.x2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object f10;
                f10 = z2.f(z2.this, deserializer, t10);
                return f10;
            }
        });
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract <T> T decodeSerializableValue(@NotNull st.c<? extends T> cVar);

    @Override // kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        return q(v());
    }

    @Override // kotlinx.serialization.encoding.c
    public final short decodeShortElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return q(t(descriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public final String decodeString() {
        return r(v());
    }

    @Override // kotlinx.serialization.encoding.c
    @NotNull
    public final String decodeStringElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return r(t(descriptor, i10));
    }

    protected <T> T g(@NotNull st.c<? extends T> deserializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) decodeSerializableValue(deserializer);
    }

    protected abstract boolean h(Tag tag);

    protected abstract byte i(Tag tag);

    protected abstract char j(Tag tag);

    protected abstract double k(Tag tag);

    protected abstract int l(Tag tag, @NotNull SerialDescriptor serialDescriptor);

    protected abstract float m(Tag tag);

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Decoder n(Tag tag, @NotNull SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        w(tag);
        return this;
    }

    protected abstract int o(Tag tag);

    protected abstract long p(Tag tag);

    protected abstract short q(Tag tag);

    @NotNull
    protected abstract String r(Tag tag);

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Tag s() {
        return (Tag) CollectionsKt.D0(this.f69556a);
    }

    protected abstract Tag t(@NotNull SerialDescriptor serialDescriptor, int i10);

    @NotNull
    public final ArrayList<Tag> u() {
        return this.f69556a;
    }

    protected final Tag v() {
        ArrayList<Tag> arrayList = this.f69556a;
        Tag remove = arrayList.remove(CollectionsKt.p(arrayList));
        this.f69557b = true;
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void w(Tag tag) {
        this.f69556a.add(tag);
    }
}
