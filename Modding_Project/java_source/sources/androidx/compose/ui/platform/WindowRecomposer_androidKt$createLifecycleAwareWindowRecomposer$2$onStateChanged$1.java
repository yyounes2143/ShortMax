package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.lifecycle.LifecycleOwner;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowRecomposer.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1", f = "WindowRecomposer.android.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSIONS}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ LifecycleOwner $lifecycleOwner;
    final /* synthetic */ Recomposer $recomposer;
    final /* synthetic */ WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 $self;
    final /* synthetic */ Ref.ObjectRef<MotionDurationScaleImpl> $systemDurationScaleSettingConsumer;
    final /* synthetic */ View $this_createLifecycleAwareWindowRecomposer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(Ref.ObjectRef<MotionDurationScaleImpl> objectRef, Recomposer recomposer, LifecycleOwner lifecycleOwner, WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2, View view, rs.c<? super WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1> cVar) {
        super(2, cVar);
        this.$systemDurationScaleSettingConsumer = objectRef;
        this.$recomposer = recomposer;
        this.$lifecycleOwner = lifecycleOwner;
        this.$self = windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
        this.$this_createLifecycleAwareWindowRecomposer = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 = new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(this.$systemDurationScaleSettingConsumer, this.$recomposer, this.$lifecycleOwner, this.$self, this.$this_createLifecycleAwareWindowRecomposer, cVar);
        windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1.L$0 = obj;
        return windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r11.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1f
            if (r1 != r2) goto L17
            java.lang.Object r0 = r11.L$0
            kotlinx.coroutines.r r0 = (kotlinx.coroutines.r) r0
            kotlin.f.b(r12)     // Catch: java.lang.Throwable -> L14
            goto L6f
        L14:
            r12 = move-exception
            goto L86
        L17:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1f:
            kotlin.f.b(r12)
            java.lang.Object r12 = r11.L$0
            r4 = r12
            gt.g0 r4 = (gt.g0) r4
            kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.ui.platform.MotionDurationScaleImpl> r12 = r11.$systemDurationScaleSettingConsumer     // Catch: java.lang.Throwable -> L5d
            T r12 = r12.element     // Catch: java.lang.Throwable -> L5d
            androidx.compose.ui.platform.MotionDurationScaleImpl r12 = (androidx.compose.ui.platform.MotionDurationScaleImpl) r12     // Catch: java.lang.Throwable -> L5d
            if (r12 == 0) goto L60
            android.view.View r1 = r11.$this_createLifecycleAwareWindowRecomposer     // Catch: java.lang.Throwable -> L5d
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L5d
            android.content.Context r1 = r1.getApplicationContext()     // Catch: java.lang.Throwable -> L5d
            java.lang.String r5 = "context.applicationContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)     // Catch: java.lang.Throwable -> L5d
            kt.i r1 = androidx.compose.ui.platform.WindowRecomposer_androidKt.access$getAnimationScaleFlowFor(r1)     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r5 = r1.getValue()     // Catch: java.lang.Throwable -> L5d
            java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.Throwable -> L5d
            float r5 = r5.floatValue()     // Catch: java.lang.Throwable -> L5d
            r12.setScaleFactor(r5)     // Catch: java.lang.Throwable -> L5d
            androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1 r7 = new androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1     // Catch: java.lang.Throwable -> L5d
            r7.<init>(r1, r12, r3)     // Catch: java.lang.Throwable -> L5d
            r8 = 3
            r9 = 0
            r5 = 0
            r6 = 0
            kotlinx.coroutines.r r12 = gt.e.d(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L5d
            goto L61
        L5d:
            r12 = move-exception
            r0 = r3
            goto L86
        L60:
            r12 = r3
        L61:
            androidx.compose.runtime.Recomposer r1 = r11.$recomposer     // Catch: java.lang.Throwable -> L82
            r11.L$0 = r12     // Catch: java.lang.Throwable -> L82
            r11.label = r2     // Catch: java.lang.Throwable -> L82
            java.lang.Object r1 = r1.runRecomposeAndApplyChanges(r11)     // Catch: java.lang.Throwable -> L82
            if (r1 != r0) goto L6e
            return r0
        L6e:
            r0 = r12
        L6f:
            if (r0 == 0) goto L74
            kotlinx.coroutines.r.a.b(r0, r3, r2, r3)
        L74:
            androidx.lifecycle.LifecycleOwner r12 = r11.$lifecycleOwner
            androidx.lifecycle.Lifecycle r12 = r12.getLifecycle()
            androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 r0 = r11.$self
            r12.removeObserver(r0)
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        L82:
            r0 = move-exception
            r10 = r0
            r0 = r12
            r12 = r10
        L86:
            if (r0 == 0) goto L8b
            kotlinx.coroutines.r.a.b(r0, r3, r2, r3)
        L8b:
            androidx.lifecycle.LifecycleOwner r0 = r11.$lifecycleOwner
            androidx.lifecycle.Lifecycle r0 = r0.getLifecycle()
            androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 r1 = r11.$self
            r0.removeObserver(r1)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
