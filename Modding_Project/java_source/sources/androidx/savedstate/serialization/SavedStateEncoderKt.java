package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
import st.l;
import st.t;
/* compiled from: SavedStateEncoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateEncoder.kt\nandroidx/savedstate/serialization/SavedStateEncoderKt\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,281:1\n27#2:282\n46#2:283\n32#2,4:284\n31#2,7:294\n126#3:288\n153#3,3:289\n37#4,2:292\n1#5:301\n106#6:302\n46#7:303\n*S KotlinDebug\n*F\n+ 1 SavedStateEncoder.kt\nandroidx/savedstate/serialization/SavedStateEncoderKt\n*L\n67#1:282\n67#1:283\n67#1:284,4\n67#1:294,7\n67#1:288\n67#1:289,3\n67#1:292,2\n67#1:301\n67#1:302\n67#1:303\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateEncoderKt {
    @NotNull
    public static final <T> Bundle encodeToSavedState(@NotNull l<? super T> serializer, @NotNull T value) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(value, "value");
        return encodeToSavedState$default(serializer, value, null, 4, null);
    }

    public static /* synthetic */ Bundle encodeToSavedState$default(Object value, SavedStateConfiguration configuration, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            configuration = SavedStateConfiguration.DEFAULT;
        }
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return encodeToSavedState(t.c(serializersModule, null), value, configuration);
    }

    public static final /* synthetic */ <T> Bundle encodeToSavedState(T value, SavedStateConfiguration configuration) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        xt.a serializersModule = configuration.getSerializersModule();
        Intrinsics.reifiedOperationMarker(6, "T");
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return encodeToSavedState(t.c(serializersModule, null), value, configuration);
    }

    @NotNull
    public static final <T> Bundle encodeToSavedState(@NotNull l<? super T> serializer, @NotNull T value, @NotNull SavedStateConfiguration configuration) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Map i10 = p0.i();
        if (i10.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(i10.size());
            for (Map.Entry entry : i10.entrySet()) {
                arrayList.add(k.a((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m4424constructorimpl(bundleOf);
        new SavedStateEncoder(bundleOf, configuration).encodeSerializableValue(serializer, value);
        return bundleOf;
    }

    public static /* synthetic */ Bundle encodeToSavedState$default(l lVar, Object obj, SavedStateConfiguration savedStateConfiguration, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            savedStateConfiguration = SavedStateConfiguration.DEFAULT;
        }
        return encodeToSavedState(lVar, obj, savedStateConfiguration);
    }
}
