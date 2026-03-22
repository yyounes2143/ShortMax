package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.TestOnly;
/* compiled from: Composer.kt */
@Metadata
/* loaded from: classes.dex */
public interface Composer {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Composer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final Object Empty = new Object() { // from class: androidx.compose.runtime.Composer$Companion$Empty$1
            public String toString() {
                return "Empty";
            }
        };

        private Companion() {
        }

        @NotNull
        public final Object getEmpty() {
            return Empty;
        }

        @ExperimentalComposeRuntimeApi
        public final void setDiagnosticStackTraceEnabled(boolean z10) {
            ComposerKt.setComposeStackTraceEnabled(z10);
        }

        @InternalComposeTracingApi
        public final void setTracer(@Nullable CompositionTracer compositionTracer) {
            ComposerKt.access$setCompositionTracer$p(compositionTracer);
        }
    }

    @ComposeCompilerApi
    <V, T> void apply(V v10, @NotNull Function2<? super T, ? super V, Unit> function2);

    @InternalComposeApi
    @NotNull
    CompositionContext buildContext();

    @ComposeCompilerApi
    boolean changed(@Nullable Object obj);

    @ComposeCompilerApi
    default boolean changed(boolean z10) {
        return changed(z10);
    }

    @ComposeCompilerApi
    default boolean changedInstance(@Nullable Object obj) {
        return changed(obj);
    }

    void collectParameterInformation();

    @InternalComposeApi
    <T> T consume(@NotNull CompositionLocal<T> compositionLocal);

    @ComposeCompilerApi
    <T> void createNode(@NotNull Function0<? extends T> function0);

    @ComposeCompilerApi
    void deactivateToEndGroup(boolean z10);

    @ComposeCompilerApi
    void disableReusing();

    @TestOnly
    void disableSourceInformation();

    @ComposeCompilerApi
    void enableReusing();

    @ComposeCompilerApi
    void endDefaults();

    @ComposeCompilerApi
    void endMovableGroup();

    @ComposeCompilerApi
    void endNode();

    @InternalComposeApi
    void endProvider();

    @InternalComposeApi
    void endProviders();

    @ComposeCompilerApi
    void endReplaceGroup();

    @ComposeCompilerApi
    void endReplaceableGroup();

    @ComposeCompilerApi
    @Nullable
    ScopeUpdateScope endRestartGroup();

    @ComposeCompilerApi
    void endReusableGroup();

    @ComposeCompilerApi
    void endToMarker(int i10);

    @NotNull
    Applier<?> getApplier();

    @TestOnly
    @NotNull
    CoroutineContext getApplyCoroutineContext();

    long getCompositeKeyHashCode();

    @TestOnly
    @NotNull
    ControlledComposition getComposition();

    @NotNull
    CompositionData getCompositionData();

    default int getCompoundKeyHash() {
        return Long.hashCode(getCompositeKeyHashCode());
    }

    @NotNull
    CompositionLocalMap getCurrentCompositionLocalMap();

    int getCurrentMarker();

    boolean getDefaultsInvalid();

    boolean getInserting();

    @Nullable
    RecomposeScope getRecomposeScope();

    @Nullable
    Object getRecomposeScopeIdentity();

    boolean getSkipping();

    @InternalComposeApi
    void insertMovableContent(@NotNull MovableContent<?> movableContent, @Nullable Object obj);

    @InternalComposeApi
    void insertMovableContentReferences(@NotNull List<Pair<MovableContentStateReference, MovableContentStateReference>> list);

    @ComposeCompilerApi
    @NotNull
    Object joinKey(@Nullable Object obj, @Nullable Object obj2);

    @InternalComposeApi
    void recordSideEffect(@NotNull Function0<Unit> function0);

    @InternalComposeApi
    void recordUsed(@NotNull RecomposeScope recomposeScope);

    @ComposeCompilerApi
    @Nullable
    Object rememberedValue();

    @InternalComposeApi
    boolean shouldExecute(boolean z10, int i10);

    @ComposeCompilerApi
    void skipCurrentGroup();

    @ComposeCompilerApi
    void skipToGroupEnd();

    void sourceInformation(@NotNull String str);

    void sourceInformationMarkerEnd();

    void sourceInformationMarkerStart(int i10, @NotNull String str);

    @ComposeCompilerApi
    void startDefaults();

    @ComposeCompilerApi
    void startMovableGroup(int i10, @Nullable Object obj);

    @ComposeCompilerApi
    void startNode();

    @InternalComposeApi
    void startProvider(@NotNull ProvidedValue<?> providedValue);

    @InternalComposeApi
    void startProviders(@NotNull ProvidedValue<?>[] providedValueArr);

    @ComposeCompilerApi
    void startReplaceGroup(int i10);

    @ComposeCompilerApi
    void startReplaceableGroup(int i10);

    @ComposeCompilerApi
    @NotNull
    Composer startRestartGroup(int i10);

    @ComposeCompilerApi
    void startReusableGroup(int i10, @Nullable Object obj);

    @ComposeCompilerApi
    void startReusableNode();

    @ComposeCompilerApi
    void updateRememberedValue(@Nullable Object obj);

    @ComposeCompilerApi
    void useNode();

    @ComposeCompilerApi
    default boolean changed(char c10) {
        return changed(c10);
    }

    @ComposeCompilerApi
    default boolean changed(byte b10) {
        return changed(b10);
    }

    @ComposeCompilerApi
    default boolean changed(short s10) {
        return changed(s10);
    }

    @ComposeCompilerApi
    default boolean changed(int i10) {
        return changed(i10);
    }

    @ComposeCompilerApi
    default boolean changed(float f10) {
        return changed(f10);
    }

    @ComposeCompilerApi
    default boolean changed(long j10) {
        return changed(j10);
    }

    @ComposeCompilerApi
    default boolean changed(double d10) {
        return changed(d10);
    }

    @ComposeCompilerApi
    static /* synthetic */ void getApplier$annotations() {
    }

    @InternalComposeApi
    static /* synthetic */ void getApplyCoroutineContext$annotations() {
    }

    @InternalComposeApi
    static /* synthetic */ void getCompositeKeyHashCode$annotations() {
    }

    @ms.c
    @InternalComposeApi
    static /* synthetic */ void getCompoundKeyHash$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getCurrentMarker$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getDefaultsInvalid$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getInserting$annotations() {
    }

    @InternalComposeApi
    static /* synthetic */ void getRecomposeScope$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getRecomposeScopeIdentity$annotations() {
    }

    @ComposeCompilerApi
    static /* synthetic */ void getSkipping$annotations() {
    }
}
