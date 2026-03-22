package com.startshorts.androidplayer.manager.auth;

import com.hades.aar.auth.base.AuthType;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: FirebaseAuthManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1", f = "FirebaseAuthManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, 221}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nFirebaseAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,378:1\n125#2,13:379\n*S KotlinDebug\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1\n*L\n220#1:379,13\n*E\n"})
/* loaded from: classes6.dex */
final class FirebaseAuthManager$bind$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42111h;

    /* renamed from: i  reason: collision with root package name */
    int f42112i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42113j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f42114k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ FirebaseAuthManager f42115l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ AuthType f42116m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$1", f = "FirebaseAuthManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42117h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ String f42118i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f42119j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.f42118i = str;
            this.f42119j = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(c<?> cVar) {
            return new AnonymousClass1(this.f42118i, this.f42119j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f42117h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                k.a j10 = k.f41787a.j();
                String str = this.f42118i;
                String str2 = this.f42119j;
                this.f42117h = 1;
                obj = k.a.C0617a.c(j10, 0, str, str2, this, 1, null);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(c<? super ServerResult<Object>> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseAuthManager$bind$1(String str, String str2, FirebaseAuthManager firebaseAuthManager, AuthType authType, c<? super FirebaseAuthManager$bind$1> cVar) {
        super(2, cVar);
        this.f42113j = str;
        this.f42114k = str2;
        this.f42115l = firebaseAuthManager;
        this.f42116m = authType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseAuthManager$bind$1(this.f42113j, this.f42114k, this.f42115l, this.f42116m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseAuthManager$bind$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f42112i
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L30
            if (r1 == r4) goto L25
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            kotlin.f.b(r9)
            goto Lb8
        L17:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1f:
            java.lang.Object r1 = r8.f42111h
            kotlin.f.b(r9)
            goto L6d
        L25:
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.n()
        L2e:
            r1 = r9
            goto L4f
        L30:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r9.<init>()
            r1 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r9 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r9, r1, r4, r5)
            com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$1 r1 = new com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$1
            java.lang.String r6 = r8.f42113j
            java.lang.String r7 = r8.f42114k
            r1.<init>(r6, r7, r5)
            r8.f42112i = r4
            java.lang.Object r9 = r9.o(r1, r8)
            if (r9 != r0) goto L2e
            return r0
        L4f:
            com.startshorts.androidplayer.manager.auth.FirebaseAuthManager r9 = r8.f42115l
            com.hades.aar.auth.base.AuthType r4 = r8.f42116m
            boolean r6 = kotlin.Result.j(r1)
            if (r6 == 0) goto L6d
            gt.j1 r6 = gt.q0.c()
            com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$2$1 r7 = new com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$2$1
            r7.<init>(r9, r4, r5)
            r8.f42111h = r1
            r8.f42112i = r3
            java.lang.Object r9 = gt.e.g(r6, r7, r8)
            if (r9 != r0) goto L6d
            return r0
        L6d:
            com.startshorts.androidplayer.manager.auth.FirebaseAuthManager r9 = r8.f42115l
            com.hades.aar.auth.base.AuthType r3 = r8.f42116m
            java.lang.Throwable r4 = kotlin.Result.g(r1)
            if (r4 == 0) goto Lb8
            boolean r6 = r4 instanceof com.startshorts.androidplayer.bean.exception.ResponseException
            if (r6 == 0) goto L7f
            r6 = r4
            com.startshorts.androidplayer.bean.exception.ResponseException r6 = (com.startshorts.androidplayer.bean.exception.ResponseException) r6
            goto L80
        L7f:
            r6 = r5
        L80:
            if (r6 != 0) goto La4
            com.startshorts.androidplayer.log.Logger r9 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "onResponseFailure exception -> "
            r0.append(r1)
            java.lang.String r1 = r4.getMessage()
            r0.append(r1)
            java.lang.String r1 = ", exception must not be null"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "ApiBuilder"
            r9.e(r1, r0)
            goto Lb8
        La4:
            gt.j1 r4 = gt.q0.c()
            com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$3$1 r7 = new com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$3$1
            r7.<init>(r9, r3, r6, r5)
            r8.f42111h = r1
            r8.f42112i = r2
            java.lang.Object r9 = gt.e.g(r4, r7, r8)
            if (r9 != r0) goto Lb8
            return r0
        Lb8:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
