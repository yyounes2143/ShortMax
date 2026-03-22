package androidx.savedstate.serialization;

import android.os.Parcelable;
import androidx.savedstate.serialization.serializers.CharSequenceArraySerializer;
import androidx.savedstate.serialization.serializers.CharSequenceListSerializer;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultJavaSerializableSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.IBinderSerializer;
import androidx.savedstate.serialization.serializers.ParcelableArraySerializer;
import androidx.savedstate.serialization.serializers.ParcelableListSerializer;
import androidx.savedstate.serialization.serializers.SparseParcelableArraySerializer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.c;
/* compiled from: SavedStateDecoder.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateDecoder_androidKt {
    @Nullable
    public static final <T> T decodeFormatSpecificTypesOnPlatform(@NotNull SavedStateDecoder savedStateDecoder, @NotNull c<? extends T> strategy) {
        Intrinsics.checkNotNullParameter(savedStateDecoder, "<this>");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        SerialDescriptor descriptor = strategy.getDescriptor();
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceDescriptor())) {
            return (T) CharSequenceSerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableDescriptor())) {
            return (T) DefaultParcelableSerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicJavaSerializableDescriptor())) {
            return (T) DefaultJavaSerializableSerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicIBinderDescriptor())) {
            return (T) IBinderSerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
        }
        if (!Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getCharSequenceArrayDescriptor()) && !Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceArrayDescriptor())) {
            if (!Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getCharSequenceListDescriptor()) && !Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicCharSequenceListDescriptor())) {
                if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getParcelableArrayDescriptor())) {
                    Parcelable[] deserialize = ParcelableArraySerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
                    return (T) Arrays.copyOf(deserialize, deserialize.length, zs.a.b(getArrayKClass(strategy)));
                } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableArrayDescriptor())) {
                    return (T) ParcelableArraySerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
                } else {
                    if (!Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getParcelableListDescriptor()) && !Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicParcelableListDescriptor())) {
                        if (!Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getSparseParcelableArrayDescriptor()) && !Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getPolymorphicSparseParcelableArrayDescriptor()) && !Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.getNullablePolymorphicSparseParcelableArrayDescriptor())) {
                            return null;
                        }
                        return (T) SparseParcelableArraySerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
                    }
                    return (T) ParcelableListSerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
                }
            }
            return (T) CharSequenceListSerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
        }
        return (T) CharSequenceArraySerializer.INSTANCE.deserialize((Decoder) savedStateDecoder);
    }

    private static final KClass<Object[]> getArrayKClass(c<?> cVar) {
        Object deserialize = cVar.deserialize(EmptyArrayDecoder.INSTANCE);
        Intrinsics.checkNotNull(deserialize);
        return Reflection.getOrCreateKotlinClass(deserialize.getClass());
    }
}
