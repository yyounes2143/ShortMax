package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import com.ss.ttm.player.MediaPlayer;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SaveableStateHolder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSaveableStateHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderImpl\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,129:1\n142#2,3:130\n145#2,2:145\n1282#3,6:133\n1282#3,6:139\n391#4,4:147\n363#4,6:151\n373#4,3:158\n376#4,2:162\n396#4,2:164\n379#4,6:166\n398#4:172\n1826#5:157\n1688#5:161\n1#6:173\n66#7,5:174\n*S KotlinDebug\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderImpl\n*L\n72#1:130,3\n72#1:145,2\n73#1:133,6\n87#1:139,6\n102#1:147,4\n102#1:151,6\n102#1:158,3\n102#1:162,2\n102#1:164,2\n102#1:166,6\n102#1:172\n102#1:157\n102#1:161\n91#1:174,5\n*E\n"})
/* loaded from: classes.dex */
public final class SaveableStateHolderImpl implements SaveableStateHolder {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Saver<SaveableStateHolderImpl, ?> Saver = SaverKt.Saver(new Function2() { // from class: androidx.compose.runtime.saveable.j
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Map Saver$lambda$11;
            Saver$lambda$11 = SaveableStateHolderImpl.Saver$lambda$11((SaverScope) obj, (SaveableStateHolderImpl) obj2);
            return Saver$lambda$11;
        }
    }, new Function1() { // from class: androidx.compose.runtime.saveable.k
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            SaveableStateHolderImpl Saver$lambda$12;
            Saver$lambda$12 = SaveableStateHolderImpl.Saver$lambda$12((Map) obj);
            return Saver$lambda$12;
        }
    });
    @NotNull
    private final Function1<Object, Boolean> canBeSaved;
    @Nullable
    private SaveableStateRegistry parentSaveableStateRegistry;
    @NotNull
    private final MutableScatterMap<Object, SaveableStateRegistry> registries;
    @NotNull
    private final Map<Object, Map<String, List<Object>>> savedStates;

    /* compiled from: SaveableStateHolder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<SaveableStateHolderImpl, ?> getSaver() {
            return SaveableStateHolderImpl.Saver;
        }

        private Companion() {
        }
    }

    public SaveableStateHolderImpl() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult SaveableStateProvider$lambda$7$lambda$6$lambda$5(final SaveableStateHolderImpl saveableStateHolderImpl, final Object obj, final SaveableStateRegistryWrapper saveableStateRegistryWrapper, DisposableEffectScope disposableEffectScope) {
        if (!saveableStateHolderImpl.registries.contains(obj)) {
            saveableStateHolderImpl.savedStates.remove(obj);
            saveableStateHolderImpl.registries.set(obj, saveableStateRegistryWrapper);
            return new DisposableEffectResult() { // from class: androidx.compose.runtime.saveable.SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void dispose() {
                    MutableScatterMap mutableScatterMap;
                    Map map;
                    mutableScatterMap = SaveableStateHolderImpl.this.registries;
                    Object remove = mutableScatterMap.remove(obj);
                    SaveableStateRegistryWrapper saveableStateRegistryWrapper2 = saveableStateRegistryWrapper;
                    if (remove == saveableStateRegistryWrapper2) {
                        SaveableStateHolderImpl saveableStateHolderImpl2 = SaveableStateHolderImpl.this;
                        map = saveableStateHolderImpl2.savedStates;
                        saveableStateHolderImpl2.saveTo(saveableStateRegistryWrapper2, map, obj);
                    }
                }
            };
        }
        throw new IllegalArgumentException(("Key " + obj + " was used multiple times ").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SaveableStateProvider$lambda$8(SaveableStateHolderImpl saveableStateHolderImpl, Object obj, Function2 function2, int i10, Composer composer, int i11) {
        saveableStateHolderImpl.SaveableStateProvider(obj, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map Saver$lambda$11(SaverScope saverScope, SaveableStateHolderImpl saveableStateHolderImpl) {
        return saveableStateHolderImpl.saveAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SaveableStateHolderImpl Saver$lambda$12(Map map) {
        return new SaveableStateHolderImpl(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean canBeSaved$lambda$0(SaveableStateHolderImpl saveableStateHolderImpl, Object obj) {
        SaveableStateRegistry saveableStateRegistry = saveableStateHolderImpl.parentSaveableStateRegistry;
        if (saveableStateRegistry != null) {
            return saveableStateRegistry.canBeSaved(obj);
        }
        return true;
    }

    private final Map<Object, Map<String, List<Object>>> saveAll() {
        Map<Object, Map<String, List<Object>>> map = this.savedStates;
        MutableScatterMap<Object, SaveableStateRegistry> mutableScatterMap = this.registries;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            saveTo((SaveableStateRegistry) objArr2[i13], map, objArr[i13]);
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    }
                }
                if (i10 == length) {
                    break;
                }
                i10++;
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveTo(SaveableStateRegistry saveableStateRegistry, Map<Object, Map<String, List<Object>>> map, Object obj) {
        Map<String, List<Object>> performSave = saveableStateRegistry.performSave();
        if (performSave.isEmpty()) {
            map.remove(obj);
        } else {
            map.put(obj, performSave);
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    @Composable
    public void SaveableStateProvider(@NotNull final Object obj, @NotNull final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, final int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(533563200);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changedInstance(obj)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changedInstance(function2)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changedInstance(this)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & 147) != 146) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (startRestartGroup.shouldExecute(z10, i11 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(533563200, i11, -1, "androidx.compose.runtime.saveable.SaveableStateHolderImpl.SaveableStateProvider (SaveableStateHolder.kt:70)");
            }
            startRestartGroup.startReusableGroup(207, obj);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                if (this.canBeSaved.invoke(obj).booleanValue()) {
                    rememberedValue = new SaveableStateRegistryWrapper(SaveableStateRegistryKt.SaveableStateRegistry(this.savedStates.get(obj), this.canBeSaved));
                    startRestartGroup.updateRememberedValue(rememberedValue);
                } else {
                    throw new IllegalArgumentException(("Type of the key " + obj + " is not supported. On Android you can only use types which can be stored inside the Bundle.").toString());
                }
            }
            final SaveableStateRegistryWrapper saveableStateRegistryWrapper = (SaveableStateRegistryWrapper) rememberedValue;
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{SaveableStateRegistryKt.getLocalSaveableStateRegistry().provides(saveableStateRegistryWrapper), LocalSavedStateRegistryOwnerKt.getLocalSavedStateRegistryOwner().provides(saveableStateRegistryWrapper)}, function2, startRestartGroup, (i11 & 112) | ProvidedValue.$stable);
            Unit unit = Unit.f60915a;
            boolean changedInstance = startRestartGroup.changedInstance(this) | startRestartGroup.changedInstance(obj) | startRestartGroup.changedInstance(saveableStateRegistryWrapper);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changedInstance || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function1() { // from class: androidx.compose.runtime.saveable.h
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        DisposableEffectResult SaveableStateProvider$lambda$7$lambda$6$lambda$5;
                        SaveableStateProvider$lambda$7$lambda$6$lambda$5 = SaveableStateHolderImpl.SaveableStateProvider$lambda$7$lambda$6$lambda$5(SaveableStateHolderImpl.this, obj, saveableStateRegistryWrapper, (DisposableEffectScope) obj2);
                        return SaveableStateProvider$lambda$7$lambda$6$lambda$5;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            EffectsKt.DisposableEffect(unit, (Function1) rememberedValue2, startRestartGroup, 6);
            startRestartGroup.endReusableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.saveable.i
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    Unit SaveableStateProvider$lambda$8;
                    SaveableStateProvider$lambda$8 = SaveableStateHolderImpl.SaveableStateProvider$lambda$8(SaveableStateHolderImpl.this, obj, function2, i10, (Composer) obj2, ((Integer) obj3).intValue());
                    return SaveableStateProvider$lambda$8;
                }
            });
        }
    }

    @Nullable
    public final SaveableStateRegistry getParentSaveableStateRegistry() {
        return this.parentSaveableStateRegistry;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public void removeState(@NotNull Object obj) {
        if (this.registries.remove(obj) == null) {
            this.savedStates.remove(obj);
        }
    }

    public final void setParentSaveableStateRegistry(@Nullable SaveableStateRegistry saveableStateRegistry) {
        this.parentSaveableStateRegistry = saveableStateRegistry;
    }

    public SaveableStateHolderImpl(@NotNull Map<Object, Map<String, List<Object>>> map) {
        this.savedStates = map;
        this.registries = ScatterMapKt.mutableScatterMapOf();
        this.canBeSaved = new Function1() { // from class: androidx.compose.runtime.saveable.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean canBeSaved$lambda$0;
                canBeSaved$lambda$0 = SaveableStateHolderImpl.canBeSaved$lambda$0(SaveableStateHolderImpl.this, obj);
                return Boolean.valueOf(canBeSaved$lambda$0);
            }
        };
    }

    public /* synthetic */ SaveableStateHolderImpl(Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map);
    }
}
