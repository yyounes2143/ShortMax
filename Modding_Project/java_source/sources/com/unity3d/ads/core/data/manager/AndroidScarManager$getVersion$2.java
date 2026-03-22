package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.scar.CommonScarEventReceiver;
import com.unity3d.services.ads.gmascar.GMAScarAdapterBridge;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidScarManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$getVersion$2", f = "AndroidScarManager.kt", l = {42}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidScarManager$getVersion$2 extends SuspendLambda implements Function2<g0, c<? super String>, Object> {
    int label;
    final /* synthetic */ AndroidScarManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidScarManager.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$getVersion$2$1", f = "AndroidScarManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.data.manager.AndroidScarManager$getVersion$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<kt.c<? super String>, c<? super Unit>, Object> {
        int label;
        final /* synthetic */ AndroidScarManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AndroidScarManager androidScarManager, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = androidScarManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.this$0, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            GMAScarAdapterBridge gMAScarAdapterBridge;
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                gMAScarAdapterBridge = this.this$0.gmaBridge;
                gMAScarAdapterBridge.getVersion();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull kt.c<? super String> cVar, @Nullable c<? super Unit> cVar2) {
            return ((AnonymousClass1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidScarManager$getVersion$2(AndroidScarManager androidScarManager, c<? super AndroidScarManager$getVersion$2> cVar) {
        super(2, cVar);
        this.this$0 = androidScarManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidScarManager$getVersion$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super String> cVar) {
        return ((AndroidScarManager$getVersion$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        CommonScarEventReceiver commonScarEventReceiver;
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
            commonScarEventReceiver = this.this$0.scarEventReceiver;
            kt.f Q = kotlinx.coroutines.flow.c.Q(commonScarEventReceiver.getVersionFlow(), new AnonymousClass1(this.this$0, null));
            this.label = 1;
            obj = kotlinx.coroutines.flow.c.y(Q, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
