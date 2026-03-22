package vt;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a1<K, V> extends k1<K, V, Map<K, ? extends V>, LinkedHashMap<K, V>> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f69377c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(@NotNull KSerializer<K> kSerializer, @NotNull KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        Intrinsics.checkNotNullParameter(kSerializer, "kSerializer");
        Intrinsics.checkNotNullParameter(vSerializer, "vSerializer");
        this.f69377c = new z0(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override // vt.k1, kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69377c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: q */
    public LinkedHashMap<K, V> a() {
        return new LinkedHashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: r */
    public int b(@NotNull LinkedHashMap<K, V> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: s */
    public void c(@NotNull LinkedHashMap<K, V> linkedHashMap, int i10) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: t */
    public Iterator<Map.Entry<K, V>> d(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return (Iterator<Map.Entry<K, ? extends V>>) map.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: u */
    public int e(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return map.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: v */
    public LinkedHashMap<K, V> k(@NotNull Map<K, ? extends V> map) {
        LinkedHashMap<K, V> linkedHashMap;
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map instanceof LinkedHashMap) {
            linkedHashMap = (LinkedHashMap) map;
        } else {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            return new LinkedHashMap<>(map);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: w */
    public Map<K, V> l(@NotNull LinkedHashMap<K, V> linkedHashMap) {
        Intrinsics.checkNotNullParameter(linkedHashMap, "<this>");
        return linkedHashMap;
    }
}
