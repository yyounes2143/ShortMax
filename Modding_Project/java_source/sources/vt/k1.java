package vt;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.encoding.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollectionSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/MapLikeSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,283:1\n1#2:284\n488#3,2:285\n490#3,2:289\n32#4,2:287\n*S KotlinDebug\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/MapLikeSerializer\n*L\n118#1:285,2\n118#1:289,2\n121#1:287,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class k1<Key, Value, Collection, Builder extends Map<Key, Value>> extends a<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<Key> f69463a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<Value> f69464b;

    public /* synthetic */ k1(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public abstract SerialDescriptor getDescriptor();

    @NotNull
    public final KSerializer<Key> m() {
        return this.f69463a;
    }

    @NotNull
    public final KSerializer<Value> n() {
        return this.f69464b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: o */
    public final void g(@NotNull kotlinx.serialization.encoding.c decoder, @NotNull Builder builder, int i10, int i11) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (i11 >= 0) {
            kotlin.ranges.d u10 = kotlin.ranges.e.u(kotlin.ranges.e.v(0, i11 * 2), 2);
            int c10 = u10.c();
            int d10 = u10.d();
            int e10 = u10.e();
            if ((e10 <= 0 || c10 > d10) && (e10 >= 0 || d10 > c10)) {
                return;
            }
            while (true) {
                h(decoder, i10 + c10, builder, false);
                if (c10 != d10) {
                    c10 += e10;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: p */
    public final void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, @NotNull Builder builder, boolean z10) {
        int i11;
        Object c10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Object c11 = c.a.c(decoder, getDescriptor(), i10, this.f69463a, null, 8, null);
        if (z10) {
            i11 = decoder.decodeElementIndex(getDescriptor());
            if (i11 != i10 + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i10 + ", returned index for value: " + i11).toString());
            }
        } else {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (builder.containsKey(c11) && !(this.f69464b.getDescriptor().getKind() instanceof ut.e)) {
            c10 = decoder.decodeSerializableElement(getDescriptor(), i12, this.f69464b, kotlin.collections.p0.j(builder, c11));
        } else {
            c10 = c.a.c(decoder, getDescriptor(), i12, this.f69464b, null, 8, null);
        }
        builder.put(c11, c10);
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, Collection collection) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int e10 = e(collection);
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.d beginCollection = encoder.beginCollection(descriptor, e10);
        Iterator<Map.Entry<? extends Key, ? extends Value>> d10 = d(collection);
        int i10 = 0;
        while (d10.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = d10.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i11 = i10 + 1;
            beginCollection.encodeSerializableElement(getDescriptor(), i10, m(), key);
            i10 += 2;
            beginCollection.encodeSerializableElement(getDescriptor(), i11, n(), value);
        }
        beginCollection.endStructure(descriptor);
    }

    private k1(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.f69463a = kSerializer;
        this.f69464b = kSerializer2;
    }
}
