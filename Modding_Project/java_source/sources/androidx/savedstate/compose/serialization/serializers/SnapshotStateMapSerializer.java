package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.snapshots.SnapshotStateMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import tt.a;
import ut.k;
/* compiled from: SnapshotStateMapSerializer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateMapSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMapSerializer.kt\nandroidx/savedstate/compose/serialization/serializers/SnapshotStateMapSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"})
/* loaded from: classes2.dex */
public final class SnapshotStateMapSerializer<K, V> implements KSerializer<SnapshotStateMap<K, V>> {
    @NotNull
    private final KSerializer<Map<K, V>> base;
    @NotNull
    private final SerialDescriptor descriptor;

    public SnapshotStateMapSerializer(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        Intrinsics.checkNotNullParameter(keySerializer, "keySerializer");
        Intrinsics.checkNotNullParameter(valueSerializer, "valueSerializer");
        KSerializer<Map<K, V>> k10 = a.k(keySerializer, valueSerializer);
        this.base = k10;
        this.descriptor = k.d("androidx.compose.runtime.SnapshotStateMap", k10.getDescriptor());
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (SnapshotStateMap) ((SnapshotStateMap) obj));
    }

    @Override // st.c
    @NotNull
    public SnapshotStateMap<K, V> deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SnapshotStateMap<K, V> snapshotStateMap = new SnapshotStateMap<>();
        snapshotStateMap.putAll((Map) decoder.decodeSerializableValue(this.base));
        return snapshotStateMap;
    }

    public void serialize(@NotNull Encoder encoder, @NotNull SnapshotStateMap<K, V> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeSerializableValue(this.base, value);
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }
}
