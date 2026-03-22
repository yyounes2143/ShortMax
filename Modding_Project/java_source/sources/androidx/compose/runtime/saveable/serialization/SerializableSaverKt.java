package androidx.compose.runtime.saveable.serialization;

import android.os.Bundle;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.saveable.serialization.SerializableSaverKt;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateDecoderKt;
import androidx.savedstate.serialization.SavedStateEncoderKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import st.t;
import xt.a;
/* compiled from: SerializableSaver.kt */
@Metadata
/* loaded from: classes.dex */
public final class SerializableSaverKt {
    public static final /* synthetic */ <Serializable> Saver<Serializable, Bundle> serializableSaver(SavedStateConfiguration savedStateConfiguration) {
        a serializersModule = savedStateConfiguration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "Serializable");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return serializableSaver(t.c(serializersModule, null), savedStateConfiguration);
    }

    public static /* synthetic */ Saver serializableSaver$default(SavedStateConfiguration savedStateConfiguration, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        a serializersModule = savedStateConfiguration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "Serializable");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return serializableSaver(t.c(serializersModule, null), savedStateConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle serializableSaver$lambda$0(KSerializer kSerializer, SavedStateConfiguration savedStateConfiguration, SaverScope saverScope, Object obj) {
        return SavedStateEncoderKt.encodeToSavedState(kSerializer, obj, savedStateConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object serializableSaver$lambda$1(KSerializer kSerializer, SavedStateConfiguration savedStateConfiguration, Bundle bundle) {
        return SavedStateDecoderKt.decodeFromSavedState(kSerializer, bundle, savedStateConfiguration);
    }

    @NotNull
    public static final <Serializable> Saver<Serializable, Bundle> serializableSaver(@NotNull final KSerializer<Serializable> kSerializer, @NotNull final SavedStateConfiguration savedStateConfiguration) {
        return SaverKt.Saver(new Function2() { // from class: m.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Bundle serializableSaver$lambda$0;
                serializableSaver$lambda$0 = SerializableSaverKt.serializableSaver$lambda$0(KSerializer.this, savedStateConfiguration, (SaverScope) obj, obj2);
                return serializableSaver$lambda$0;
            }
        }, new Function1() { // from class: m.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object serializableSaver$lambda$1;
                serializableSaver$lambda$1 = SerializableSaverKt.serializableSaver$lambda$1(KSerializer.this, savedStateConfiguration, (Bundle) obj);
                return serializableSaver$lambda$1;
            }
        });
    }

    public static /* synthetic */ Saver serializableSaver$default(KSerializer kSerializer, SavedStateConfiguration savedStateConfiguration, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return serializableSaver(kSerializer, savedStateConfiguration);
    }
}
