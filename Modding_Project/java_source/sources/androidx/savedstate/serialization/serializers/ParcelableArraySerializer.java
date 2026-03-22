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
@SourceDebugExtension({"SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/ParcelableArraySerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 4 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n*L\n1#1,421:1\n1#2:422\n106#3:423\n90#3:424\n653#4:425\n*S KotlinDebug\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/ParcelableArraySerializer\n*L\n277#1:423\n285#1:424\n285#1:425\n*E\n"})
/* loaded from: classes2.dex */
public final class ParcelableArraySerializer implements KSerializer<Parcelable[]> {
    @NotNull
    public static final ParcelableArraySerializer INSTANCE = new ParcelableArraySerializer();
    @NotNull
    private static final SerialDescriptor descriptor = k.f("kotlin.Array<android.os.Parcelable>", new SerialDescriptor[0], null, 4, null);

    private ParcelableArraySerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.c
    @NotNull
    public Parcelable[] deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
            return SavedStateReader.m4386getParcelableArrayimpl(SavedStateReader.m4338constructorimpl(savedStateDecoder.getSavedState$savedstate_release()), savedStateDecoder.getKey$savedstate_release(), Reflection.getOrCreateKotlinClass(Parcelable.class));
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().h(), decoder).toString());
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull Parcelable[] value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encoder instanceof SavedStateEncoder) {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
            SavedStateWriter.m4449putParcelableArrayimpl(SavedStateWriter.m4424constructorimpl(savedStateEncoder.getSavedState$savedstate_release()), savedStateEncoder.getKey$savedstate_release(), value);
            return;
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().h(), encoder).toString());
    }
}
