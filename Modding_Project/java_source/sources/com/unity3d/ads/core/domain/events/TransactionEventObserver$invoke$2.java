package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.TransactionEventRepository;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import gt.c0;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kt.b;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransactionEventObserver.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.events.TransactionEventObserver$invoke$2", f = "TransactionEventObserver.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nTransactionEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,60:1\n214#2,5:61\n*S KotlinDebug\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2\n*L\n39#1:61,5\n*E\n"})
/* loaded from: classes7.dex */
public final class TransactionEventObserver$invoke$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ TransactionEventObserver this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransactionEventObserver.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.events.TransactionEventObserver$invoke$2$2", f = "TransactionEventObserver.kt", l = {44, 46, 55}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nTransactionEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n484#2:61\n1#3:62\n*S KotlinDebug\n*F\n+ 1 TransactionEventObserver.kt\ncom/unity3d/ads/core/domain/events/TransactionEventObserver$invoke$2$2\n*L\n41#1:61\n41#1:62\n*E\n"})
    /* renamed from: com.unity3d.ads.core.domain.events.TransactionEventObserver$invoke$2$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<TransactionEventRequestOuterClass.TransactionEventRequest, c<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ TransactionEventObserver this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(TransactionEventObserver transactionEventObserver, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.this$0 = transactionEventObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, cVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass2) create(transactionEventRequest, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r12.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2a
                if (r1 == r4) goto L26
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                kotlin.f.b(r13)
                goto Lac
            L16:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1e:
                java.lang.Object r1 = r12.L$0
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r1 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r1
                kotlin.f.b(r13)
                goto L7d
            L26:
                kotlin.f.b(r13)
                goto L58
            L2a:
                kotlin.f.b(r13)
                java.lang.Object r13 = r12.L$0
                gatewayprotocol.v1.TransactionEventRequestOuterClass$TransactionEventRequest r13 = (gatewayprotocol.v1.TransactionEventRequestOuterClass.TransactionEventRequest) r13
                gatewayprotocol.v1.UniversalRequestKt r1 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r1 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.Companion
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r5 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()
                java.lang.String r6 = "newBuilder()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r1 = r1._create(r5)
                r1.setTransactionEventRequest(r13)
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r13 = r1._build()
                com.unity3d.ads.core.domain.events.TransactionEventObserver r1 = r12.this$0
                com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r1 = com.unity3d.ads.core.domain.events.TransactionEventObserver.access$getGetUniversalRequestForPayLoad$p(r1)
                r12.label = r4
                java.lang.Object r13 = r1.invoke(r13, r12)
                if (r13 != r0) goto L58
                return r0
            L58:
                r1 = r13
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r1 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r1
                com.unity3d.ads.core.domain.events.TransactionEventObserver r13 = r12.this$0
                com.unity3d.ads.gatewayclient.GatewayClient r4 = com.unity3d.ads.core.domain.events.TransactionEventObserver.access$getGatewayClient$p(r13)
                com.unity3d.ads.core.domain.events.TransactionEventObserver r13 = r12.this$0
                com.unity3d.ads.core.domain.GetRequestPolicy r13 = com.unity3d.ads.core.domain.events.TransactionEventObserver.access$getGetRequestPolicy$p(r13)
                com.unity3d.ads.gatewayclient.RequestPolicy r7 = r13.invoke()
                com.unity3d.ads.core.data.model.OperationType r8 = com.unity3d.ads.core.data.model.OperationType.TRANSACTION_EVENT
                r12.L$0 = r1
                r12.label = r3
                r5 = 0
                r10 = 1
                r11 = 0
                r6 = r1
                r9 = r12
                java.lang.Object r13 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r4, r5, r6, r7, r8, r9, r10, r11)
                if (r13 != r0) goto L7d
                return r0
            L7d:
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r13 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r13
                gatewayprotocol.v1.ErrorOuterClass$Error r13 = r13.getError()
                if (r13 == 0) goto Lac
                com.unity3d.ads.core.domain.events.TransactionEventObserver r13 = r12.this$0
                com.unity3d.ads.core.data.datasource.ByteStringDataSource r13 = com.unity3d.ads.core.domain.events.TransactionEventObserver.access$getIapTransactionStore$p(r13)
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$SharedData r1 = r1.getSharedData()
                gatewayprotocol.v1.TimestampsOuterClass$Timestamps r1 = r1.getTimestamps()
                com.google.protobuf.Timestamp r1 = r1.getTimestamp()
                com.google.protobuf.ByteString r1 = r1.toByteString()
                java.lang.String r3 = "fullRequest.sharedData.t….timestamp.toByteString()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
                r3 = 0
                r12.L$0 = r3
                r12.label = r2
                java.lang.Object r13 = r13.set(r1, r12)
                if (r13 != r0) goto Lac
                return r0
            Lac:
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.TransactionEventObserver$invoke$2.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionEventObserver$invoke$2(TransactionEventObserver transactionEventObserver, c<? super TransactionEventObserver$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = transactionEventObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new TransactionEventObserver$invoke$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((TransactionEventObserver$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        e eVar;
        Object value;
        Boolean bool;
        TransactionEventRepository transactionEventRepository;
        c0 c0Var;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            eVar = this.this$0.isRunning;
            do {
                value = eVar.getValue();
                bool = (Boolean) value;
                bool.booleanValue();
            } while (!eVar.b(value, kotlin.coroutines.jvm.internal.a.a(true)));
            if (!bool.booleanValue()) {
                transactionEventRepository = this.this$0.transactionEventRepository;
                b O = kotlinx.coroutines.flow.c.O(transactionEventRepository.getTransactionEvents(), new AnonymousClass2(this.this$0, null));
                c0Var = this.this$0.defaultDispatcher;
                kotlinx.coroutines.flow.c.J(O, i.a(c0Var));
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
