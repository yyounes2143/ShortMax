package vt;

import java.util.Iterator;
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
@SourceDebugExtension({"SMAP\nCollectionSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/CollectionLikeSerializer\n+ 2 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n488#2,4:284\n1#3:288\n*S KotlinDebug\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/CollectionLikeSerializer\n*L\n66#1:284,4\n*E\n"})
/* loaded from: classes8.dex */
public abstract class w<Element, Collection, Builder> extends a<Element, Collection, Builder> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<Element> f69536a;

    public /* synthetic */ w(KSerializer kSerializer, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer);
    }

    @Override // vt.a
    protected final void g(@NotNull kotlinx.serialization.encoding.c decoder, Builder builder, int i10, int i11) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (i11 >= 0) {
            for (int i12 = 0; i12 < i11; i12++) {
                h(decoder, i10 + i12, builder, false);
            }
            return;
        }
        throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public abstract SerialDescriptor getDescriptor();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // vt.a
    protected void h(@NotNull kotlinx.serialization.encoding.c decoder, int i10, Builder builder, boolean z10) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        n(builder, i10, c.a.c(decoder, getDescriptor(), i10, this.f69536a, null, 8, null));
    }

    protected abstract void n(Builder builder, int i10, Element element);

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, Collection collection) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int e10 = e(collection);
        SerialDescriptor descriptor = getDescriptor();
        kotlinx.serialization.encoding.d beginCollection = encoder.beginCollection(descriptor, e10);
        Iterator<Element> d10 = d(collection);
        for (int i10 = 0; i10 < e10; i10++) {
            beginCollection.encodeSerializableElement(getDescriptor(), i10, this.f69536a, d10.next());
        }
        beginCollection.endStructure(descriptor);
    }

    private w(KSerializer<Element> kSerializer) {
        super(null);
        this.f69536a = kSerializer;
    }
}
