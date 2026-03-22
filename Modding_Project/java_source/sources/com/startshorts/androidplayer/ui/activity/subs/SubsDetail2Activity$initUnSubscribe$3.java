package com.startshorts.androidplayer.ui.activity.subs;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.RepeatOnLifecycleKt;
import ci.c0;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsDetail2Activity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$initUnSubscribe$3", f = "SubsDetail2Activity.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsDetail2Activity$initUnSubscribe$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45518h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsDetail2Activity f45519i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$initUnSubscribe$3$1", f = "SubsDetail2Activity.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$initUnSubscribe$3$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45520h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsDetail2Activity f45521i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SubsDetail2Activity.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$initUnSubscribe$3$1$1", f = "SubsDetail2Activity.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$initUnSubscribe$3$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C06321 extends SuspendLambda implements Function2<Boolean, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f45522h;

            /* renamed from: i  reason: collision with root package name */
            /* synthetic */ boolean f45523i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ SubsDetail2Activity f45524j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06321(SubsDetail2Activity subsDetail2Activity, c<? super C06321> cVar) {
                super(2, cVar);
                this.f45524j = subsDetail2Activity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                C06321 c06321 = new C06321(this.f45524j, cVar);
                c06321.f45523i = ((Boolean) obj).booleanValue();
                return c06321;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, c<? super Unit> cVar) {
                return invoke(bool.booleanValue(), cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                a.f();
                if (this.f45522h == 0) {
                    f.b(obj);
                    if (this.f45523i) {
                        b0.l(SubsDetail2Activity.l0(this.f45524j).I);
                    } else {
                        b0.d(SubsDetail2Activity.l0(this.f45524j).I);
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            public final Object invoke(boolean z10, c<? super Unit> cVar) {
                return ((C06321) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubsDetail2Activity subsDetail2Activity, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f45521i = subsDetail2Activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f45521i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = a.f();
            int i10 = this.f45520h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.d<Boolean> a10 = c0.f3500a.a();
                C06321 c06321 = new C06321(this.f45521i, null);
                this.f45520h = 1;
                if (kotlinx.coroutines.flow.c.m(a10, c06321, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsDetail2Activity$initUnSubscribe$3(SubsDetail2Activity subsDetail2Activity, c<? super SubsDetail2Activity$initUnSubscribe$3> cVar) {
        super(2, cVar);
        this.f45519i = subsDetail2Activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsDetail2Activity$initUnSubscribe$3(this.f45519i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsDetail2Activity$initUnSubscribe$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f45518h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SubsDetail2Activity subsDetail2Activity = this.f45519i;
            Lifecycle.State state = Lifecycle.State.CREATED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(subsDetail2Activity, null);
            this.f45518h = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(subsDetail2Activity, state, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
