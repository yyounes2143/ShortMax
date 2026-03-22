package androidx.savedstate.serialization.serializers;

import android.util.SizeF;
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
/* compiled from: BuiltInSerializer.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SizeFSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,421:1\n1#2:422\n106#3:423\n90#3:424\n*S KotlinDebug\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SizeFSerializer\n*L\n89#1:423\n96#1:424\n*E\n"})
/* loaded from: classes2.dex */
public final class SizeFSerializer implements KSerializer<SizeF> {
    @NotNull
    public static final SizeFSerializer INSTANCE = new SizeFSerializer();
    @NotNull
    private static final SerialDescriptor descriptor = k.f("android.util.SizeF", new SerialDescriptor[0], null, 4, null);

    private SizeFSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.c
    @NotNull
    public SizeF deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
            return SavedStateReader.m4402getSizeFimpl(SavedStateReader.m4338constructorimpl(savedStateDecoder.getSavedState$savedstate_release()), savedStateDecoder.getKey$savedstate_release());
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().h(), decoder).toString());
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull SizeF value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encoder instanceof SavedStateEncoder) {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
            SavedStateWriter.m4455putSizeFimpl(SavedStateWriter.m4424constructorimpl(savedStateEncoder.getSavedState$savedstate_release()), savedStateEncoder.getKey$savedstate_release(), value);
            return;
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().h(), encoder).toString());
    }
}
