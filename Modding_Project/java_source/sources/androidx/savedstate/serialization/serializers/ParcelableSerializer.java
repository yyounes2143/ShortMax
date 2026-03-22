package androidx.savedstate.serialization.serializers;

import android.os.Parcelable;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.k;
/* compiled from: BuiltInSerializer.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/ParcelableSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 4 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n*L\n1#1,421:1\n1#2:422\n106#3:423\n90#3:424\n252#4:425\n*S KotlinDebug\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/ParcelableSerializer\n*L\n186#1:423\n194#1:424\n194#1:425\n*E\n"})
/* loaded from: classes2.dex */
public abstract class ParcelableSerializer<T extends Parcelable> implements KSerializer<T> {
    @NotNull
    private final SerialDescriptor descriptor = k.f("android.os.Parcelable", new SerialDescriptor[0], null, 4, null);

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // st.l
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize(encoder, (Encoder) ((Parcelable) obj));
    }

    @Override // st.c
    @NotNull
    public final T deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
            T t10 = (T) SavedStateReader.m4384getParcelableimpl(SavedStateReader.m4338constructorimpl(savedStateDecoder.getSavedState$savedstate_release()), savedStateDecoder.getKey$savedstate_release(), Reflection.getOrCreateKotlinClass(Parcelable.class));
            Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of androidx.savedstate.serialization.serializers.ParcelableSerializer");
            return t10;
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.decoderErrorMessage(this.descriptor.h(), decoder).toString());
    }

    public final void serialize(@NotNull Encoder encoder, @NotNull T value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encoder instanceof SavedStateEncoder) {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
            SavedStateWriter.m4448putParcelableimpl(SavedStateWriter.m4424constructorimpl(savedStateEncoder.getSavedState$savedstate_release()), savedStateEncoder.getKey$savedstate_release(), value);
            return;
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.encoderErrorMessage(this.descriptor.h(), encoder).toString());
    }
}
