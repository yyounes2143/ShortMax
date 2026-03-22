package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.saveable.serialization.SerializableSaverKt;
import androidx.savedstate.serialization.SavedStateConfiguration;
import com.ss.ttm.player.MediaPlayer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: RememberSerializable.kt */
@Metadata
/* loaded from: classes.dex */
public final class RememberSerializableKt {
    @Composable
    /* renamed from: rememberSerializable  reason: collision with other method in class */
    public static final /* synthetic */ <T> T m1494rememberSerializable(Object[] objArr, SavedStateConfiguration savedStateConfiguration, Function0<? extends T> function0, Composer composer, int i10, int i11) {
        if ((i11 & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        SavedStateConfiguration savedStateConfiguration2 = savedStateConfiguration;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        xt.a serializersModule = savedStateConfiguration2.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return (T) m1495rememberSerializable(copyOf, t.c(serializersModule, null), savedStateConfiguration2, function0, composer, (i10 << 3) & 8064, 0);
    }

    @Composable
    @NotNull
    /* renamed from: rememberSerializable  reason: collision with other method in class */
    public static final <T> T m1495rememberSerializable(@NotNull Object[] objArr, @NotNull KSerializer<T> kSerializer, @Nullable SavedStateConfiguration savedStateConfiguration, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1261607160, i10, -1, "androidx.compose.runtime.saveable.rememberSerializable (RememberSerializable.kt:93)");
        }
        T t10 = (T) RememberSaveableKt.m1492rememberSaveable(Arrays.copyOf(objArr, objArr.length), SerializableSaverKt.serializableSaver(kSerializer, savedStateConfiguration), (String) null, function0, composer, (i10 & 7168) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t10;
    }

    @Composable
    public static final /* synthetic */ <T> MutableState<T> rememberSerializable(Object[] objArr, SavedStateConfiguration savedStateConfiguration, Function0<? extends MutableState<T>> function0, Composer composer, int i10, int i11) {
        if ((i11 & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        SavedStateConfiguration savedStateConfiguration2 = savedStateConfiguration;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        xt.a serializersModule = savedStateConfiguration2.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return rememberSerializable(copyOf, (KSerializer) t.c(serializersModule, null), savedStateConfiguration2, (Function0) function0, composer, (i10 << 3) & 8064, 0);
    }

    @Composable
    @NotNull
    public static final <T> MutableState<T> rememberSerializable(@NotNull Object[] objArr, @NotNull KSerializer<T> kSerializer, @Nullable SavedStateConfiguration savedStateConfiguration, @NotNull Function0<? extends MutableState<T>> function0, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1248826527, i10, -1, "androidx.compose.runtime.saveable.rememberSerializable (RememberSerializable.kt:163)");
        }
        MutableState<T> mutableState = (MutableState) RememberSaveableKt.m1492rememberSaveable(Arrays.copyOf(objArr, objArr.length), (Saver<Object, ? extends Object>) RememberSaveableKt.mutableStateSaver(SerializableSaverKt.serializableSaver(kSerializer, savedStateConfiguration)), (String) null, (Function0<? extends Object>) function0, composer, (i10 & 7168) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }
}
