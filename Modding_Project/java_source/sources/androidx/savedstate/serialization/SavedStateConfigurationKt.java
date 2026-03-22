package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.serializers.SavedStateSerializer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.modules.c;
import kotlinx.serialization.modules.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateConfiguration.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateConfiguration.kt\nandroidx/savedstate/serialization/SavedStateConfigurationKt\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,138:1\n31#2,2:139\n243#2:141\n33#2:142\n*S KotlinDebug\n*F\n+ 1 SavedStateConfiguration.kt\nandroidx/savedstate/serialization/SavedStateConfigurationKt\n*L\n137#1:139,2\n137#1:141\n137#1:142\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateConfigurationKt {
    @NotNull
    private static final xt.a DEFAULT_SERIALIZERS_MODULE;

    static {
        c cVar = new c();
        cVar.d(Reflection.getOrCreateKotlinClass(Bundle.class), SavedStateSerializer.INSTANCE);
        DEFAULT_SERIALIZERS_MODULE = e.c(cVar.f(), SavedStateConfig_androidKt.getDefaultSerializersModuleOnPlatform());
    }

    @NotNull
    public static final SavedStateConfiguration SavedStateConfiguration(@NotNull Function1<? super SavedStateConfiguration.Builder, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        return SavedStateConfiguration$default(null, builderAction, 1, null);
    }

    public static /* synthetic */ SavedStateConfiguration SavedStateConfiguration$default(SavedStateConfiguration savedStateConfiguration, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return SavedStateConfiguration(savedStateConfiguration, function1);
    }

    @NotNull
    public static final SavedStateConfiguration SavedStateConfiguration(@NotNull SavedStateConfiguration from, @NotNull Function1<? super SavedStateConfiguration.Builder, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        SavedStateConfiguration.Builder builder = new SavedStateConfiguration.Builder(from);
        builderAction.invoke(builder);
        return builder.build$savedstate_release();
    }
}
