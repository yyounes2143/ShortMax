package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import com.ss.ttm.player.MediaPlayer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RememberSaveable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRememberSaveable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt\n+ 2 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,391:1\n28#2:392\n75#3:393\n1282#4,3:394\n1285#4,3:398\n1282#4,6:401\n1#5:397\n*S KotlinDebug\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/RememberSaveableKt\n*L\n87#1:392\n91#1:393\n93#1:394,3\n93#1:398,3\n101#1:401,6\n*E\n"})
/* loaded from: classes.dex */
public final class RememberSaveableKt {
    private static final int MaxSupportedRadix = 36;

    @NotNull
    public static final String generateCannotBeSavedErrorMessage(@NotNull Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    @NotNull
    public static final <T> Saver<MutableState<T>, MutableState<Object>> mutableStateSaver(@NotNull final Saver<T, ? extends Object> saver) {
        Intrinsics.checkNotNull(saver, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.mutableStateSaver, kotlin.Any>");
        return SaverKt.Saver(new Function2() { // from class: androidx.compose.runtime.saveable.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                MutableState mutableStateSaver$lambda$6$lambda$5;
                mutableStateSaver$lambda$6$lambda$5 = RememberSaveableKt.mutableStateSaver$lambda$6$lambda$5(Saver.this, (SaverScope) obj, (MutableState) obj2);
                return mutableStateSaver$lambda$6$lambda$5;
            }
        }, new Function1<MutableState<Object>, MutableState<T>>() { // from class: androidx.compose.runtime.saveable.RememberSaveableKt$mutableStateSaver$1$2
            @Override // kotlin.jvm.functions.Function1
            public final MutableState<T> invoke(MutableState<Object> mutableState) {
                T t10;
                if (mutableState instanceof SnapshotMutableState) {
                    SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
                    if (snapshotMutableState.getValue() != null) {
                        Saver<T, Object> saver2 = saver;
                        T value = snapshotMutableState.getValue();
                        Intrinsics.checkNotNull(value);
                        t10 = saver2.restore(value);
                    } else {
                        t10 = null;
                    }
                    SnapshotMutationPolicy<T> policy = snapshotMutableState.getPolicy();
                    Intrinsics.checkNotNull(policy, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.saveable.RememberSaveableKt.mutableStateSaver?>");
                    MutableState<T> mutableStateOf = SnapshotStateKt.mutableStateOf(t10, policy);
                    Intrinsics.checkNotNull(mutableStateOf, "null cannot be cast to non-null type androidx.compose.runtime.MutableState<T of androidx.compose.runtime.saveable.RememberSaveableKt.mutableStateSaver>");
                    return mutableStateOf;
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState mutableStateSaver$lambda$6$lambda$5(Saver saver, SaverScope saverScope, MutableState mutableState) {
        if (mutableState instanceof SnapshotMutableState) {
            SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
            Object save = saver.save(saverScope, snapshotMutableState.getValue());
            if (save != null) {
                SnapshotMutationPolicy policy = snapshotMutableState.getPolicy();
                Intrinsics.checkNotNull(policy, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<kotlin.Any?>");
                return SnapshotStateKt.mutableStateOf(save, policy);
            }
            return null;
        }
        throw new IllegalArgumentException("If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
        if (r0 == r7.getEmpty()) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.compose.runtime.saveable.e] */
    @ms.c
    @androidx.compose.runtime.Composable
    @org.jetbrains.annotations.NotNull
    /* renamed from: rememberSaveable  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> T m1492rememberSaveable(@org.jetbrains.annotations.NotNull final java.lang.Object[] r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.saveable.Saver<T, ? extends java.lang.Object> r10, @org.jetbrains.annotations.Nullable java.lang.String r11, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<? extends T> r12, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r13, int r14, int r15) {
        /*
            r0 = r15 & 2
            if (r0 == 0) goto L8
            androidx.compose.runtime.saveable.Saver r10 = androidx.compose.runtime.saveable.SaverKt.autoSaver()
        L8:
            r15 = r15 & 4
            r0 = 0
            if (r15 == 0) goto Le
            r11 = r0
        Le:
            boolean r15 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r15 == 0) goto L1d
            r15 = -1
            java.lang.String r1 = "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:79)"
            r2 = 441892779(0x1a56bfab, float:4.440899E-23)
            androidx.compose.runtime.ComposerKt.traceEventStart(r2, r14, r15, r1)
        L1d:
            r15 = 0
            long r1 = androidx.compose.runtime.ComposablesKt.getCurrentCompositeKeyHashCode(r13, r15)
            if (r11 == 0) goto L2a
            int r3 = r11.length()
            if (r3 != 0) goto L39
        L2a:
            int r11 = androidx.compose.runtime.saveable.RememberSaveableKt.MaxSupportedRadix
            int r11 = kotlin.text.CharsKt.checkRadix(r11)
            java.lang.String r11 = java.lang.Long.toString(r1, r11)
            java.lang.String r1 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r1)
        L39:
            java.lang.String r1 = "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10, r1)
            androidx.compose.runtime.ProvidableCompositionLocal r1 = androidx.compose.runtime.saveable.SaveableStateRegistryKt.getLocalSaveableStateRegistry()
            java.lang.Object r1 = r13.consume(r1)
            r6 = r1
            androidx.compose.runtime.saveable.SaveableStateRegistry r6 = (androidx.compose.runtime.saveable.SaveableStateRegistry) r6
            java.lang.Object r1 = r13.rememberedValue()
            androidx.compose.runtime.Composer$Companion r7 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r2 = r7.getEmpty()
            if (r1 != r2) goto L76
            if (r6 == 0) goto L61
            java.lang.Object r1 = r6.consumeRestored(r11)
            if (r1 == 0) goto L61
            java.lang.Object r0 = r10.restore(r1)
        L61:
            if (r0 != 0) goto L67
            java.lang.Object r0 = r12.invoke()
        L67:
            r4 = r0
            androidx.compose.runtime.saveable.SaveableHolder r8 = new androidx.compose.runtime.saveable.SaveableHolder
            r0 = r8
            r1 = r10
            r2 = r6
            r3 = r11
            r5 = r9
            r0.<init>(r1, r2, r3, r4, r5)
            r13.updateRememberedValue(r8)
            r1 = r8
        L76:
            androidx.compose.runtime.saveable.SaveableHolder r1 = (androidx.compose.runtime.saveable.SaveableHolder) r1
            java.lang.Object r0 = r1.getValueIfInputsDidntChange(r9)
            if (r0 != 0) goto L82
            java.lang.Object r0 = r12.invoke()
        L82:
            r12 = r0
            boolean r0 = r13.changedInstance(r1)
            r2 = r14 & 112(0x70, float:1.57E-43)
            r2 = r2 ^ 48
            r3 = 32
            if (r2 <= r3) goto L95
            boolean r2 = r13.changedInstance(r10)
            if (r2 != 0) goto L99
        L95:
            r14 = r14 & 48
            if (r14 != r3) goto L9b
        L99:
            r14 = 1
            goto L9c
        L9b:
            r14 = r15
        L9c:
            r14 = r14 | r0
            boolean r0 = r13.changedInstance(r6)
            r14 = r14 | r0
            boolean r0 = r13.changed(r11)
            r14 = r14 | r0
            boolean r0 = r13.changedInstance(r12)
            r14 = r14 | r0
            boolean r0 = r13.changedInstance(r9)
            r14 = r14 | r0
            java.lang.Object r0 = r13.rememberedValue()
            if (r14 != 0) goto Lbd
            java.lang.Object r14 = r7.getEmpty()
            if (r0 != r14) goto Lcb
        Lbd:
            androidx.compose.runtime.saveable.e r14 = new androidx.compose.runtime.saveable.e
            r0 = r14
            r2 = r10
            r3 = r6
            r4 = r11
            r5 = r12
            r6 = r9
            r0.<init>()
            r13.updateRememberedValue(r14)
        Lcb:
            kotlin.jvm.functions.Function0 r0 = (kotlin.jvm.functions.Function0) r0
            androidx.compose.runtime.EffectsKt.SideEffect(r0, r13, r15)
            boolean r9 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r9 == 0) goto Ld9
            androidx.compose.runtime.ComposerKt.traceEventEnd()
        Ld9:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.saveable.RememberSaveableKt.m1492rememberSaveable(java.lang.Object[], androidx.compose.runtime.saveable.Saver, java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit rememberSaveable$lambda$3$lambda$2(SaveableHolder saveableHolder, Saver saver, SaveableStateRegistry saveableStateRegistry, String str, Object obj, Object[] objArr) {
        saveableHolder.update(saver, saveableStateRegistry, str, obj, objArr);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void requireCanBeSaved(SaveableStateRegistry saveableStateRegistry, Object obj) {
        String generateCannotBeSavedErrorMessage;
        if (obj != null && !saveableStateRegistry.canBeSaved(obj)) {
            if (obj instanceof SnapshotMutableState) {
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) obj;
                if (snapshotMutableState.getPolicy() != SnapshotStateKt.neverEqualPolicy() && snapshotMutableState.getPolicy() != SnapshotStateKt.structuralEqualityPolicy() && snapshotMutableState.getPolicy() != SnapshotStateKt.referentialEqualityPolicy()) {
                    generateCannotBeSavedErrorMessage = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
                } else {
                    generateCannotBeSavedErrorMessage = "MutableState containing " + snapshotMutableState.getValue() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
                }
            } else {
                generateCannotBeSavedErrorMessage = generateCannotBeSavedErrorMessage(obj);
            }
            throw new IllegalArgumentException(generateCannotBeSavedErrorMessage);
        }
    }

    @Composable
    @NotNull
    public static final <T> T rememberSaveable(@NotNull Object[] objArr, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1564532345, i10, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:135)");
        }
        T t10 = (T) m1492rememberSaveable(Arrays.copyOf(objArr, objArr.length), SaverKt.autoSaver(), (String) null, function0, composer, ((i10 << 6) & 7168) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t10;
    }

    @Composable
    @NotNull
    /* renamed from: rememberSaveable  reason: collision with other method in class */
    public static final <T> T m1493rememberSaveable(@NotNull Object[] objArr, @NotNull Saver<T, ? extends Object> saver, @NotNull Function0<? extends T> function0, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(674689872, i10, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:180)");
        }
        T t10 = (T) m1492rememberSaveable(Arrays.copyOf(objArr, objArr.length), saver, (String) null, function0, composer, (i10 & 112) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500 | ((i10 << 3) & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return t10;
    }

    @Composable
    @NotNull
    public static final <T> MutableState<T> rememberSaveable(@NotNull Object[] objArr, @NotNull Saver<T, ? extends Object> saver, @NotNull Function0<? extends MutableState<T>> function0, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-746165481, i10, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:208)");
        }
        MutableState<T> mutableState = (MutableState) m1492rememberSaveable(Arrays.copyOf(objArr, objArr.length), (Saver<Object, ? extends Object>) mutableStateSaver(saver), (String) null, (Function0<? extends Object>) function0, composer, ((i10 << 3) & 7168) | MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    @ms.c
    @Composable
    @NotNull
    public static final <T> MutableState<T> rememberSaveable(@NotNull Object[] objArr, @NotNull Saver<T, ? extends Object> saver, @Nullable String str, @NotNull Function0<? extends MutableState<T>> function0, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 4) != 0) {
            str = null;
        }
        String str2 = str;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-202053668, i10, -1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:248)");
        }
        MutableState<T> mutableState = (MutableState) m1492rememberSaveable(Arrays.copyOf(objArr, objArr.length), (Saver<Object, ? extends Object>) mutableStateSaver(saver), str2, (Function0<? extends Object>) function0, composer, i10 & 8064, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }
}
