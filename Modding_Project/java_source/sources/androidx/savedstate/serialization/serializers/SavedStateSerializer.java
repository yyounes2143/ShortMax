package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import ut.k;
/* compiled from: BuiltInSerializer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuiltInSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.kt\nandroidx/savedstate/serialization/serializers/SavedStateSerializer\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,87:1\n106#2:88\n106#2:89\n90#2:90\n*S KotlinDebug\n*F\n+ 1 BuiltInSerializer.kt\nandroidx/savedstate/serialization/serializers/SavedStateSerializer\n*L\n55#1:88\n57#1:89\n70#1:90\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateSerializer implements KSerializer<Bundle> {
    @NotNull
    public static final SavedStateSerializer INSTANCE = new SavedStateSerializer();
    @NotNull
    private static final SerialDescriptor descriptor = k.f("androidx.savedstate.SavedState", new SerialDescriptor[0], null, 4, null);

    private SavedStateSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.c
    @NotNull
    public Bundle deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
            if (Intrinsics.areEqual(savedStateDecoder.getKey$savedstate_release(), "")) {
                return savedStateDecoder.getSavedState$savedstate_release();
            }
            return SavedStateReader.m4395getSavedStateimpl(SavedStateReader.m4338constructorimpl(savedStateDecoder.getSavedState$savedstate_release()), savedStateDecoder.getKey$savedstate_release());
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().h(), decoder).toString());
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull Bundle value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encoder instanceof SavedStateEncoder) {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
            if (Intrinsics.areEqual(savedStateEncoder.getKey$savedstate_release(), "")) {
                SavedStateWriter.m4428putAllimpl(SavedStateWriter.m4424constructorimpl(savedStateEncoder.getSavedState$savedstate_release()), value);
                return;
            } else {
                SavedStateWriter.m4451putSavedStateimpl(SavedStateWriter.m4424constructorimpl(savedStateEncoder.getSavedState$savedstate_release()), savedStateEncoder.getKey$savedstate_release(), value);
                return;
            }
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().h(), encoder).toString());
    }
}
