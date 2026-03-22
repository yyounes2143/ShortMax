package com.startshorts.androidplayer.manager.push;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import gt.i;
import jk.e;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PushHelper.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPushHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushHelper.kt\ncom/startshorts/androidplayer/manager/push/PushHelper\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,25:1\n426#2,11:26\n*S KotlinDebug\n*F\n+ 1 PushHelper.kt\ncom/startshorts/androidplayer/manager/push/PushHelper\n*L\n12#1:26,11\n*E\n"})
/* loaded from: classes6.dex */
public final class PushHelper {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final PushHelper f42831a = new PushHelper();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PushHelper.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<Result<String>> f42832a;

        /* JADX WARN: Multi-variable type inference failed */
        a(i<? super Result<String>> iVar) {
            this.f42832a = iVar;
        }

        public final void a(String str) {
            e.a(this.f42832a, Result.b(Result.d(str)));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            a(str);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PushHelper.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements OnFailureListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<Result<String>> f42833a;

        /* JADX WARN: Multi-variable type inference failed */
        b(i<? super Result<String>> iVar) {
            this.f42833a = iVar;
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception e10) {
            Intrinsics.checkNotNullParameter(e10, "e");
            i<Result<String>> iVar = this.f42833a;
            Result.a aVar = Result.f60901b;
            e.a(iVar, Result.b(Result.d(f.a(new Throwable(e10)))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PushHelper.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c implements OnSuccessListener {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f42834a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f42834a = function;
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final /* synthetic */ void onSuccess(Object obj) {
            this.f42834a.invoke(obj);
        }
    }

    private PushHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.push.PushHelper$queryFCMToken$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.push.PushHelper$queryFCMToken$1 r0 = (com.startshorts.androidplayer.manager.push.PushHelper$queryFCMToken$1) r0
            int r1 = r0.f42837j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42837j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.push.PushHelper$queryFCMToken$1 r0 = new com.startshorts.androidplayer.manager.push.PushHelper$queryFCMToken$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f42835h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42837j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L8c
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L31:
            kotlin.f.b(r6)
            r0.f42837j = r3
            kotlinx.coroutines.e r6 = new kotlinx.coroutines.e
            rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
            r6.<init>(r2, r3)
            r6.H()
            com.google.firebase.messaging.FirebaseMessaging r2 = com.google.firebase.messaging.FirebaseMessaging.n()     // Catch: java.lang.Exception -> L65
            com.google.android.gms.tasks.Task r2 = r2.q()     // Catch: java.lang.Exception -> L65
            com.startshorts.androidplayer.manager.push.PushHelper$a r3 = new com.startshorts.androidplayer.manager.push.PushHelper$a     // Catch: java.lang.Exception -> L65
            r3.<init>(r6)     // Catch: java.lang.Exception -> L65
            com.startshorts.androidplayer.manager.push.PushHelper$c r4 = new com.startshorts.androidplayer.manager.push.PushHelper$c     // Catch: java.lang.Exception -> L65
            r4.<init>(r3)     // Catch: java.lang.Exception -> L65
            com.google.android.gms.tasks.Task r2 = r2.addOnSuccessListener(r4)     // Catch: java.lang.Exception -> L65
            com.startshorts.androidplayer.manager.push.PushHelper$b r3 = new com.startshorts.androidplayer.manager.push.PushHelper$b     // Catch: java.lang.Exception -> L65
            r3.<init>(r6)     // Catch: java.lang.Exception -> L65
            com.google.android.gms.tasks.Task r2 = r2.addOnFailureListener(r3)     // Catch: java.lang.Exception -> L65
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L65
            goto L7c
        L65:
            r2 = move-exception
            kotlin.Result$a r3 = kotlin.Result.f60901b
            java.lang.Throwable r3 = new java.lang.Throwable
            r3.<init>(r2)
            java.lang.Object r2 = kotlin.f.a(r3)
            java.lang.Object r2 = kotlin.Result.d(r2)
            kotlin.Result r2 = kotlin.Result.b(r2)
            jk.e.a(r6, r2)
        L7c:
            java.lang.Object r6 = r6.B()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            if (r6 != r2) goto L89
            kotlin.coroutines.jvm.internal.f.c(r0)
        L89:
            if (r6 != r1) goto L8c
            return r1
        L8c:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.push.PushHelper.a(rs.c):java.lang.Object");
    }
}
