package vt;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tuples.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x1<K, V> extends y0<K, V, Pair<? extends K, ? extends V>> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f69542c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x1(@NotNull final KSerializer<K> keySerializer, @NotNull final KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        this.f69542c = ut.k.e("kotlin.Pair", new SerialDescriptor[0], new Function1() { // from class: vt.w1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit g10;
                g10 = x1.g(KSerializer.this, valueSerializer, (ut.a) obj);
                return g10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(KSerializer kSerializer, KSerializer kSerializer2, ut.a buildClassSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
        ut.a.b(buildClassSerialDescriptor, "first", kSerializer.getDescriptor(), null, false, 12, null);
        ut.a.b(buildClassSerialDescriptor, "second", kSerializer2.getDescriptor(), null, false, 12, null);
        return Unit.f60915a;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69542c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.y0
    /* renamed from: h */
    public K a(@NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        return pair.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.y0
    /* renamed from: i */
    public V c(@NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "<this>");
        return pair.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.y0
    @NotNull
    /* renamed from: j */
    public Pair<K, V> e(K k10, V v10) {
        return ms.k.a(k10, v10);
    }
}
