package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AdPlayer;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidHandleGatewayAdResponse.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$2", f = "AndroidHandleGatewayAdResponse.kt", l = {162}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidHandleGatewayAdResponse$invoke$2 extends SuspendLambda implements Function2<AllowedPiiOuterClass.AllowedPii, c<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<AdPlayer> $adPlayer;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$2(Ref.ObjectRef<AdPlayer> objectRef, c<? super AndroidHandleGatewayAdResponse$invoke$2> cVar) {
        super(2, cVar);
        this.$adPlayer = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidHandleGatewayAdResponse$invoke$2 androidHandleGatewayAdResponse$invoke$2 = new AndroidHandleGatewayAdResponse$invoke$2(this.$adPlayer, cVar);
        androidHandleGatewayAdResponse$invoke$2.L$0 = obj;
        return androidHandleGatewayAdResponse$invoke$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull AllowedPiiOuterClass.AllowedPii allowedPii, @Nullable c<? super Unit> cVar) {
        return ((AndroidHandleGatewayAdResponse$invoke$2) create(allowedPii, cVar)).invokeSuspend(Unit.f60915a);
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
            byte[] byteArray = ((AllowedPiiOuterClass.AllowedPii) this.L$0).toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "it.toByteArray()");
            this.label = 1;
            if (this.$adPlayer.element.onAllowedPiiChange(byteArray, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
