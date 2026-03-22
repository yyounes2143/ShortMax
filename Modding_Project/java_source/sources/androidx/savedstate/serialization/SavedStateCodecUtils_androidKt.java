package androidx.savedstate.serialization;

import android.os.IBinder;
import android.os.Parcelable;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import st.g;
/* compiled from: SavedStateCodecUtils.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateCodecUtils.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateCodecUtils.android.kt\nandroidx/savedstate/serialization/SavedStateCodecUtils_androidKt\n+ 2 BuiltinSerializers.kt\nkotlinx/serialization/builtins/BuiltinSerializersKt\n*L\n1#1,67:1\n194#2:68\n194#2:69\n194#2:70\n194#2:71\n*S KotlinDebug\n*F\n+ 1 SavedStateCodecUtils.android.kt\nandroidx/savedstate/serialization/SavedStateCodecUtils_androidKt\n*L\n42#1:68\n45#1:69\n52#1:70\n55#1:71\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateCodecUtils_androidKt {
    @NotNull
    private static final SerialDescriptor charSequenceArrayDescriptor;
    @NotNull
    private static final SerialDescriptor charSequenceListDescriptor;
    @NotNull
    private static final SerialDescriptor nullablePolymorphicSparseParcelableArrayDescriptor;
    @NotNull
    private static final SerialDescriptor parcelableArrayDescriptor;
    @NotNull
    private static final SerialDescriptor parcelableListDescriptor;
    @NotNull
    private static final SerialDescriptor polymorphicCharSequenceArrayDescriptor;
    @NotNull
    private static final SerialDescriptor polymorphicCharSequenceListDescriptor;
    @NotNull
    private static final SerialDescriptor polymorphicParcelableArrayDescriptor;
    @NotNull
    private static final SerialDescriptor polymorphicParcelableListDescriptor;
    @NotNull
    private static final SerialDescriptor polymorphicSparseParcelableArrayDescriptor;
    @NotNull
    private static final SerialDescriptor sparseParcelableArrayDescriptor;
    @NotNull
    private static final SerialDescriptor polymorphicCharSequenceDescriptor = new g(Reflection.getOrCreateKotlinClass(CharSequence.class)).getDescriptor();
    @NotNull
    private static final SerialDescriptor polymorphicParcelableDescriptor = new g(Reflection.getOrCreateKotlinClass(Parcelable.class)).getDescriptor();
    @NotNull
    private static final SerialDescriptor polymorphicJavaSerializableDescriptor = new g(Reflection.getOrCreateKotlinClass(Serializable.class)).getDescriptor();
    @NotNull
    private static final SerialDescriptor polymorphicIBinderDescriptor = new g(Reflection.getOrCreateKotlinClass(IBinder.class)).getDescriptor();

    static {
        DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.INSTANCE;
        parcelableArrayDescriptor = tt.a.a(Reflection.getOrCreateKotlinClass(Parcelable.class), defaultParcelableSerializer).getDescriptor();
        polymorphicParcelableArrayDescriptor = tt.a.a(Reflection.getOrCreateKotlinClass(Parcelable.class), new g(Reflection.getOrCreateKotlinClass(Parcelable.class))).getDescriptor();
        parcelableListDescriptor = tt.a.h(defaultParcelableSerializer).getDescriptor();
        polymorphicParcelableListDescriptor = tt.a.h(new g(Reflection.getOrCreateKotlinClass(Parcelable.class))).getDescriptor();
        CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.INSTANCE;
        charSequenceArrayDescriptor = tt.a.a(Reflection.getOrCreateKotlinClass(CharSequence.class), charSequenceSerializer).getDescriptor();
        polymorphicCharSequenceArrayDescriptor = tt.a.a(Reflection.getOrCreateKotlinClass(CharSequence.class), new g(Reflection.getOrCreateKotlinClass(CharSequence.class))).getDescriptor();
        charSequenceListDescriptor = tt.a.h(charSequenceSerializer).getDescriptor();
        polymorphicCharSequenceListDescriptor = tt.a.h(new g(Reflection.getOrCreateKotlinClass(CharSequence.class))).getDescriptor();
        sparseParcelableArrayDescriptor = new SparseArraySerializer(defaultParcelableSerializer).getDescriptor();
        polymorphicSparseParcelableArrayDescriptor = new SparseArraySerializer(new g(Reflection.getOrCreateKotlinClass(Parcelable.class))).getDescriptor();
        nullablePolymorphicSparseParcelableArrayDescriptor = new SparseArraySerializer(tt.a.t(new g(Reflection.getOrCreateKotlinClass(Parcelable.class)))).getDescriptor();
    }

    @NotNull
    public static final SerialDescriptor getCharSequenceArrayDescriptor() {
        return charSequenceArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getCharSequenceListDescriptor() {
        return charSequenceListDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getNullablePolymorphicSparseParcelableArrayDescriptor() {
        return nullablePolymorphicSparseParcelableArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getParcelableArrayDescriptor() {
        return parcelableArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getParcelableListDescriptor() {
        return parcelableListDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicCharSequenceArrayDescriptor() {
        return polymorphicCharSequenceArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicCharSequenceDescriptor() {
        return polymorphicCharSequenceDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicCharSequenceListDescriptor() {
        return polymorphicCharSequenceListDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicIBinderDescriptor() {
        return polymorphicIBinderDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicJavaSerializableDescriptor() {
        return polymorphicJavaSerializableDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicParcelableArrayDescriptor() {
        return polymorphicParcelableArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicParcelableDescriptor() {
        return polymorphicParcelableDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicParcelableListDescriptor() {
        return polymorphicParcelableListDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getPolymorphicSparseParcelableArrayDescriptor() {
        return polymorphicSparseParcelableArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getSparseParcelableArrayDescriptor() {
        return sparseParcelableArrayDescriptor;
    }

    public static /* synthetic */ void getCharSequenceArrayDescriptor$annotations() {
    }

    public static /* synthetic */ void getParcelableArrayDescriptor$annotations() {
    }

    public static /* synthetic */ void getPolymorphicCharSequenceArrayDescriptor$annotations() {
    }

    public static /* synthetic */ void getPolymorphicParcelableArrayDescriptor$annotations() {
    }
}
