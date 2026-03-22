package vt;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.m;
/* compiled from: Tuples.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i1<K, V> extends y0<K, V, Map.Entry<? extends K, ? extends V>> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f69446c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Tuples.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a<K, V> implements Map.Entry<K, V>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private final K f69447a;

        /* renamed from: b  reason: collision with root package name */
        private final V f69448b;

        public a(K k10, V v10) {
            this.f69447a = k10;
            this.f69448b = v10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f69447a, aVar.f69447a) && Intrinsics.areEqual(this.f69448b, aVar.f69448b)) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f69447a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f69448b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int hashCode;
            K k10 = this.f69447a;
            int i10 = 0;
            if (k10 == null) {
                hashCode = 0;
            } else {
                hashCode = k10.hashCode();
            }
            int i11 = hashCode * 31;
            V v10 = this.f69448b;
            if (v10 != null) {
                i10 = v10.hashCode();
            }
            return i11 + i10;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @NotNull
        public String toString() {
            return "MapEntry(key=" + this.f69447a + ", value=" + this.f69448b + ')';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(@NotNull final KSerializer<K> keySerializer, @NotNull final KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        this.f69446c = ut.k.h("kotlin.collections.Map.Entry", m.c.f68630a, new SerialDescriptor[0], new Function1() { // from class: vt.h1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit g10;
                g10 = i1.g(KSerializer.this, valueSerializer, (ut.a) obj);
                return g10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(KSerializer kSerializer, KSerializer kSerializer2, ut.a buildSerialDescriptor) {
        Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
        ut.a.b(buildSerialDescriptor, "key", kSerializer.getDescriptor(), null, false, 12, null);
        ut.a.b(buildSerialDescriptor, AppMeasurementSdk.ConditionalUserProperty.VALUE, kSerializer2.getDescriptor(), null, false, 12, null);
        return Unit.f60915a;
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69446c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.y0
    /* renamed from: h */
    public K a(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "<this>");
        return entry.getKey();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.y0
    /* renamed from: i */
    public V c(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "<this>");
        return entry.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.y0
    @NotNull
    /* renamed from: j */
    public Map.Entry<K, V> e(K k10, V v10) {
        return new a(k10, v10);
    }
}
