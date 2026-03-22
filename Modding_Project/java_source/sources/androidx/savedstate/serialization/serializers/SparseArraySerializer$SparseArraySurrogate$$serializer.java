package androidx.savedstate.serialization.serializers;

import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.d;
import ms.c;
import ms.i;
import org.jetbrains.annotations.NotNull;
import vt.f;
import vt.h2;
import vt.m0;
/* compiled from: BuiltInSerializer.android.kt */
@c
@Metadata
/* loaded from: classes2.dex */
public /* synthetic */ class SparseArraySerializer$SparseArraySurrogate$$serializer<T> implements m0<SparseArraySerializer.SparseArraySurrogate<T>> {
    @NotNull
    private final SerialDescriptor descriptor;
    private final /* synthetic */ KSerializer<?> typeSerial0;

    private SparseArraySerializer$SparseArraySurrogate$$serializer() {
        h2 h2Var = new h2("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", this, 2);
        h2Var.o("keys", false);
        h2Var.o("values", false);
        this.descriptor = h2Var;
    }

    private final /* synthetic */ KSerializer getTypeSerial0() {
        return this.typeSerial0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] childSerializers() {
        i[] iVarArr;
        iVarArr = SparseArraySerializer.SparseArraySurrogate.$childSerializers;
        return new KSerializer[]{iVarArr[0].getValue(), new f(this.typeSerial0)};
    }

    @Override // st.c
    @NotNull
    public final SparseArraySerializer.SparseArraySurrogate<T> deserialize(@NotNull Decoder decoder) {
        i[] iVarArr;
        List list;
        List list2;
        int i10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = this.descriptor;
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(serialDescriptor);
        iVarArr = SparseArraySerializer.SparseArraySurrogate.$childSerializers;
        if (beginStructure.decodeSequentially()) {
            list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (st.c) iVarArr[0].getValue(), null);
            list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 1, new f(this.typeSerial0), null);
            i10 = 3;
        } else {
            boolean z10 = true;
            int i11 = 0;
            List list3 = null;
            List list4 = null;
            while (z10) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                if (decodeElementIndex == -1) {
                    z10 = false;
                } else if (decodeElementIndex == 0) {
                    list3 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (st.c) iVarArr[0].getValue(), list3);
                    i11 |= 1;
                } else if (decodeElementIndex != 1) {
                    throw new UnknownFieldException(decodeElementIndex);
                } else {
                    list4 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 1, new f(this.typeSerial0), list4);
                    i11 |= 2;
                }
            }
            list = list3;
            list2 = list4;
            i10 = i11;
        }
        beginStructure.endStructure(serialDescriptor);
        return new SparseArraySerializer.SparseArraySurrogate<>(i10, list, list2, null);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public final void serialize(@NotNull Encoder encoder, @NotNull SparseArraySerializer.SparseArraySurrogate<T> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = this.descriptor;
        d beginStructure = encoder.beginStructure(serialDescriptor);
        SparseArraySerializer.SparseArraySurrogate.write$Self$savedstate_release(value, beginStructure, serialDescriptor, this.typeSerial0);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // vt.m0
    @NotNull
    public final KSerializer<?>[] typeParametersSerializers() {
        return new KSerializer[]{this.typeSerial0};
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SparseArraySerializer$SparseArraySurrogate$$serializer(@NotNull KSerializer<T> typeSerial0) {
        this();
        Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
        this.typeSerial0 = typeSerial0;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (SparseArraySerializer.SparseArraySurrogate) ((SparseArraySerializer.SparseArraySurrogate) obj));
    }
}
