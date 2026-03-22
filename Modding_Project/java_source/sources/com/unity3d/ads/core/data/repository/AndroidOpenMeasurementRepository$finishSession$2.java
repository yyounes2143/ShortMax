package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.iab.omid.library.unity3d.adsession.AdSession;
import com.unity3d.ads.core.data.model.OMResult;
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
@d(c = "com.unity3d.ads.core.data.repository.AndroidOpenMeasurementRepository$finishSession$2", f = "AndroidOpenMeasurementRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidOpenMeasurementRepository$finishSession$2 extends SuspendLambda implements Function2<g0, c<? super OMResult>, Object> {
    final /* synthetic */ ByteString $opportunityId;
    int label;
    final /* synthetic */ AndroidOpenMeasurementRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidOpenMeasurementRepository$finishSession$2(AndroidOpenMeasurementRepository androidOpenMeasurementRepository, ByteString byteString, c<? super AndroidOpenMeasurementRepository$finishSession$2> cVar) {
        super(2, cVar);
        this.this$0 = androidOpenMeasurementRepository;
        this.$opportunityId = byteString;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidOpenMeasurementRepository$finishSession$2(this.this$0, this.$opportunityId, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super OMResult> cVar) {
        return ((AndroidOpenMeasurementRepository$finishSession$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AdSession session;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            if (this.this$0.isOMActive()) {
                session = this.this$0.getSession(this.$opportunityId);
                if (session == null) {
                    return new OMResult.Failure("om_session_not_found", null, 2, null);
                }
                session.finish();
                this.this$0.sessionFinished(this.$opportunityId);
                return OMResult.Success.INSTANCE;
            }
            return new OMResult.Failure("om_not_active", null, 2, null);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
