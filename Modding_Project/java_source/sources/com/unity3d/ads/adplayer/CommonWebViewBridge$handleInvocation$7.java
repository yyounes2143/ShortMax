package com.unity3d.ads.adplayer;

import gt.g0;
import gt.k0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import rs.c;
/* compiled from: CommonWebViewBridge.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7", f = "CommonWebViewBridge.kt", l = {127, 129, 130, 131, 132, 139}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class CommonWebViewBridge$handleInvocation$7 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ String $callback;
    final /* synthetic */ String $location;
    final /* synthetic */ JSONArray $parameters;
    Object L$0;
    int label;
    final /* synthetic */ CommonWebViewBridge this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonWebViewBridge.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7$1", f = "CommonWebViewBridge.kt", l = {129}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ Invocation $invocation;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Invocation invocation, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$invocation = invocation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$invocation, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
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
                k0<Unit> isHandled = this.$invocation.isHandled();
                this.label = 1;
                if (isHandled.await(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonWebViewBridge$handleInvocation$7(String str, JSONArray jSONArray, CommonWebViewBridge commonWebViewBridge, String str2, c<? super CommonWebViewBridge$handleInvocation$7> cVar) {
        super(2, cVar);
        this.$location = str;
        this.$parameters = jSONArray;
        this.this$0 = commonWebViewBridge;
        this.$callback = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new CommonWebViewBridge$handleInvocation$7(this.$location, this.$parameters, this.this$0, this.$callback, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((CommonWebViewBridge$handleInvocation$7) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0079 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:10:0x001f, B:26:0x0075, B:28:0x0079, B:31:0x0087, B:13:0x0027, B:23:0x0069, B:20:0x0056), top: B:46:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0087 A[Catch: Exception -> 0x001c, TRY_LEAVE, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:10:0x001f, B:26:0x0075, B:28:0x0079, B:31:0x0087, B:13:0x0027, B:23:0x0069, B:20:0x0056), top: B:46:0x0007 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
