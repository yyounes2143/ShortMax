package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BackdropScaffold.kt */
@Metadata
@Stable
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public final class BackdropScaffoldState extends SwipeableState<BackdropValue> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final NestedScrollConnection nestedScrollConnection;
    @NotNull
    private final SnackbarHostState snackbarHostState;

    /* compiled from: BackdropScaffold.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<BackdropScaffoldState, ?> Saver(@NotNull final AnimationSpec<Float> animationSpec, @NotNull final Function1<? super BackdropValue, Boolean> confirmStateChange, @NotNull final SnackbarHostState snackbarHostState) {
            Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
            Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
            Intrinsics.checkNotNullParameter(snackbarHostState, "snackbarHostState");
            return SaverKt.Saver(new Function2<SaverScope, BackdropScaffoldState, BackdropValue>() { // from class: androidx.compose.material.BackdropScaffoldState$Companion$Saver$1
                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final BackdropValue invoke(@NotNull SaverScope Saver, @NotNull BackdropScaffoldState it) {
                    Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getCurrentValue();
                }
            }, new Function1<BackdropValue, BackdropScaffoldState>() { // from class: androidx.compose.material.BackdropScaffoldState$Companion$Saver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final BackdropScaffoldState invoke(@NotNull BackdropValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new BackdropScaffoldState(it, animationSpec, confirmStateChange, snackbarHostState);
                }
            });
        }

        private Companion() {
        }
    }

    public /* synthetic */ BackdropScaffoldState(BackdropValue backdropValue, AnimationSpec animationSpec, Function1 function1, SnackbarHostState snackbarHostState, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(backdropValue, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.getAnimationSpec() : animationSpec, (i10 & 4) != 0 ? new Function1<BackdropValue, Boolean>() { // from class: androidx.compose.material.BackdropScaffoldState.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BackdropValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
            }
        } : function1, (i10 & 8) != 0 ? new SnackbarHostState() : snackbarHostState);
    }

    @Nullable
    public final Object conceal(@NotNull c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, BackdropValue.Concealed, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final NestedScrollConnection getNestedScrollConnection$material_release() {
        return this.nestedScrollConnection;
    }

    @NotNull
    public final SnackbarHostState getSnackbarHostState() {
        return this.snackbarHostState;
    }

    public final boolean isConcealed() {
        if (getCurrentValue() == BackdropValue.Concealed) {
            return true;
        }
        return false;
    }

    public final boolean isRevealed() {
        if (getCurrentValue() == BackdropValue.Revealed) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object reveal(@NotNull c<? super Unit> cVar) {
        Object animateTo$default = SwipeableState.animateTo$default(this, BackdropValue.Revealed, null, cVar, 2, null);
        if (animateTo$default == a.f()) {
            return animateTo$default;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackdropScaffoldState(@NotNull BackdropValue initialValue, @NotNull AnimationSpec<Float> animationSpec, @NotNull Function1<? super BackdropValue, Boolean> confirmStateChange, @NotNull SnackbarHostState snackbarHostState) {
        super(initialValue, animationSpec, confirmStateChange);
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(confirmStateChange, "confirmStateChange");
        Intrinsics.checkNotNullParameter(snackbarHostState, "snackbarHostState");
        this.snackbarHostState = snackbarHostState;
        this.nestedScrollConnection = SwipeableKt.getPreUpPostDownNestedScrollConnection(this);
    }
}
