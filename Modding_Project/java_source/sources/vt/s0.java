package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import vt.m0;
/* compiled from: InlineClassDescriptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class s0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: InlineClassDescriptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a<T> implements m0<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KSerializer<T> f69511a;

        a(KSerializer<T> kSerializer) {
            this.f69511a = kSerializer;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // vt.m0
        public KSerializer<?>[] childSerializers() {
            return new KSerializer[]{this.f69511a};
        }

        @Override // st.c
        public T deserialize(Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            throw new IllegalStateException("unsupported");
        }

        @Override // kotlinx.serialization.KSerializer, st.l, st.c
        public SerialDescriptor getDescriptor() {
            throw new IllegalStateException("unsupported");
        }

        @Override // st.l
        public void serialize(Encoder encoder, T t10) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            throw new IllegalStateException("unsupported");
        }

        @Override // vt.m0
        public KSerializer<?>[] typeParametersSerializers() {
            return m0.a.a(this);
        }
    }

    @NotNull
    public static final <T> SerialDescriptor a(@NotNull String name, @NotNull KSerializer<T> primitiveSerializer) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primitiveSerializer, "primitiveSerializer");
        return new r0(name, new a(primitiveSerializer));
    }
}
