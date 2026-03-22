package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidSessionRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$nativeConfiguration$1", f = "AndroidSessionRepository.kt", l = {175}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidSessionRepository$nativeConfiguration$1 extends SuspendLambda implements Function2<g0, c<? super NativeConfigurationOuterClass.NativeConfiguration>, Object> {
    int label;
    final /* synthetic */ AndroidSessionRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidSessionRepository$nativeConfiguration$1(AndroidSessionRepository androidSessionRepository, c<? super AndroidSessionRepository$nativeConfiguration$1> cVar) {
        super(2, cVar);
        this.this$0 = androidSessionRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidSessionRepository$nativeConfiguration$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super NativeConfigurationOuterClass.NativeConfiguration> cVar) {
        return ((AndroidSessionRepository$nativeConfiguration$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        b bVar;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            bVar = this.this$0.persistedNativeConfiguration;
            this.label = 1;
            obj = kotlinx.coroutines.flow.c.y(bVar, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
