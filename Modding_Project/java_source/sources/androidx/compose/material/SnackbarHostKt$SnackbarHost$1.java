package androidx.compose.material;

import androidx.compose.ui.platform.AccessibilityManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnackbarHost.kt */
@Metadata
@d(c = "androidx.compose.material.SnackbarHostKt$SnackbarHost$1", f = "SnackbarHost.kt", l = {164}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SnackbarHostKt$SnackbarHost$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ AccessibilityManager $accessibilityManager;
    final /* synthetic */ SnackbarData $currentSnackbarData;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$SnackbarHost$1(SnackbarData snackbarData, AccessibilityManager accessibilityManager, c<? super SnackbarHostKt$SnackbarHost$1> cVar) {
        super(2, cVar);
        this.$currentSnackbarData = snackbarData;
        this.$accessibilityManager = accessibilityManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SnackbarHostKt$SnackbarHost$1(this.$currentSnackbarData, this.$accessibilityManager, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SnackbarHostKt$SnackbarHost$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean z10;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SnackbarData snackbarData = this.$currentSnackbarData;
            if (snackbarData != null) {
                SnackbarDuration duration = snackbarData.getDuration();
                if (this.$currentSnackbarData.getActionLabel() != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                long millis = SnackbarHostKt.toMillis(duration, z10, this.$accessibilityManager);
                this.label = 1;
                if (DelayKt.b(millis, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
        this.$currentSnackbarData.dismiss();
        return Unit.f60915a;
    }
}
