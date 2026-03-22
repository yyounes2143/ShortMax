package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SaveableStateHolder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSaveableStateHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,129:1\n1282#2,6:130\n1#3:136\n75#4:137\n*S KotlinDebug\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderKt\n*L\n58#1:130,6\n59#1:137\n*E\n"})
/* loaded from: classes.dex */
public final class SaveableStateHolderKt {
    @Composable
    @NotNull
    public static final SaveableStateHolder rememberSaveableStateHolder(@Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(15454635, i10, -1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:57)");
        }
        composer.startReplaceGroup(1967008021);
        Object[] objArr = new Object[0];
        Saver<SaveableStateHolderImpl, ?> saver = SaveableStateHolderImpl.Companion.getSaver();
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new Function0() { // from class: androidx.compose.runtime.saveable.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    SaveableStateHolderImpl rememberSaveableStateHolder$lambda$1$lambda$0;
                    rememberSaveableStateHolder$lambda$1$lambda$0 = SaveableStateHolderKt.rememberSaveableStateHolder$lambda$1$lambda$0();
                    return rememberSaveableStateHolder$lambda$1$lambda$0;
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) RememberSaveableKt.m1493rememberSaveable(objArr, saver, (Function0<? extends Object>) rememberedValue, composer, (int) MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500);
        saveableStateHolderImpl.setParentSaveableStateRegistry((SaveableStateRegistry) composer.consume(SaveableStateRegistryKt.getLocalSaveableStateRegistry()));
        composer.endReplaceGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return saveableStateHolderImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SaveableStateHolderImpl rememberSaveableStateHolder$lambda$1$lambda$0() {
        return new SaveableStateHolderImpl(null, 1, null);
    }
}
