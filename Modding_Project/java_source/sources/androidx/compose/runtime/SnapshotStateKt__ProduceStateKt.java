package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import com.ss.ttm.player.MediaPlayer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProduceState.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProduceState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProduceState.kt\nandroidx/compose/runtime/SnapshotStateKt__ProduceStateKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,207:1\n1282#2,6:208\n1282#2,6:214\n1282#2,6:220\n1282#2,6:226\n1282#2,6:232\n1282#2,6:238\n1282#2,6:244\n1282#2,6:250\n1282#2,6:256\n1282#2,6:262\n*S KotlinDebug\n*F\n+ 1 ProduceState.kt\nandroidx/compose/runtime/SnapshotStateKt__ProduceStateKt\n*L\n79#1:208,6\n80#1:214,6\n109#1:220,6\n110#1:226,6\n140#1:232,6\n141#1:238,6\n172#1:244,6\n173#1:250,6\n202#1:256,6\n204#1:262,6\n*E\n"})
/* loaded from: classes.dex */
public final /* synthetic */ class SnapshotStateKt__ProduceStateKt {
    @Composable
    @NotNull
    public static final <T> State<T> produceState(T t10, @NotNull Function2<? super ProduceStateScope<T>, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(10454275, i10, -1, "androidx.compose.runtime.produceState (ProduceState.kt:77)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        Unit unit = Unit.f60915a;
        boolean changedInstance = composer.changedInstance(function2);
        Object rememberedValue2 = composer.rememberedValue();
        if (changedInstance || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        EffectsKt.LaunchedEffect(unit, (Function2) rememberedValue2, composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    @Composable
    @NotNull
    public static final <T> State<T> produceState(T t10, @Nullable Object obj, @NotNull Function2<? super ProduceStateScope<T>, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1928268701, i10, -1, "androidx.compose.runtime.produceState (ProduceState.kt:107)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean changedInstance = composer.changedInstance(function2);
        Object rememberedValue2 = composer.rememberedValue();
        if (changedInstance || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$2$1(function2, mutableState, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        EffectsKt.LaunchedEffect(obj, (Function2) rememberedValue2, composer, (i10 >> 3) & 14);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    @Composable
    @NotNull
    public static final <T> State<T> produceState(T t10, @Nullable Object obj, @Nullable Object obj2, @NotNull Function2<? super ProduceStateScope<T>, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1703169085, i10, -1, "androidx.compose.runtime.produceState (ProduceState.kt:138)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean changedInstance = composer.changedInstance(function2);
        Object rememberedValue2 = composer.rememberedValue();
        if (changedInstance || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$3$1(function2, mutableState, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        EffectsKt.LaunchedEffect(obj, obj2, (Function2) rememberedValue2, composer, (i10 >> 3) & 126);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    @Composable
    @NotNull
    public static final <T> State<T> produceState(T t10, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Function2<? super ProduceStateScope<T>, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1807205155, i10, -1, "androidx.compose.runtime.produceState (ProduceState.kt:170)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean changedInstance = composer.changedInstance(function2);
        Object rememberedValue2 = composer.rememberedValue();
        if (changedInstance || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$4$1(function2, mutableState, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        EffectsKt.LaunchedEffect(obj, obj2, obj3, (Function2) rememberedValue2, composer, (i10 >> 3) & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_NUMBER_THRESHOLD);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    @Composable
    @NotNull
    public static final <T> State<T> produceState(T t10, @NotNull Object[] objArr, @NotNull Function2<? super ProduceStateScope<T>, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(490154582, i10, -1, "androidx.compose.runtime.produceState (ProduceState.kt:200)");
        }
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        boolean changedInstance = composer.changedInstance(function2);
        Object rememberedValue2 = composer.rememberedValue();
        if (changedInstance || rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$5$1(function2, mutableState, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        EffectsKt.LaunchedEffect(copyOf, (Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object>) rememberedValue2, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }
}
