package androidx.compose.ui.platform;

import com.ss.ttm.player.MediaPlayer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowRecomposer.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1", f = "WindowRecomposer.android.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_PRE_STALL_500}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ kt.i<Float> $durationScaleStateFlow;
    final /* synthetic */ MotionDurationScaleImpl $it;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1(kt.i<Float> iVar, MotionDurationScaleImpl motionDurationScaleImpl, rs.c<? super WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1> cVar) {
        super(2, cVar);
        this.$durationScaleStateFlow = iVar;
        this.$it = motionDurationScaleImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1(this.$durationScaleStateFlow, this.$it, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            kt.i<Float> iVar = this.$durationScaleStateFlow;
            final MotionDurationScaleImpl motionDurationScaleImpl = this.$it;
            kt.c<Float> cVar = new kt.c<Float>() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1.1
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Float f11, rs.c cVar2) {
                    return emit(f11.floatValue(), cVar2);
                }

                @Nullable
                public final Object emit(float f11, @NotNull rs.c<? super Unit> cVar2) {
                    MotionDurationScaleImpl.this.setScaleFactor(f11);
                    return Unit.f60915a;
                }
            };
            this.label = 1;
            if (iVar.collect(cVar, this) == f10) {
                return f10;
            }
        }
        throw new KotlinNothingValueException();
    }
}
