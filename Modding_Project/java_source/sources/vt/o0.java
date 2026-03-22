package vt;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class o0<K, V> extends k1<K, V, Map<K, ? extends V>, HashMap<K, V>> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f69483c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(@NotNull KSerializer<K> kSerializer, @NotNull KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        Intrinsics.checkNotNullParameter(kSerializer, "kSerializer");
        Intrinsics.checkNotNullParameter(vSerializer, "vSerializer");
        this.f69483c = new n0(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override // vt.k1, kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f69483c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: q */
    public HashMap<K, V> a() {
        return new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: r */
    public int b(@NotNull HashMap<K, V> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<this>");
        return hashMap.size() * 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    /* renamed from: s */
    public void c(@NotNull HashMap<K, V> hashMap, int i10) {
        Intrinsics.checkNotNullParameter(hashMap, "<this>");
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
    public HashMap<K, V> k(@NotNull Map<K, ? extends V> map) {
        HashMap<K, V> hashMap;
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map instanceof HashMap) {
            hashMap = (HashMap) map;
        } else {
            hashMap = null;
        }
        if (hashMap == null) {
            return new HashMap<>(map);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a
    @NotNull
    /* renamed from: w */
    public Map<K, V> l(@NotNull HashMap<K, V> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<this>");
        return hashMap;
    }
}
