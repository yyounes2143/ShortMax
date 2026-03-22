package androidx.savedstate.serialization.serializers;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.util.ArrayList;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.d;
import ms.i;
import org.jetbrains.annotations.NotNull;
import st.k;
import vt.c2;
import vt.f;
import vt.h2;
import vt.r2;
import vt.v0;
/* compiled from: BuiltInSerializer.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SparseArraySerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1#2:422\n*E\n"})
/* loaded from: classes2.dex */
public final class SparseArraySerializer<T> implements KSerializer<SparseArray<T>> {
    @NotNull
    private final SerialDescriptor descriptor;
    @NotNull
    private final KSerializer<SparseArraySurrogate<T>> surrogateSerializer;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BuiltInSerializer.android.kt */
    @k
    @Metadata
    @SuppressLint({"UnsafeOptInUsageError"})
    /* loaded from: classes2.dex */
    public static final class SparseArraySurrogate<T> {
        @NotNull
        private static final SerialDescriptor $cachedDescriptor;
        @NotNull
        private final List<Integer> keys;
        @NotNull
        private final List<T> values;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final i<KSerializer<Object>>[] $childSerializers = {c.a(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: androidx.savedstate.serialization.serializers.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer _childSerializers$_anonymous_;
                _childSerializers$_anonymous_ = SparseArraySerializer.SparseArraySurrogate._childSerializers$_anonymous_();
                return _childSerializers$_anonymous_;
            }
        }), null};

        /* compiled from: BuiltInSerializer.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            private Companion() {
            }

            @NotNull
            public final <T> KSerializer<SparseArraySurrogate<T>> serializer(@NotNull KSerializer<T> typeSerial0) {
                Intrinsics.checkNotNullParameter(typeSerial0, "typeSerial0");
                return new SparseArraySerializer$SparseArraySurrogate$$serializer(typeSerial0);
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            h2 h2Var = new h2("androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate", null, 2);
            h2Var.o("keys", false);
            h2Var.o("values", false);
            $cachedDescriptor = h2Var;
        }

        public /* synthetic */ SparseArraySurrogate(int i10, List list, List list2, r2 r2Var) {
            if (3 != (i10 & 3)) {
                c2.a(i10, 3, $cachedDescriptor);
            }
            this.keys = list;
            this.values = list2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _childSerializers$_anonymous_() {
            return new f(v0.f69529a);
        }

        public static final /* synthetic */ void write$Self$savedstate_release(SparseArraySurrogate sparseArraySurrogate, d dVar, SerialDescriptor serialDescriptor, KSerializer kSerializer) {
            dVar.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0].getValue(), sparseArraySurrogate.keys);
            dVar.encodeSerializableElement(serialDescriptor, 1, new f(kSerializer), sparseArraySurrogate.values);
        }

        @NotNull
        public final List<Integer> getKeys() {
            return this.keys;
        }

        @NotNull
        public final List<T> getValues() {
            return this.values;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SparseArraySurrogate(@NotNull List<Integer> keys, @NotNull List<? extends T> values) {
            Intrinsics.checkNotNullParameter(keys, "keys");
            Intrinsics.checkNotNullParameter(values, "values");
            this.keys = keys;
            this.values = values;
        }
    }

    public SparseArraySerializer(@NotNull KSerializer<T> elementSerializer) {
        Intrinsics.checkNotNullParameter(elementSerializer, "elementSerializer");
        KSerializer<SparseArraySurrogate<T>> serializer = SparseArraySurrogate.Companion.serializer(elementSerializer);
        this.surrogateSerializer = serializer;
        this.descriptor = serializer.getDescriptor();
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (SparseArray) ((SparseArray) obj));
    }

    @Override // st.c
    @NotNull
    public SparseArray<T> deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SparseArraySurrogate sparseArraySurrogate = (SparseArraySurrogate) decoder.decodeSerializableValue(this.surrogateSerializer);
        if (sparseArraySurrogate.getKeys().size() == sparseArraySurrogate.getValues().size()) {
            SparseArray<T> sparseArray = new SparseArray<>(sparseArraySurrogate.getKeys().size());
            int size = sparseArraySurrogate.getKeys().size();
            for (int i10 = 0; i10 < size; i10++) {
                sparseArray.append(sparseArraySurrogate.getKeys().get(i10).intValue(), sparseArraySurrogate.getValues().get(i10));
            }
            return sparseArray;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public void serialize(@NotNull Encoder encoder, @NotNull SparseArray<T> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        int size = value.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(Integer.valueOf(value.keyAt(i10)));
        }
        int size2 = value.size();
        ArrayList arrayList2 = new ArrayList(size2);
        for (int i11 = 0; i11 < size2; i11++) {
            arrayList2.add(value.valueAt(i11));
        }
        encoder.encodeSerializableValue(this.surrogateSerializer, new SparseArraySurrogate(arrayList, arrayList2));
    }
}
