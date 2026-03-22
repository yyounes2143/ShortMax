package androidx.compose.animation.core;

import androidx.compose.runtime.State;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimateAsState.kt */
@Metadata
@d(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3", f = "AnimateAsState.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class AnimateAsStateKt$animateValueAsState$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
    final /* synthetic */ Animatable<T, V> $animatable;
    final /* synthetic */ jt.d<T> $channel;
    final /* synthetic */ State<Function1<T, Unit>> $listener$delegate;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimateAsState.kt */
    @Metadata
    @d(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_QUERY}, m = "invokeSuspend")
    /* renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
        final /* synthetic */ Animatable<T, V> $animatable;
        final /* synthetic */ State<Function1<T, Unit>> $listener$delegate;
        final /* synthetic */ T $newTarget;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(T t10, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends Function1<? super T, Unit>> state2, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$newTarget = t10;
            this.$animatable = animatable;
            this.$animSpec$delegate = state;
            this.$listener$delegate = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$newTarget, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, cVar);
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            AnimationSpec m135animateValueAsState$lambda4;
            Function1 m134animateValueAsState$lambda3;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                if (!Intrinsics.areEqual(this.$newTarget, this.$animatable.getTargetValue())) {
                    Animatable<T, V> animatable = this.$animatable;
                    T t10 = this.$newTarget;
                    m135animateValueAsState$lambda4 = AnimateAsStateKt.m135animateValueAsState$lambda4(this.$animSpec$delegate);
                    this.label = 1;
                    if (Animatable.animateTo$default(animatable, t10, m135animateValueAsState$lambda4, null, null, this, 12, null) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
            m134animateValueAsState$lambda3 = AnimateAsStateKt.m134animateValueAsState$lambda3(this.$listener$delegate);
            if (m134animateValueAsState$lambda3 != null) {
                m134animateValueAsState$lambda3.invoke(this.$animatable.getValue());
            }
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return invoke2(g0Var, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimateAsStateKt$animateValueAsState$3(jt.d<T> dVar, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends Function1<? super T, Unit>> state2, c<? super AnimateAsStateKt$animateValueAsState$3> cVar) {
        super(2, cVar);
        this.$channel = dVar;
        this.$animatable = animatable;
        this.$animSpec$delegate = state;
        this.$listener$delegate = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AnimateAsStateKt$animateValueAsState$3 animateAsStateKt$animateValueAsState$3 = new AnimateAsStateKt$animateValueAsState$3(this.$channel, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, cVar);
        animateAsStateKt$animateValueAsState$3.L$0 = obj;
        return animateAsStateKt$animateValueAsState$3;
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AnimateAsStateKt$animateValueAsState$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003a -> B:12:0x003d). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r13.label
            r2 = 1
            if (r1 == 0) goto L20
            if (r1 != r2) goto L18
            java.lang.Object r1 = r13.L$1
            jt.f r1 = (jt.f) r1
            java.lang.Object r3 = r13.L$0
            gt.g0 r3 = (gt.g0) r3
            kotlin.f.b(r14)
            r4 = r14
            goto L3d
        L18:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L20:
            kotlin.f.b(r14)
            java.lang.Object r1 = r13.L$0
            gt.g0 r1 = (gt.g0) r1
            jt.d<T> r3 = r13.$channel
            jt.f r3 = r3.iterator()
            r12 = r3
            r3 = r1
            r1 = r12
        L30:
            r13.L$0 = r3
            r13.L$1 = r1
            r13.label = r2
            java.lang.Object r4 = r1.a(r13)
            if (r4 != r0) goto L3d
            return r0
        L3d:
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L6f
            java.lang.Object r4 = r1.next()
            jt.d<T> r5 = r13.$channel
            java.lang.Object r5 = r5.l()
            java.lang.Object r5 = kotlinx.coroutines.channels.a.f(r5)
            if (r5 != 0) goto L57
            r7 = r4
            goto L58
        L57:
            r7 = r5
        L58:
            androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1 r4 = new androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1
            androidx.compose.animation.core.Animatable<T, V> r8 = r13.$animatable
            androidx.compose.runtime.State<androidx.compose.animation.core.AnimationSpec<T>> r9 = r13.$animSpec$delegate
            androidx.compose.runtime.State<kotlin.jvm.functions.Function1<T, kotlin.Unit>> r10 = r13.$listener$delegate
            r11 = 0
            r6 = r4
            r6.<init>(r7, r8, r9, r10, r11)
            r9 = 3
            r10 = 0
            r6 = 0
            r7 = 0
            r5 = r3
            r8 = r4
            gt.e.d(r5, r6, r7, r8, r9, r10)
            goto L30
        L6f:
            kotlin.Unit r0 = kotlin.Unit.f60915a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return invoke2(g0Var, cVar);
    }
}
