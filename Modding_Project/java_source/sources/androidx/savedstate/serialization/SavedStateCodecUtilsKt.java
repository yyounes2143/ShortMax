package androidx.savedstate.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateCodecUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateCodecUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateCodecUtils.kt\nandroidx/savedstate/serialization/SavedStateCodecUtilsKt\n+ 2 BuiltinSerializers.kt\nkotlinx/serialization/builtins/BuiltinSerializersKt\n*L\n1#1,41:1\n194#2:42\n*S KotlinDebug\n*F\n+ 1 SavedStateCodecUtils.kt\nandroidx/savedstate/serialization/SavedStateCodecUtilsKt\n*L\n40#1:42\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateCodecUtilsKt {
    @NotNull
    private static final SerialDescriptor booleanArrayDescriptor;
    @NotNull
    private static final SerialDescriptor charArrayDescriptor;
    @NotNull
    private static final SerialDescriptor doubleArrayDescriptor;
    @NotNull
    private static final SerialDescriptor floatArrayDescriptor;
    @NotNull
    private static final SerialDescriptor intArrayDescriptor;
    @NotNull
    private static final SerialDescriptor intListDescriptor = tt.a.h(tt.a.A(IntCompanionObject.INSTANCE)).getDescriptor();
    @NotNull
    private static final SerialDescriptor longArrayDescriptor;
    @NotNull
    private static final SerialDescriptor stringArrayDescriptor;
    @NotNull
    private static final SerialDescriptor stringListDescriptor;

    static {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        stringListDescriptor = tt.a.h(tt.a.D(stringCompanionObject)).getDescriptor();
        booleanArrayDescriptor = tt.a.b().getDescriptor();
        charArrayDescriptor = tt.a.d().getDescriptor();
        doubleArrayDescriptor = tt.a.e().getDescriptor();
        floatArrayDescriptor = tt.a.f().getDescriptor();
        intArrayDescriptor = tt.a.g().getDescriptor();
        longArrayDescriptor = tt.a.i().getDescriptor();
        stringArrayDescriptor = tt.a.a(Reflection.getOrCreateKotlinClass(String.class), tt.a.D(stringCompanionObject)).getDescriptor();
    }

    @NotNull
    public static final SerialDescriptor getBooleanArrayDescriptor() {
        return booleanArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getCharArrayDescriptor() {
        return charArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getDoubleArrayDescriptor() {
        return doubleArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getFloatArrayDescriptor() {
        return floatArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getIntArrayDescriptor() {
        return intArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getIntListDescriptor() {
        return intListDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getLongArrayDescriptor() {
        return longArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getStringArrayDescriptor() {
        return stringArrayDescriptor;
    }

    @NotNull
    public static final SerialDescriptor getStringListDescriptor() {
        return stringListDescriptor;
    }

    public static /* synthetic */ void getStringArrayDescriptor$annotations() {
    }
}
