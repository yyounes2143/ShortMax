package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.SessionChange;
import com.unity3d.ads.core.data.model.TokenCounters;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.SdkProperties;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.SessionCountersKt;
import gatewayprotocol.v1.SessionCountersOuterClass;
import gt.c0;
import gt.g;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.i;
import kt.b;
import kt.d;
import kt.e;
import kt.f;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidSessionRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidSessionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidSessionRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidSessionRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 6 SessionCountersKt.kt\ngatewayprotocol/v1/SessionCountersKtKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,238:1\n20#2:239\n22#2:243\n47#2,3:244\n50#3:240\n55#3:242\n106#4:241\n198#5,5:247\n230#5,5:252\n198#5,5:257\n230#5,5:262\n230#5,5:267\n230#5,3:272\n233#5,2:277\n230#5,3:279\n233#5,2:284\n230#5,3:286\n233#5,2:291\n230#5,3:293\n233#5,2:298\n230#5,3:300\n233#5,2:305\n230#5,3:307\n233#5,2:312\n230#5,3:314\n233#5,2:319\n230#5,3:321\n233#5,2:326\n230#5,5:328\n230#5,5:333\n230#5,5:338\n230#5,5:343\n230#5,5:348\n230#5,5:353\n230#5,5:358\n230#5,5:363\n230#5,5:368\n214#5,5:373\n230#5,5:378\n214#5,5:383\n232#6:275\n232#6:282\n232#6:289\n232#6:296\n232#6:303\n232#6:310\n232#6:317\n232#6:324\n1#7:276\n1#7:283\n1#7:290\n1#7:297\n1#7:304\n1#7:311\n1#7:318\n1#7:325\n*S KotlinDebug\n*F\n+ 1 AndroidSessionRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidSessionRepository\n*L\n55#1:239\n55#1:243\n55#1:244,3\n55#1:240\n55#1:242\n55#1:241\n64#1:247,5\n65#1:252,5\n76#1:257,5\n81#1:262,5\n86#1:267,5\n89#1:272,3\n89#1:277,2\n95#1:279,3\n95#1:284,2\n101#1:286,3\n101#1:291,2\n107#1:293,3\n107#1:298,2\n113#1:300,3\n113#1:305,2\n119#1:307,3\n119#1:312,2\n125#1:314,3\n125#1:319,2\n131#1:321,3\n131#1:326,2\n137#1:328,5\n143#1:333,5\n149#1:338,5\n155#1:343,5\n163#1:348,5\n168#1:353,5\n181#1:358,5\n186#1:363,5\n191#1:368,5\n206#1:373,5\n226#1:378,5\n237#1:383,5\n90#1:275\n96#1:282\n102#1:289\n108#1:296\n114#1:303\n120#1:310\n126#1:317\n132#1:324\n90#1:276\n96#1:283\n102#1:290\n108#1:297\n114#1:304\n120#1:311\n126#1:318\n132#1:325\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidSessionRepository implements SessionRepository {
    @NotNull
    private final e<ByteString> _currentState;
    @NotNull
    private e<String> _gameId;
    @NotNull
    private final e<String> _gatewayUrl;
    @NotNull
    private final e<Integer> _headerBiddingTokenCounter;
    @NotNull
    private final e<InitializationState> _initializationState;
    @NotNull
    private final e<Boolean> _isFirstInitAttempt;
    @NotNull
    private final e<Boolean> _isTestModeEnabled;
    @NotNull
    private d<SessionChange> _onChange;
    @NotNull
    private final e<NativeConfigurationOuterClass.NativeConfiguration> _sdkConfiguration;
    @NotNull
    private final e<SessionCountersOuterClass.SessionCounters> _sessionCounters;
    @NotNull
    private final e<ByteString> _sessionId;
    @NotNull
    private final e<ByteString> _sessionToken;
    @NotNull
    private final e<Boolean> _shouldInitialize;
    @NotNull
    private final e<TokenCounters> _tokenCounters;
    @NotNull
    private final ByteStringDataSource fsmDataSource;
    @NotNull
    private final ByteStringDataSource gatewayCacheDataSource;
    @NotNull
    private final e<Boolean> isInit;
    @NotNull
    private final ByteStringDataSource nativeConfigDataSource;
    @NotNull
    private final f<SessionChange> onChange;
    @NotNull
    private final b<NativeConfigurationOuterClass.NativeConfiguration> persistedNativeConfiguration;
    @NotNull
    private final ByteStringDataSource privacyDataSource;
    @NotNull
    private final List<InitializationResponseOuterClass.AdFormat> scarEligibleFormats;

    /* compiled from: AndroidSessionRepository.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$1", f = "AndroidSessionRepository.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ SendDiagnosticEvent $sendDiagnosticEvent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SendDiagnosticEvent sendDiagnosticEvent, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$sendDiagnosticEvent = sendDiagnosticEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$sendDiagnosticEvent, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = a.f();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    ByteStringDataSource byteStringDataSource = AndroidSessionRepository.this.nativeConfigDataSource;
                    this.label = 1;
                    obj = byteStringDataSource.get(this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                ByteString data = ((ByteStringStoreOuterClass.ByteStringStore) obj).getData();
                if (!data.isEmpty()) {
                    e eVar = AndroidSessionRepository.this._sdkConfiguration;
                    NativeConfigurationOuterClass.NativeConfiguration parseFrom = NativeConfigurationOuterClass.NativeConfiguration.parseFrom(data);
                    Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(data)");
                    eVar.setValue(parseFrom);
                }
            } catch (Exception e10) {
                SendDiagnosticEvent sendDiagnosticEvent = this.$sendDiagnosticEvent;
                String message = e10.getMessage();
                if (message == null) {
                    message = "unknown";
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_initialize_missed_native_parsing", null, p0.f(k.a("debugReason", message)), null, null, null, 58, null);
            }
            AndroidSessionRepository.this.isInit.setValue(kotlin.coroutines.jvm.internal.a.a(true));
            return Unit.f60915a;
        }
    }

    public AndroidSessionRepository(@NotNull ByteStringDataSource gatewayCacheDataSource, @NotNull ByteStringDataSource privacyDataSource, @NotNull ByteStringDataSource fsmDataSource, @NotNull ByteStringDataSource nativeConfigDataSource, @NotNull NativeConfigurationOuterClass.NativeConfiguration defaultNativeConfiguration, @NotNull c0 dispatcher, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(gatewayCacheDataSource, "gatewayCacheDataSource");
        Intrinsics.checkNotNullParameter(privacyDataSource, "privacyDataSource");
        Intrinsics.checkNotNullParameter(fsmDataSource, "fsmDataSource");
        Intrinsics.checkNotNullParameter(nativeConfigDataSource, "nativeConfigDataSource");
        Intrinsics.checkNotNullParameter(defaultNativeConfiguration, "defaultNativeConfiguration");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.gatewayCacheDataSource = gatewayCacheDataSource;
        this.privacyDataSource = privacyDataSource;
        this.fsmDataSource = fsmDataSource;
        this.nativeConfigDataSource = nativeConfigDataSource;
        e<NativeConfigurationOuterClass.NativeConfiguration> a10 = o.a(defaultNativeConfiguration);
        this._sdkConfiguration = a10;
        e<Boolean> a11 = o.a(Boolean.FALSE);
        this.isInit = a11;
        g.d(i.a(dispatcher), null, null, new AnonymousClass1(sendDiagnosticEvent, null), 3, null);
        final b G = kotlinx.coroutines.flow.c.G(a10, a11, new AndroidSessionRepository$persistedNativeConfiguration$1(null));
        final b<Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>> bVar = new b<Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>>() { // from class: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidSessionRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidSessionRepository\n*L\n1#1,222:1\n21#2:223\n22#2:225\n55#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2", f = "AndroidSessionRepository.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar) {
                    this.$this_unsafeFlow = cVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, @org.jetbrains.annotations.NotNull rs.c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r6)
                        goto L4e
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.f.b(r6)
                        kt.c r6 = r4.$this_unsafeFlow
                        r2 = r5
                        kotlin.Pair r2 = (kotlin.Pair) r2
                        java.lang.Object r2 = r2.f()
                        java.lang.Boolean r2 = (java.lang.Boolean) r2
                        boolean r2 = r2.booleanValue()
                        if (r2 == 0) goto L4e
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4e
                        return r1
                    L4e:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>> cVar, @NotNull c cVar2) {
                Object collect = b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.persistedNativeConfiguration = new b<NativeConfigurationOuterClass.NativeConfiguration>() { // from class: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidSessionRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidSessionRepository\n*L\n1#1,222:1\n48#2:223\n55#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2", f = "AndroidSessionRepository.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar) {
                    this.$this_unsafeFlow = cVar;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, @org.jetbrains.annotations.NotNull rs.c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r6)
                        goto L45
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.f.b(r6)
                        kt.c r6 = r4.$this_unsafeFlow
                        kotlin.Pair r5 = (kotlin.Pair) r5
                        java.lang.Object r5 = r5.e()
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L45
                        return r1
                    L45:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super NativeConfigurationOuterClass.NativeConfiguration> cVar, @NotNull c cVar2) {
                Object collect = b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.scarEligibleFormats = new ArrayList();
        d<SessionChange> b10 = kt.g.b(0, 0, null, 7, null);
        this._onChange = b10;
        this.onChange = kotlinx.coroutines.flow.c.c(b10);
        String gameId = ClientProperties.getGameId();
        this._gameId = o.a(gameId != null ? gameId : null);
        UUID randomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(randomUUID, "randomUUID()");
        this._sessionId = o.a(ProtobufExtensionsKt.toByteString(randomUUID));
        this._isTestModeEnabled = o.a(Boolean.valueOf(SdkProperties.isTestMode()));
        SessionCountersOuterClass.SessionCounters build = SessionCountersOuterClass.SessionCounters.newBuilder().build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder().build()");
        this._sessionCounters = o.a(build);
        this._tokenCounters = o.a(new TokenCounters(0, 0, 0));
        ByteString EMPTY = ByteString.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        this._sessionToken = o.a(EMPTY);
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        this._currentState = o.a(EMPTY);
        this._gatewayUrl = o.a(UnityAdsConstants.DefaultUrls.GATEWAY_URL);
        this._initializationState = o.a(InitializationState.NOT_INITIALIZED);
        this._headerBiddingTokenCounter = o.a(0);
        Boolean bool = Boolean.TRUE;
        this._shouldInitialize = o.a(bool);
        this._isFirstInitAttempt = o.a(bool);
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void addTimeToGlobalAdsFocusTime(int i10) {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setGlobalAdsFocusTime(_create.getGlobalAdsFocusTime() + i10);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public NativeConfigurationOuterClass.FeatureFlags getFeatureFlags() {
        NativeConfigurationOuterClass.FeatureFlags featureFlags = getNativeConfiguration().getFeatureFlags();
        Intrinsics.checkNotNullExpressionValue(featureFlags, "nativeConfiguration.featureFlags");
        return featureFlags;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @Nullable
    public String getGameId() {
        String value;
        String gameId;
        e<String> eVar = this._gameId;
        do {
            value = eVar.getValue();
            gameId = ClientProperties.getGameId();
            if (gameId == null) {
                gameId = null;
            }
        } while (!eVar.b(value, gameId));
        return gameId;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getGatewayCache(@org.jetbrains.annotations.NotNull rs.c<? super com.google.protobuf.ByteString> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$getGatewayCache$1
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$getGatewayCache$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$getGatewayCache$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$getGatewayCache$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$getGatewayCache$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r5 = r4.gatewayCacheDataSource
            r0.label = r3
            java.lang.Object r5 = r5.get(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            com.unity3d.ads.datastore.ByteStringStoreOuterClass$ByteStringStore r5 = (com.unity3d.ads.datastore.ByteStringStoreOuterClass.ByteStringStore) r5
            com.google.protobuf.ByteString r5 = r5.getData()
            java.lang.String r0 = "gatewayCacheDataSource.get().data"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.getGatewayCache(rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public ByteString getGatewayState() {
        return this._currentState.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public String getGatewayUrl() {
        return this._gatewayUrl.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public int getHeaderBiddingTokenCounter() {
        Integer value;
        Integer num;
        e<Integer> eVar = this._headerBiddingTokenCounter;
        do {
            value = eVar.getValue();
            num = value;
        } while (!eVar.b(value, Integer.valueOf(num.intValue() + 1)));
        return num.intValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public InitializationState getInitializationState() {
        return this._initializationState.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public NativeConfigurationOuterClass.NativeConfiguration getNativeConfiguration() {
        Object b10;
        if (!this.isInit.getValue().booleanValue()) {
            b10 = gt.f.b(null, new AndroidSessionRepository$nativeConfiguration$1(this, null), 1, null);
            return (NativeConfigurationOuterClass.NativeConfiguration) b10;
        }
        return this._sdkConfiguration.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public b<InitializationState> getObserveInitializationState() {
        return this._initializationState;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public f<SessionChange> getOnChange() {
        return this.onChange;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getPrivacy(@org.jetbrains.annotations.NotNull rs.c<? super com.google.protobuf.ByteString> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacy$1
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacy$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacy$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacy$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r5 = r4.privacyDataSource
            r0.label = r3
            java.lang.Object r5 = r5.get(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            com.unity3d.ads.datastore.ByteStringStoreOuterClass$ByteStringStore r5 = (com.unity3d.ads.datastore.ByteStringStoreOuterClass.ByteStringStore) r5
            com.google.protobuf.ByteString r5 = r5.getData()
            java.lang.String r0 = "privacyDataSource.get().data"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.getPrivacy(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getPrivacyFsm(@org.jetbrains.annotations.NotNull rs.c<? super com.google.protobuf.ByteString> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacyFsm$1
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacyFsm$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacyFsm$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacyFsm$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$getPrivacyFsm$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r5 = r4.fsmDataSource
            r0.label = r3
            java.lang.Object r5 = r5.get(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            com.unity3d.ads.datastore.ByteStringStoreOuterClass$ByteStringStore r5 = (com.unity3d.ads.datastore.ByteStringStoreOuterClass.ByteStringStore) r5
            com.google.protobuf.ByteString r5 = r5.getData()
            java.lang.String r0 = "fsmDataSource.get().data"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.getPrivacyFsm(rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public List<InitializationResponseOuterClass.AdFormat> getScarEligibleFormats() {
        return this.scarEligibleFormats;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public SessionCountersOuterClass.SessionCounters getSessionCounters() {
        return this._sessionCounters.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public ByteString getSessionId() {
        return this._sessionId.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public ByteString getSessionToken() {
        return this._sessionToken.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean getShouldInitialize() {
        return this._shouldInitialize.getValue().booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @NotNull
    public TokenCounters getTokenCounters() {
        return this._tokenCounters.getValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementBannerImpressionCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setBannerImpressions(_create.getBannerImpressions() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementBannerLoadRequestAdmCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setBannerRequestsAdm(_create.getBannerRequestsAdm() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementBannerLoadRequestCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setBannerLoadRequests(_create.getBannerLoadRequests() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementFocusChangeCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setFocusChangeCount(_create.getFocusChangeCount() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementGlobalAdsFocusChangeCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setGlobalAdsFocusChangeCount(_create.getGlobalAdsFocusChangeCount() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementLoadRequestAdmCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setLoadRequestsAdm(_create.getLoadRequestsAdm() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementLoadRequestCount() {
        SessionCountersOuterClass.SessionCounters value;
        SessionCountersKt.Dsl _create;
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
            value = eVar.getValue();
            SessionCountersKt.Dsl.Companion companion = SessionCountersKt.Dsl.Companion;
            SessionCountersOuterClass.SessionCounters.Builder builder = value.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            _create = companion._create(builder);
            _create.setLoadRequests(_create.getLoadRequests() + 1);
        } while (!eVar.b(value, _create._build()));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementTokenSequenceNumber() {
        TokenCounters value;
        TokenCounters tokenCounters;
        e<TokenCounters> eVar = this._tokenCounters;
        do {
            value = eVar.getValue();
            tokenCounters = value;
        } while (!eVar.b(value, TokenCounters.copy$default(tokenCounters, tokenCounters.getSeq() + 1, 0, 0, 6, null)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementTokenStartsCount() {
        TokenCounters value;
        TokenCounters tokenCounters;
        e<TokenCounters> eVar = this._tokenCounters;
        do {
            value = eVar.getValue();
            tokenCounters = value;
        } while (!eVar.b(value, TokenCounters.copy$default(tokenCounters, 0, 0, tokenCounters.getStarts() + 1, 3, null)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void incrementTokenWinsCount() {
        TokenCounters value;
        TokenCounters tokenCounters;
        e<TokenCounters> eVar = this._tokenCounters;
        do {
            value = eVar.getValue();
            tokenCounters = value;
        } while (!eVar.b(value, TokenCounters.copy$default(tokenCounters, 0, tokenCounters.getWins() + 1, 0, 5, null)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isDiagnosticsEnabled() {
        return getNativeConfiguration().getDiagnosticEvents().getEnabled();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isFirstInitAttempt() {
        Boolean value;
        Boolean bool;
        e<Boolean> eVar = this._isFirstInitAttempt;
        do {
            value = eVar.getValue();
            bool = value;
            bool.booleanValue();
        } while (!eVar.b(value, Boolean.FALSE));
        return bool.booleanValue();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isOmEnabled() {
        return getNativeConfiguration().getEnableOm();
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isSdkInitialized() {
        if (getInitializationState() == InitializationState.INITIALIZED) {
            return true;
        }
        return false;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public boolean isTestModeEnabled() {
        Boolean value;
        boolean isTestMode;
        e<Boolean> eVar = this._isTestModeEnabled;
        do {
            value = eVar.getValue();
            value.booleanValue();
            isTestMode = SdkProperties.isTestMode();
        } while (!eVar.b(value, Boolean.valueOf(isTestMode)));
        return isTestMode;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @Nullable
    public Object persistNativeConfiguration(@NotNull c<? super Unit> cVar) {
        ByteStringDataSource byteStringDataSource = this.nativeConfigDataSource;
        ByteString byteString = getNativeConfiguration().toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "nativeConfiguration.toByteString()");
        Object obj = byteStringDataSource.set(byteString, cVar);
        if (obj == a.f()) {
            return obj;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void resetTokenCounters() {
        e<TokenCounters> eVar = this._tokenCounters;
        do {
        } while (!eVar.b(eVar.getValue(), new TokenCounters(0, 0, 0)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setGameId(@Nullable String str) {
        String value;
        e<String> eVar = this._gameId;
        do {
            value = eVar.getValue();
            ClientProperties.setGameId(str);
        } while (!eVar.b(value, str));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @Nullable
    public Object setGatewayCache(@NotNull ByteString byteString, @NotNull c<? super Unit> cVar) {
        Object obj = this.gatewayCacheDataSource.set(byteString, cVar);
        if (obj == a.f()) {
            return obj;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setGatewayState(@NotNull ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<ByteString> eVar = this._currentState;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setGatewayUrl(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<String> eVar = this._gatewayUrl;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setInitializationState(@NotNull InitializationState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<InitializationState> eVar = this._initializationState;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setNativeConfiguration(@NotNull NativeConfigurationOuterClass.NativeConfiguration value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<NativeConfigurationOuterClass.NativeConfiguration> eVar = this._sdkConfiguration;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067 A[RETURN] */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object setPrivacy(@org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacy$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L68
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.L$1
            com.google.protobuf.ByteString r6 = (com.google.protobuf.ByteString) r6
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.data.repository.AndroidSessionRepository r2 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository) r2
            kotlin.f.b(r7)
            goto L53
        L40:
            kotlin.f.b(r7)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r7 = r5.privacyDataSource
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r7.set(r6, r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            r2 = r5
        L53:
            kt.d<com.unity3d.ads.core.data.model.SessionChange> r7 = r2._onChange
            com.unity3d.ads.core.data.model.SessionChange$UserConsentChange r2 = new com.unity3d.ads.core.data.model.SessionChange$UserConsentChange
            r2.<init>(r6)
            r6 = 0
            r0.L$0 = r6
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r6 = r7.emit(r2, r0)
            if (r6 != r1) goto L68
            return r1
        L68:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.setPrivacy(com.google.protobuf.ByteString, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067 A[RETURN] */
    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object setPrivacyFsm(@org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1 r0 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1 r0 = new com.unity3d.ads.core.data.repository.AndroidSessionRepository$setPrivacyFsm$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L68
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.L$1
            com.google.protobuf.ByteString r6 = (com.google.protobuf.ByteString) r6
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.data.repository.AndroidSessionRepository r2 = (com.unity3d.ads.core.data.repository.AndroidSessionRepository) r2
            kotlin.f.b(r7)
            goto L53
        L40:
            kotlin.f.b(r7)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r7 = r5.fsmDataSource
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r7.set(r6, r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            r2 = r5
        L53:
            kt.d<com.unity3d.ads.core.data.model.SessionChange> r7 = r2._onChange
            com.unity3d.ads.core.data.model.SessionChange$PrivacyFsmChange r2 = new com.unity3d.ads.core.data.model.SessionChange$PrivacyFsmChange
            r2.<init>(r6)
            r6 = 0
            r0.L$0 = r6
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r6 = r7.emit(r2, r0)
            if (r6 != r1) goto L68
            return r1
        L68:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidSessionRepository.setPrivacyFsm(com.google.protobuf.ByteString, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setSessionCounters(@NotNull SessionCountersOuterClass.SessionCounters value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<SessionCountersOuterClass.SessionCounters> eVar = this._sessionCounters;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setSessionToken(@NotNull ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<ByteString> eVar = this._sessionToken;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setShouldInitialize(boolean z10) {
        Boolean value;
        e<Boolean> eVar = this._shouldInitialize;
        do {
            value = eVar.getValue();
            value.booleanValue();
        } while (!eVar.b(value, Boolean.valueOf(z10)));
    }

    @Override // com.unity3d.ads.core.data.repository.SessionRepository
    public void setTokenCounters(@NotNull TokenCounters value) {
        Intrinsics.checkNotNullParameter(value, "value");
        e<TokenCounters> eVar = this._tokenCounters;
        do {
        } while (!eVar.b(eVar.getValue(), value));
    }
}
