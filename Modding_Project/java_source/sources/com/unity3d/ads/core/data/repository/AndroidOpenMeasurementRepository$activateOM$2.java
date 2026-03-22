package com.unity3d.ads.core.data.repository;

import android.content.Context;
import com.unity3d.ads.core.data.manager.OmidManager;
import com.unity3d.ads.core.data.model.OMResult;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidOpenMeasurementRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidOpenMeasurementRepository$activateOM$2", f = "AndroidOpenMeasurementRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidOpenMeasurementRepository$activateOM$2 extends SuspendLambda implements Function2<g0, c<? super OMResult>, Object> {
    final /* synthetic */ Context $context;
    int label;
    final /* synthetic */ AndroidOpenMeasurementRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidOpenMeasurementRepository$activateOM$2(AndroidOpenMeasurementRepository androidOpenMeasurementRepository, Context context, c<? super AndroidOpenMeasurementRepository$activateOM$2> cVar) {
        super(2, cVar);
        this.this$0 = androidOpenMeasurementRepository;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidOpenMeasurementRepository$activateOM$2(this.this$0, this.$context, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super OMResult> cVar) {
        return ((AndroidOpenMeasurementRepository$activateOM$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        OmidManager omidManager;
        OmidManager omidManager2;
        Object failure;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            if (!this.this$0.isOMActive()) {
                try {
                    omidManager = this.this$0.omidManager;
                    omidManager.activate(this.$context);
                    AndroidOpenMeasurementRepository androidOpenMeasurementRepository = this.this$0;
                    omidManager2 = androidOpenMeasurementRepository.omidManager;
                    androidOpenMeasurementRepository.setOMActive(omidManager2.isActive());
                    if (this.this$0.isOMActive()) {
                        failure = OMResult.Success.INSTANCE;
                    } else {
                        failure = new OMResult.Failure("om_activate_failure_time", null, 2, null);
                    }
                    return failure;
                } catch (Throwable th2) {
                    return new OMResult.Failure("uncaught_exception", ExceptionExtensionsKt.getShortenedStackTrace$default(th2, 0, 1, null));
                }
            }
            return new OMResult.Failure("om_already_active", null, 2, null);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
