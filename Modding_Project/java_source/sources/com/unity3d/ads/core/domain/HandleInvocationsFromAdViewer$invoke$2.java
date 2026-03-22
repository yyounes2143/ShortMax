package com.unity3d.ads.core.domain;

import com.ss.ttm.player.MediaPlayer;
import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.adplayer.Invocation;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: HandleInvocationsFromAdViewer.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$2", f = "HandleInvocationsFromAdViewer.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class HandleInvocationsFromAdViewer$invoke$2 extends SuspendLambda implements Function2<Invocation, c<? super Unit>, Object> {
    final /* synthetic */ Map<String, Function0<ExposedFunction>> $definition;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HandleInvocationsFromAdViewer.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$2$1", f = "HandleInvocationsFromAdViewer.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super Object>, Object> {
        final /* synthetic */ ExposedFunction $exposedFunction;
        final /* synthetic */ Invocation $it;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ExposedFunction exposedFunction, Invocation invocation, c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.$exposedFunction = exposedFunction;
            this.$it = invocation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@NotNull c<?> cVar) {
            return new AnonymousClass1(this.$exposedFunction, this.$it, cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(c<? super Object> cVar) {
            return invoke2((c<Object>) cVar);
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
                ExposedFunction exposedFunction = this.$exposedFunction;
                Object[] parameters = this.$it.getParameters();
                this.label = 1;
                obj = exposedFunction.invoke(parameters, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@Nullable c<Object> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public HandleInvocationsFromAdViewer$invoke$2(Map<String, ? extends Function0<? extends ExposedFunction>> map, c<? super HandleInvocationsFromAdViewer$invoke$2> cVar) {
        super(2, cVar);
        this.$definition = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        HandleInvocationsFromAdViewer$invoke$2 handleInvocationsFromAdViewer$invoke$2 = new HandleInvocationsFromAdViewer$invoke$2(this.$definition, cVar);
        handleInvocationsFromAdViewer$invoke$2.L$0 = obj;
        return handleInvocationsFromAdViewer$invoke$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull Invocation invocation, @Nullable c<? super Unit> cVar) {
        return ((HandleInvocationsFromAdViewer$invoke$2) create(invocation, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ExposedFunction invoke;
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
            Invocation invocation = (Invocation) this.L$0;
            Function0<ExposedFunction> function0 = this.$definition.get(invocation.getLocation());
            if (function0 != null && (invoke = function0.invoke()) != null) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(invoke, invocation, null);
                this.label = 1;
                if (invocation.handle(anonymousClass1, this) == f10) {
                    return f10;
                }
            } else {
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }
}
