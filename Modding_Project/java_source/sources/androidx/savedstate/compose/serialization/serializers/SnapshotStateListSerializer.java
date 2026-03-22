package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import tt.a;
import ut.k;
/* compiled from: SnapshotStateListSerializer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotStateListSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateListSerializer.kt\nandroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"})
/* loaded from: classes2.dex */
public final class SnapshotStateListSerializer<T> implements KSerializer<SnapshotStateList<T>> {
    @NotNull
    private final KSerializer<List<T>> base;
    @NotNull
    private final SerialDescriptor descriptor;
    @NotNull
    private final KSerializer<T> elementSerializer;

    public SnapshotStateListSerializer(@NotNull KSerializer<T> elementSerializer) {
        Intrinsics.checkNotNullParameter(elementSerializer, "elementSerializer");
        this.elementSerializer = elementSerializer;
        KSerializer<List<T>> h10 = a.h(elementSerializer);
        this.base = h10;
        this.descriptor = k.d("androidx.compose.runtime.SnapshotStateList", h10.getDescriptor());
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (SnapshotStateList) ((SnapshotStateList) obj));
    }

    @Override // st.c
    @NotNull
    public SnapshotStateList<T> deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SnapshotStateList<T> snapshotStateList = new SnapshotStateList<>();
        snapshotStateList.addAll(CollectionsKt.d1((List) decoder.decodeSerializableValue(this.base)));
        return snapshotStateList;
    }

    public void serialize(@NotNull Encoder encoder, @NotNull SnapshotStateList<T> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeSerializableValue(this.base, value);
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }
}
