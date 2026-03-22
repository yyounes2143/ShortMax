package vt;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a<Element, Collection, Builder> implements KSerializer<Collection> {
    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void i(a aVar, kotlinx.serialization.encoding.c cVar, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if (obj2 == null) {
            if ((i11 & 8) != 0) {
                z10 = true;
            }
            aVar.h(cVar, i10, obj, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
    }

    private final int j(kotlinx.serialization.encoding.c cVar, Builder builder) {
        int decodeCollectionSize = cVar.decodeCollectionSize(getDescriptor());
        c(builder, decodeCollectionSize);
        return decodeCollectionSize;
    }

    protected abstract Builder a();

    protected abstract int b(Builder builder);

    protected abstract void c(Builder builder, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public abstract Iterator<Element> d(Collection collection);

    @Override // st.c
    public Collection deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return f(decoder, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int e(Collection collection);

    public final Collection f(@NotNull Decoder decoder, @Nullable Collection collection) {
        Builder a10;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (collection == null || (a10 = k(collection)) == null) {
            a10 = a();
        }
        int b10 = b(a10);
        kotlinx.serialization.encoding.c beginStructure = decoder.beginStructure(getDescriptor());
        if (!beginStructure.decodeSequentially()) {
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    break;
                }
                i(this, beginStructure, b10 + decodeElementIndex, a10, false, 8, null);
            }
        } else {
            g(beginStructure, a10, b10, j(beginStructure, a10));
        }
        beginStructure.endStructure(getDescriptor());
        return l(a10);
    }

    protected abstract void g(@NotNull kotlinx.serialization.encoding.c cVar, Builder builder, int i10, int i11);

    protected abstract void h(@NotNull kotlinx.serialization.encoding.c cVar, int i10, Builder builder, boolean z10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Builder k(Collection collection);

    protected abstract Collection l(Builder builder);

    private a() {
    }
}
