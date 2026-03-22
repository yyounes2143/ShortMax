package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import st.c;
import ut.m;
/* compiled from: SavedStateDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateDecoder.kt\nandroidx/savedstate/serialization/SavedStateDecoder\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,215:1\n90#2:216\n90#2:217\n90#2:218\n90#2:219\n90#2:220\n90#2:221\n90#2:222\n90#2:223\n90#2:224\n90#2:225\n90#2:226\n90#2:227\n90#2:228\n90#2:229\n90#2:230\n90#2:231\n90#2:232\n90#2:233\n90#2:234\n90#2:235\n90#2:236\n90#2:237\n90#2:238\n*S KotlinDebug\n*F\n+ 1 SavedStateDecoder.kt\nandroidx/savedstate/serialization/SavedStateDecoder\n*L\n92#1:216\n116#1:217\n118#1:218\n120#1:219\n122#1:220\n124#1:221\n126#1:222\n128#1:223\n130#1:224\n132#1:225\n134#1:226\n137#1:227\n141#1:228\n145#1:229\n149#1:230\n153#1:231\n157#1:232\n161#1:233\n165#1:234\n169#1:235\n177#1:236\n184#1:237\n100#1:238\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateDecoder extends kotlinx.serialization.encoding.a {
    @NotNull
    private final SavedStateConfiguration configuration;
    private int index;
    @NotNull
    private String key;
    @NotNull
    private final Bundle savedState;
    @NotNull
    private final xt.a serializersModule;

    public SavedStateDecoder(@NotNull Bundle savedState, @NotNull SavedStateConfiguration configuration) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.savedState = savedState;
        this.configuration = configuration;
        this.key = "";
        this.serializersModule = configuration.getSerializersModule();
    }

    private final boolean[] decodeBooleanArray() {
        return SavedStateReader.m4348getBooleanArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final char[] decodeCharArray() {
        return SavedStateReader.m4352getCharArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final double[] decodeDoubleArray() {
        return SavedStateReader.m4362getDoubleArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private static final boolean decodeElementIndex$presentInEncoding(SavedStateDecoder savedStateDecoder, SerialDescriptor serialDescriptor, int i10) {
        return SavedStateReader.m4339containsimpl(SavedStateReader.m4338constructorimpl(savedStateDecoder.savedState), serialDescriptor.f(i10));
    }

    private final float[] decodeFloatArray() {
        return SavedStateReader.m4366getFloatArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final <T> T decodeFormatSpecificTypes(c<? extends T> cVar) {
        T t10 = (T) SavedStateDecoder_androidKt.decodeFormatSpecificTypesOnPlatform(this, cVar);
        if (t10 == null) {
            SerialDescriptor descriptor = cVar.getDescriptor();
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getIntListDescriptor())) {
                return (T) decodeIntList();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getStringListDescriptor())) {
                return (T) decodeStringList();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getBooleanArrayDescriptor())) {
                return (T) decodeBooleanArray();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getCharArrayDescriptor())) {
                return (T) decodeCharArray();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getDoubleArrayDescriptor())) {
                return (T) decodeDoubleArray();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getFloatArrayDescriptor())) {
                return (T) decodeFloatArray();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getIntArrayDescriptor())) {
                return (T) decodeIntArray();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getLongArrayDescriptor())) {
                return (T) decodeLongArray();
            }
            if (Intrinsics.areEqual(descriptor, SavedStateCodecUtilsKt.getStringArrayDescriptor())) {
                return (T) decodeStringArray();
            }
            return null;
        }
        return t10;
    }

    private final int[] decodeIntArray() {
        return SavedStateReader.m4370getIntArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final List<Integer> decodeIntList() {
        return SavedStateReader.m4372getIntListimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final long[] decodeLongArray() {
        return SavedStateReader.m4380getLongArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final String[] decodeStringArray() {
        return SavedStateReader.m4410getStringArrayimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    private final List<String> decodeStringList() {
        return SavedStateReader.m4412getStringListimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (Intrinsics.areEqual(this.key, "")) {
            return this;
        }
        return new SavedStateDecoder(SavedStateReader.m4395getSavedStateimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key), this.configuration);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        return SavedStateReader.m4347getBooleanimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        return (byte) SavedStateReader.m4369getIntimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        return SavedStateReader.m4351getCharimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        return SavedStateReader.m4361getDoubleimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        int m4418sizeimpl;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (!Intrinsics.areEqual(descriptor.getKind(), m.b.f68629a) && !Intrinsics.areEqual(descriptor.getKind(), m.c.f68630a)) {
            m4418sizeimpl = descriptor.e();
        } else {
            m4418sizeimpl = SavedStateReader.m4418sizeimpl(SavedStateReader.m4338constructorimpl(this.savedState));
        }
        while (true) {
            int i10 = this.index;
            if (i10 >= m4418sizeimpl || !descriptor.i(i10) || decodeElementIndex$presentInEncoding(this, descriptor, this.index)) {
                break;
            }
            this.index++;
        }
        int i11 = this.index;
        if (i11 < m4418sizeimpl) {
            this.key = descriptor.f(i11);
            int i12 = this.index;
            this.index = i12 + 1;
            return i12;
        }
        return -1;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int decodeEnum(@NotNull SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        return SavedStateReader.m4369getIntimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        return SavedStateReader.m4365getFloatimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        return SavedStateReader.m4369getIntimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        return SavedStateReader.m4379getLongimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        return !SavedStateReader.m4417isNullimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(@NotNull c<? extends T> deserializer) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        T t10 = (T) decodeFormatSpecificTypes(deserializer);
        if (t10 == null) {
            return (T) super.decodeSerializableValue(deserializer);
        }
        return t10;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        return (short) SavedStateReader.m4369getIntimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public String decodeString() {
        return SavedStateReader.m4409getStringimpl(SavedStateReader.m4338constructorimpl(this.savedState), this.key);
    }

    @NotNull
    public final String getKey$savedstate_release() {
        return this.key;
    }

    @NotNull
    public final Bundle getSavedState$savedstate_release() {
        return this.savedState;
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public xt.a getSerializersModule() {
        return this.serializersModule;
    }
}
