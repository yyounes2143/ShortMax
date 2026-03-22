package com.unity3d.ads.core.domain.events;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.OperativeEventRepository;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetOperativeEventApi.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetOperativeEventApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetOperativeEventApi.kt\ncom/unity3d/ads/core/domain/events/GetOperativeEventApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"})
/* loaded from: classes7.dex */
public final class GetOperativeEventApi {
    @NotNull
    private final OperativeEventRepository operativeEventRepository;
    @NotNull
    private final GetOperativeEventRequest operativeEventRequest;

    public GetOperativeEventApi(@NotNull OperativeEventRepository operativeEventRepository, @NotNull GetOperativeEventRequest operativeEventRequest) {
        Intrinsics.checkNotNullParameter(operativeEventRepository, "operativeEventRepository");
        Intrinsics.checkNotNullParameter(operativeEventRequest, "operativeEventRequest");
        this.operativeEventRepository = operativeEventRepository;
        this.operativeEventRequest = operativeEventRequest;
    }

    public static /* synthetic */ Object invoke$default(GetOperativeEventApi getOperativeEventApi, OperativeEventRequestOuterClass.OperativeEventType operativeEventType, ByteString byteString, ByteString byteString2, ByteString byteString3, String str, InitializationResponseOuterClass.AdFormat adFormat, c cVar, int i10, Object obj) {
        String str2;
        InitializationResponseOuterClass.AdFormat adFormat2;
        if ((i10 & 16) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        if ((i10 & 32) != 0) {
            adFormat2 = null;
        } else {
            adFormat2 = adFormat;
        }
        return getOperativeEventApi.invoke(operativeEventType, byteString, byteString2, byteString3, str2, adFormat2, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType r12, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r13, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r14, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r15, @org.jetbrains.annotations.Nullable java.lang.String r16, @org.jetbrains.annotations.Nullable gatewayprotocol.v1.InitializationResponseOuterClass.AdFormat r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r18) {
        /*
            r11 = this;
            r0 = r11
            r1 = r18
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1
            if (r2 == 0) goto L17
            r2 = r1
            com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1 r2 = (com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
        L15:
            r10 = r2
            goto L1d
        L17:
            com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1 r2 = new com.unity3d.ads.core.domain.events.GetOperativeEventApi$invoke$1
            r2.<init>(r11, r1)
            goto L15
        L1d:
            java.lang.Object r1 = r10.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r10.label
            r4 = 1
            if (r3 == 0) goto L3a
            if (r3 != r4) goto L32
            java.lang.Object r2 = r10.L$0
            com.unity3d.ads.core.domain.events.GetOperativeEventApi r2 = (com.unity3d.ads.core.domain.events.GetOperativeEventApi) r2
            kotlin.f.b(r1)
            goto L53
        L32:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3a:
            kotlin.f.b(r1)
            com.unity3d.ads.core.domain.events.GetOperativeEventRequest r3 = r0.operativeEventRequest
            r10.L$0 = r0
            r10.label = r4
            r4 = r12
            r5 = r14
            r6 = r13
            r7 = r15
            r8 = r16
            r9 = r17
            java.lang.Object r1 = r3.invoke(r4, r5, r6, r7, r8, r9, r10)
            if (r1 != r2) goto L52
            return r2
        L52:
            r2 = r0
        L53:
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventRequest r1 = (gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventRequest) r1
            com.unity3d.ads.core.data.repository.OperativeEventRepository r2 = r2.operativeEventRepository
            r2.addOperativeEvent(r1)
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.GetOperativeEventApi.invoke(gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType, com.google.protobuf.ByteString, com.google.protobuf.ByteString, com.google.protobuf.ByteString, java.lang.String, gatewayprotocol.v1.InitializationResponseOuterClass$AdFormat, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object invoke(@NotNull OperativeEventRequestOuterClass.OperativeEventType operativeEventType, @NotNull AdObject adObject, @NotNull ByteString byteString, @NotNull c<? super Unit> cVar) {
        Object invoke = invoke(operativeEventType, adObject.getOpportunityId(), adObject.getTrackingToken(), byteString, adObject.getPlayerServerId(), (adObject.getAdType() == DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER ? this : null) != null ? InitializationResponseOuterClass.AdFormat.AD_FORMAT_BANNER : null, cVar);
        return invoke == a.f() ? invoke : Unit.f60915a;
    }
}
