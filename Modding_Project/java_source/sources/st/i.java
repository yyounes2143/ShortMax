package st;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SealedSerializer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSealedSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SealedSerializer.kt\nkotlinx/serialization/SealedClassSerializer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,154:1\n1544#2:155\n1246#2,4:165\n53#3:156\n80#3,6:157\n462#4:163\n412#4:164\n82#5:169\n216#6,2:170\n*S KotlinDebug\n*F\n+ 1 SealedSerializer.kt\nkotlinx/serialization/SealedClassSerializer\n*L\n130#1:155\n140#1:165,4\n131#1:156\n131#1:157,6\n140#1:163\n140#1:164\n151#1:169\n109#1:170,2\n*E\n"})
/* loaded from: classes8.dex */
public final class i<T> extends vt.b<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KClass<T> f66633a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f66634b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<KClass<? extends T>, KSerializer<? extends T>> f66635c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, KSerializer<? extends T>> f66636d;

    @Override // vt.b
    @Nullable
    public c<T> c(@NotNull kotlinx.serialization.encoding.c decoder, @Nullable String str) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        KSerializer<? extends T> kSerializer = this.f66636d.get(str);
        if (kSerializer != null) {
            return kSerializer;
        }
        return super.c(decoder, str);
    }

    @Override // vt.b
    @Nullable
    public l<T> d(@NotNull Encoder encoder, @NotNull T value) {
        KSerializer<? extends T> d10;
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        KSerializer<? extends T> kSerializer = this.f66635c.get(Reflection.getOrCreateKotlinClass(value.getClass()));
        if (kSerializer != null) {
            d10 = kSerializer;
        } else {
            d10 = super.d(encoder, value);
        }
        if (d10 == null) {
            return null;
        }
        return d10;
    }

    @Override // vt.b
    @NotNull
    public KClass<T> e() {
        return this.f66633a;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.f66634b.getValue();
    }
}
