package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.AdPlayer;
import gatewayprotocol.v1.AdResponseOuterClass;
import gt.g0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHandleGatewayAdResponse.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$5", f = "AndroidHandleGatewayAdResponse.kt", l = {219}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidHandleGatewayAdResponse$invoke$5 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<AdPlayer> $adPlayer;
    final /* synthetic */ ByteString $opportunityId;
    final /* synthetic */ AdResponseOuterClass.AdResponse $response;
    final /* synthetic */ CancellationException $t;
    int label;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$5(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, CancellationException cancellationException, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, Ref.ObjectRef<AdPlayer> objectRef, c<? super AndroidHandleGatewayAdResponse$invoke$5> cVar) {
        super(2, cVar);
        this.this$0 = androidHandleGatewayAdResponse;
        this.$t = cancellationException;
        this.$opportunityId = byteString;
        this.$response = adResponse;
        this.$adPlayer = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidHandleGatewayAdResponse$invoke$5(this.this$0, this.$t, this.$opportunityId, this.$response, this.$adPlayer, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidHandleGatewayAdResponse$invoke$5) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object cleanup;
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
            this.label = 1;
            cleanup = this.this$0.cleanup(this.$t, this.$opportunityId, this.$response, this.$adPlayer.element, this);
            if (cleanup == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
