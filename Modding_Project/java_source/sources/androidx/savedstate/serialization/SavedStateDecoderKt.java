package androidx.savedstate.serialization;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import org.jetbrains.annotations.NotNull;
import st.c;
import st.t;
/* compiled from: SavedStateDecoder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateDecoderKt {
    @NotNull
    public static final <T> T decodeFromSavedState(@NotNull c<? extends T> deserializer, @NotNull Bundle savedState) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        return (T) decodeFromSavedState$default(deserializer, savedState, null, 4, null);
    }

    public static /* synthetic */ Object decodeFromSavedState$default(Bundle savedState, SavedStateConfiguration configuration, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            configuration = SavedStateConfiguration.DEFAULT;
        }
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return decodeFromSavedState(t.c(serializersModule, null), savedState, configuration);
    }

    public static final /* synthetic */ <T> T decodeFromSavedState(Bundle savedState, SavedStateConfiguration configuration) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return (T) decodeFromSavedState(t.c(serializersModule, null), savedState, configuration);
    }

    @NotNull
    public static final <T> T decodeFromSavedState(@NotNull c<? extends T> deserializer, @NotNull Bundle savedState, @NotNull SavedStateConfiguration configuration) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return (T) new SavedStateDecoder(savedState, configuration).decodeSerializableValue(deserializer);
    }

    public static /* synthetic */ Object decodeFromSavedState$default(c cVar, Bundle bundle, SavedStateConfiguration savedStateConfiguration, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return decodeFromSavedState(cVar, bundle, savedStateConfiguration);
    }
}
