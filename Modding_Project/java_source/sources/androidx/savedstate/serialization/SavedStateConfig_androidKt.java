package androidx.savedstate.serialization;

import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.SizeFSerializer;
import androidx.savedstate.serialization.serializers.SizeSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.modules.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateConfig.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateConfig.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateConfig.android.kt\nandroidx/savedstate/serialization/SavedStateConfig_androidKt\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,33:1\n31#2,2:34\n243#2:36\n243#2:37\n33#2:38\n*S KotlinDebug\n*F\n+ 1 SavedStateConfig.android.kt\nandroidx/savedstate/serialization/SavedStateConfig_androidKt\n*L\n26#1:34,2\n27#1:36\n28#1:37\n26#1:38\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateConfig_androidKt {
    @NotNull
    public static final xt.a getDefaultSerializersModuleOnPlatform() {
        c cVar = new c();
        cVar.d(Reflection.getOrCreateKotlinClass(Size.class), SizeSerializer.INSTANCE);
        cVar.d(Reflection.getOrCreateKotlinClass(SizeF.class), SizeFSerializer.INSTANCE);
        cVar.e(Reflection.getOrCreateKotlinClass(SparseArray.class), new Function1() { // from class: androidx.savedstate.serialization.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KSerializer defaultSerializersModuleOnPlatform$lambda$1$lambda$0;
                defaultSerializersModuleOnPlatform$lambda$1$lambda$0 = SavedStateConfig_androidKt.getDefaultSerializersModuleOnPlatform$lambda$1$lambda$0((List) obj);
                return defaultSerializersModuleOnPlatform$lambda$1$lambda$0;
            }
        });
        return cVar.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer getDefaultSerializersModuleOnPlatform$lambda$1$lambda$0(List argSerializers) {
        Intrinsics.checkNotNullParameter(argSerializers, "argSerializers");
        return new SparseArraySerializer((KSerializer) CollectionsKt.r0(argSerializers));
    }
}
