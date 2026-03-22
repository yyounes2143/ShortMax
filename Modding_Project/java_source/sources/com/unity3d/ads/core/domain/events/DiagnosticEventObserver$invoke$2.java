package com.unity3d.ads.core.domain.events;

import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.core.domain.work.BackgroundWorker;
import com.unity3d.ads.core.domain.work.DiagnosticEventJob;
import com.unity3d.ads.core.domain.work.UniversalRequestWorkerData;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestKt;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gt.c0;
import gt.g0;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kt.b;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiagnosticEventObserver.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2", f = "DiagnosticEventObserver.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiagnosticEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,52:1\n214#2,5:53\n*S KotlinDebug\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2\n*L\n36#1:53,5\n*E\n"})
/* loaded from: classes7.dex */
public final class DiagnosticEventObserver$invoke$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ DiagnosticEventObserver this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiagnosticEventObserver.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2$2", f = "DiagnosticEventObserver.kt", l = {42, 45}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nDiagnosticEventObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2$2\n+ 2 UniversalRequestKt.kt\ngatewayprotocol/v1/UniversalRequestKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n+ 5 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,52:1\n484#2:53\n1#3:54\n20#4,4:55\n24#4,6:60\n29#5:59\n*S KotlinDebug\n*F\n+ 1 DiagnosticEventObserver.kt\ncom/unity3d/ads/core/domain/events/DiagnosticEventObserver$invoke$2$2\n*L\n39#1:53\n39#1:54\n48#1:55,4\n48#1:60,6\n48#1:59\n*E\n"})
    /* renamed from: com.unity3d.ads.core.domain.events.DiagnosticEventObserver$invoke$2$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<List<? extends DiagnosticEventRequestOuterClass.DiagnosticEvent>, c<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DiagnosticEventObserver this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(DiagnosticEventObserver diagnosticEventObserver, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.this$0 = diagnosticEventObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, cVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(List<? extends DiagnosticEventRequestOuterClass.DiagnosticEvent> list, c<? super Unit> cVar) {
            return invoke2((List<DiagnosticEventRequestOuterClass.DiagnosticEvent>) list, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            GetDiagnosticEventBatchRequest getDiagnosticEventBatchRequest;
            GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
            UniversalRequestDataSource universalRequestDataSource;
            String str;
            BackgroundWorker backgroundWorker;
            Object f10 = a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        str = (String) this.L$0;
                        f.b(obj);
                        UniversalRequestWorkerData universalRequestWorkerData = new UniversalRequestWorkerData(str);
                        backgroundWorker = this.this$0.backgroundWorker;
                        Constraints build = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
                        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…TED)\n            .build()");
                        OneTimeWorkRequest build2 = new OneTimeWorkRequest.Builder(DiagnosticEventJob.class).setConstraints(build).setInputData(universalRequestWorkerData.invoke()).addTag(BackgroundWorker.TAG).build();
                        Intrinsics.checkNotNullExpressionValue(build2, "OneTimeWorkRequestBuilde…TAG)\n            .build()");
                        backgroundWorker.getWorkManager().enqueue(build2);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                f.b(obj);
            } else {
                f.b(obj);
                UniversalRequestKt universalRequestKt = UniversalRequestKt.INSTANCE;
                DiagnosticEventObserver diagnosticEventObserver = this.this$0;
                UniversalRequestKt.PayloadKt.Dsl.Companion companion = UniversalRequestKt.PayloadKt.Dsl.Companion;
                UniversalRequestOuterClass.UniversalRequest.Payload.Builder newBuilder = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
                Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
                UniversalRequestKt.PayloadKt.Dsl _create = companion._create(newBuilder);
                getDiagnosticEventBatchRequest = diagnosticEventObserver.getDiagnosticEventBatchRequest;
                _create.setDiagnosticEventRequest(getDiagnosticEventBatchRequest.invoke((List) this.L$0));
                UniversalRequestOuterClass.UniversalRequest.Payload _build = _create._build();
                getUniversalRequestForPayLoad = this.this$0.getUniversalRequestForPayLoad;
                this.label = 1;
                obj = getUniversalRequestForPayLoad.invoke(_build, this);
                if (obj == f10) {
                    return f10;
                }
            }
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
            universalRequestDataSource = this.this$0.universalRequestDataSource;
            byte[] byteArray = ((UniversalRequestOuterClass.UniversalRequest) obj).toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "fullRequest.toByteArray()");
            ByteString byteString = ByteStringsKt.toByteString(byteArray);
            this.L$0 = uuid;
            this.label = 2;
            if (universalRequestDataSource.set(uuid, byteString, this) == f10) {
                return f10;
            }
            str = uuid;
            UniversalRequestWorkerData universalRequestWorkerData2 = new UniversalRequestWorkerData(str);
            backgroundWorker = this.this$0.backgroundWorker;
            Constraints build3 = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
            Intrinsics.checkNotNullExpressionValue(build3, "Builder()\n            .s…TED)\n            .build()");
            OneTimeWorkRequest build22 = new OneTimeWorkRequest.Builder(DiagnosticEventJob.class).setConstraints(build3).setInputData(universalRequestWorkerData2.invoke()).addTag(BackgroundWorker.TAG).build();
            Intrinsics.checkNotNullExpressionValue(build22, "OneTimeWorkRequestBuilde…TAG)\n            .build()");
            backgroundWorker.getWorkManager().enqueue(build22);
            return Unit.f60915a;
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@NotNull List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass2) create(list, cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticEventObserver$invoke$2(DiagnosticEventObserver diagnosticEventObserver, c<? super DiagnosticEventObserver$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = diagnosticEventObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DiagnosticEventObserver$invoke$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DiagnosticEventObserver$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        e eVar;
        Object value;
        Boolean bool;
        DiagnosticEventRepository diagnosticEventRepository;
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
                diagnosticEventRepository = this.this$0.diagnosticEventRepository;
                b O = kotlinx.coroutines.flow.c.O(diagnosticEventRepository.getDiagnosticEvents(), new AnonymousClass2(this.this$0, null));
                c0Var = this.this$0.defaultDispatcher;
                kotlinx.coroutines.flow.c.J(O, i.a(c0Var));
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
