package com.startshorts.androidplayer.ui.activity;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1", f = "MainActivity.kt", l = {470, 480, TTVideoEngineInterface.PLAYER_OPTION_USE_FALLBACK_API, 515}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MainActivity$handleJumpPage$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44886h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f44887i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainActivity.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f44888h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ MainActivity f44889i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MainActivity mainActivity, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f44889i = mainActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f44889i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f44888h == 0) {
                f.b(obj);
                mi.d o10 = UpdateManager.f42992a.o(this.f44889i);
                if (o10 != null) {
                    o10.show();
                    return Unit.f60915a;
                }
                return null;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$handleJumpPage$1(MainActivity mainActivity, c<? super MainActivity$handleJumpPage$1> cVar) {
        super(2, cVar);
        this.f44887i = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$handleJumpPage$1(this.f44887i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MainActivity$handleJumpPage$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0165 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
