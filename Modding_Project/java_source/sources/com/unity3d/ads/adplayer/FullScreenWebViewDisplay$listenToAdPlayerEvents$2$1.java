package com.unity3d.ads.adplayer;

import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.lifecycle.LifecycleOwnerKt;
import com.unity3d.ads.adplayer.DisplayMessage;
import com.unity3d.services.core.domain.ISDKDispatchers;
import gt.g;
import gt.g0;
import gt.i;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FullScreenWebViewDisplay.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1", f = "FullScreenWebViewDisplay.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1 extends SuspendLambda implements Function2<c<? super DisplayMessage>, rs.c<? super Unit>, Object> {
    final /* synthetic */ i<Unit> $continuation;
    int label;
    final /* synthetic */ FullScreenWebViewDisplay this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FullScreenWebViewDisplay.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1", f = "FullScreenWebViewDisplay.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ i<Unit> $continuation;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ FullScreenWebViewDisplay this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(FullScreenWebViewDisplay fullScreenWebViewDisplay, i<? super Unit> iVar, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = fullScreenWebViewDisplay;
            this.$continuation = iVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$continuation, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            String str;
            g0 g0Var;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    g0Var = (g0) this.L$0;
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var2 = (g0) this.L$0;
                kt.d<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages();
                str = this.this$0.opportunityId;
                DisplayMessage.WebViewInstanceRequest webViewInstanceRequest = new DisplayMessage.WebViewInstanceRequest(str);
                this.L$0 = g0Var2;
                this.label = 1;
                if (displayMessages.emit(webViewInstanceRequest, this) == f10) {
                    return f10;
                }
                g0Var = g0Var2;
            }
            kotlinx.coroutines.i.g(g0Var);
            i<Unit> iVar = this.$continuation;
            Result.a aVar = Result.f60901b;
            Unit unit = Unit.f60915a;
            iVar.resumeWith(Result.d(unit));
            return unit;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1(FullScreenWebViewDisplay fullScreenWebViewDisplay, i<? super Unit> iVar, rs.c<? super FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1> cVar) {
        super(2, cVar);
        this.this$0 = fullScreenWebViewDisplay;
        this.$continuation = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1(this.this$0, this.$continuation, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ISDKDispatchers dispatchers;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            LifecycleCoroutineScope lifecycleScope = LifecycleOwnerKt.getLifecycleScope(this.this$0);
            dispatchers = this.this$0.getDispatchers();
            g.d(lifecycleScope, dispatchers.getDefault(), null, new AnonymousClass1(this.this$0, this.$continuation, null), 2, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super DisplayMessage> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
