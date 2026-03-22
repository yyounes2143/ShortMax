package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.extensions.AdFormatExtensions;
import com.unity3d.services.ads.gmascar.GMAScarAdapterBridge;
import com.unity3d.services.ads.gmascar.handlers.BiddingSignalsHandler;
import com.unity3d.services.ads.gmascar.listeners.IBiddingSignalsListener;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gt.g0;
import gt.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidScarManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$getSignals$2", f = "AndroidScarManager.kt", l = {130}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidScarManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager$getSignals$2\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n314#2,9:130\n323#2,2:143\n1549#3:139\n1620#3,3:140\n*S KotlinDebug\n*F\n+ 1 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager$getSignals$2\n*L\n48#1:130,9\n48#1:143,2\n50#1:139\n50#1:140,3\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidScarManager$getSignals$2 extends SuspendLambda implements Function2<g0, c<? super BiddingSignals>, Object> {
    final /* synthetic */ List<InitializationResponseOuterClass.AdFormat> $adFormat;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ AndroidScarManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidScarManager$getSignals$2(List<? extends InitializationResponseOuterClass.AdFormat> list, AndroidScarManager androidScarManager, c<? super AndroidScarManager$getSignals$2> cVar) {
        super(2, cVar);
        this.$adFormat = list;
        this.this$0 = androidScarManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidScarManager$getSignals$2(this.$adFormat, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super BiddingSignals> cVar) {
        return ((AndroidScarManager$getSignals$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ArrayList arrayList;
        GMAScarAdapterBridge gMAScarAdapterBridge;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                AndroidScarManager androidScarManager = (AndroidScarManager) this.L$1;
                List list = (List) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            List<InitializationResponseOuterClass.AdFormat> list2 = this.$adFormat;
            AndroidScarManager androidScarManager2 = this.this$0;
            this.L$0 = list2;
            this.L$1 = androidScarManager2;
            this.label = 1;
            final e eVar = new e(kotlin.coroutines.intrinsics.a.c(this), 1);
            eVar.H();
            if (list2 != null) {
                List<InitializationResponseOuterClass.AdFormat> list3 = list2;
                arrayList = new ArrayList(CollectionsKt.z(list3, 10));
                for (InitializationResponseOuterClass.AdFormat adFormat : list3) {
                    arrayList.add(AdFormatExtensions.toUnityAdFormat(adFormat));
                }
            } else {
                arrayList = null;
            }
            gMAScarAdapterBridge = androidScarManager2.gmaBridge;
            gMAScarAdapterBridge.getSCARBiddingSignals(arrayList, new BiddingSignalsHandler(true, new IBiddingSignalsListener() { // from class: com.unity3d.ads.core.data.manager.AndroidScarManager$getSignals$2$1$1
                @Override // com.unity3d.services.ads.gmascar.listeners.IBiddingSignalsListener
                public void onSignalsFailure(@Nullable String str) {
                    i<BiddingSignals> iVar = eVar;
                    Result.a aVar = Result.f60901b;
                    iVar.resumeWith(Result.d(f.a(new Exception(str))));
                }

                @Override // com.unity3d.services.ads.gmascar.listeners.IBiddingSignalsListener
                public void onSignalsReady(@Nullable BiddingSignals biddingSignals) {
                    eVar.resumeWith(Result.d(biddingSignals));
                }
            }));
            obj = eVar.B();
            if (obj == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(this);
            }
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
