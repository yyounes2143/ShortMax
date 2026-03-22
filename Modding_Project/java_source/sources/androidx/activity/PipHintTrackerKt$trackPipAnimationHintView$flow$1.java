package androidx.activity;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PipHintTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1", f = "PipHintTracker.kt", l = {85}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class PipHintTrackerKt$trackPipAnimationHintView$flow$1 extends SuspendLambda implements Function2<jt.h<? super Rect>, rs.c<? super Unit>, Object> {
    final /* synthetic */ View $view;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipHintTrackerKt$trackPipAnimationHintView$flow$1(View view, rs.c<? super PipHintTrackerKt$trackPipAnimationHintView$flow$1> cVar) {
        super(2, cVar);
        this.$view = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(jt.h hVar, View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        Rect trackPipAnimationHintView$positionInWindow;
        if (i10 != i14 || i12 != i16 || i11 != i15 || i13 != i17) {
            trackPipAnimationHintView$positionInWindow = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(view);
            hVar.h(trackPipAnimationHintView$positionInWindow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$1(jt.h hVar, View view) {
        Rect trackPipAnimationHintView$positionInWindow;
        trackPipAnimationHintView$positionInWindow = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(view);
        hVar.h(trackPipAnimationHintView$positionInWindow);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        PipHintTrackerKt$trackPipAnimationHintView$flow$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1 = new PipHintTrackerKt$trackPipAnimationHintView$flow$1(this.$view, cVar);
        pipHintTrackerKt$trackPipAnimationHintView$flow$1.L$0 = obj;
        return pipHintTrackerKt$trackPipAnimationHintView$flow$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1, android.view.View$OnAttachStateChangeListener] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Rect trackPipAnimationHintView$positionInWindow;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            final jt.h hVar = (jt.h) this.L$0;
            final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: androidx.activity.l
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.invokeSuspend$lambda$0(jt.h.this, view, i11, i12, i13, i14, i15, i16, i17, i18);
                }
            };
            final View view = this.$view;
            final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: androidx.activity.m
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.invokeSuspend$lambda$1(jt.h.this, view);
                }
            };
            final View view2 = this.$view;
            final ?? r32 = new View.OnAttachStateChangeListener() { // from class: androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View view3) {
                    Rect trackPipAnimationHintView$positionInWindow2;
                    jt.h<Rect> hVar2 = hVar;
                    trackPipAnimationHintView$positionInWindow2 = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(view2);
                    hVar2.h(trackPipAnimationHintView$positionInWindow2);
                    view2.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                    view2.addOnLayoutChangeListener(onLayoutChangeListener);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View view3) {
                    view3.getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
                    view3.removeOnLayoutChangeListener(onLayoutChangeListener);
                }
            };
            if (Api19Impl.INSTANCE.isAttachedToWindow(this.$view)) {
                trackPipAnimationHintView$positionInWindow = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(this.$view);
                hVar.h(trackPipAnimationHintView$positionInWindow);
                this.$view.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                this.$view.addOnLayoutChangeListener(onLayoutChangeListener);
            }
            this.$view.addOnAttachStateChangeListener(r32);
            final View view3 = this.$view;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    view3.getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
                    view3.removeOnLayoutChangeListener(onLayoutChangeListener);
                    view3.removeOnAttachStateChangeListener(r32);
                }
            };
            this.label = 1;
            if (ProduceKt.a(hVar, function0, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull jt.h<? super Rect> hVar, @Nullable rs.c<? super Unit> cVar) {
        return ((PipHintTrackerKt$trackPipAnimationHintView$flow$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
