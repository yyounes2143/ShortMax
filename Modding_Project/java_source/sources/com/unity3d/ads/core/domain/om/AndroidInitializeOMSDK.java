package com.unity3d.ads.core.domain.om;

import android.content.Context;
import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidInitializeOMSDK.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidInitializeOMSDK implements InitializeOMSDK {
    @NotNull
    private final Context context;
    @NotNull
    private final OpenMeasurementRepository omRepository;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidInitializeOMSDK(@NotNull Context context, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull SessionRepository sessionRepository, @NotNull OpenMeasurementRepository omRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(omRepository, "omRepository");
        this.context = context;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.sessionRepository = sessionRepository;
        this.omRepository = omRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    @Override // com.unity3d.ads.core.domain.om.InitializeOMSDK
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1
            if (r2 == 0) goto L17
            r2 = r1
            com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1 r2 = (com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1 r2 = new com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK$invoke$1
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            long r3 = r2.J$0
            java.lang.Object r2 = r2.L$0
            com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK r2 = (com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK) r2
            kotlin.f.b(r1)
            goto L6f
        L33:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3b:
            kotlin.f.b(r1)
            com.unity3d.ads.core.data.repository.SessionRepository r1 = r0.sessionRepository
            boolean r1 = r1.isOmEnabled()
            if (r1 == 0) goto Ld1
            kotlin.time.h r1 = kotlin.time.h.f61257a
            long r6 = r1.b()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r8 = r0.sendDiagnosticEvent
            r15 = 62
            r16 = 0
            java.lang.String r9 = "om_activate_started"
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r8, r9, r10, r11, r12, r13, r14, r15, r16)
            com.unity3d.ads.core.data.repository.OpenMeasurementRepository r1 = r0.omRepository
            android.content.Context r4 = r0.context
            r2.L$0 = r0
            r2.J$0 = r6
            r2.label = r5
            java.lang.Object r1 = r1.activateOM(r4, r2)
            if (r1 != r3) goto L6d
            return r3
        L6d:
            r2 = r0
            r3 = r6
        L6f:
            com.unity3d.ads.core.data.model.OMResult r1 = (com.unity3d.ads.core.data.model.OMResult) r1
            boolean r5 = r1 instanceof com.unity3d.ads.core.data.model.OMResult.Success
            if (r5 == 0) goto L90
            com.unity3d.ads.core.domain.SendDiagnosticEvent r6 = r2.sendDiagnosticEvent
            kotlin.time.h$a r1 = kotlin.time.h.a.b(r3)
            double r1 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r1)
            java.lang.Double r8 = kotlin.coroutines.jvm.internal.a.b(r1)
            r13 = 60
            r14 = 0
            java.lang.String r7 = "om_activate_success_time"
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r6, r7, r8, r9, r10, r11, r12, r13, r14)
            goto Ld1
        L90:
            boolean r5 = r1 instanceof com.unity3d.ads.core.data.model.OMResult.Failure
            if (r5 == 0) goto Ld1
            com.unity3d.ads.core.domain.SendDiagnosticEvent r6 = r2.sendDiagnosticEvent
            kotlin.time.h$a r2 = kotlin.time.h.a.b(r3)
            double r2 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r2)
            java.lang.Double r8 = kotlin.coroutines.jvm.internal.a.b(r2)
            java.util.Map r2 = kotlin.collections.p0.c()
            com.unity3d.ads.core.data.model.OMResult$Failure r1 = (com.unity3d.ads.core.data.model.OMResult.Failure) r1
            java.lang.String r3 = r1.getReason()
            java.lang.String r4 = "reason"
            r2.put(r4, r3)
            java.lang.String r3 = r1.getReasonDebug()
            if (r3 == 0) goto Lc0
            java.lang.String r3 = "reason_debug"
            java.lang.String r1 = r1.getReasonDebug()
            r2.put(r3, r1)
        Lc0:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            java.util.Map r9 = kotlin.collections.p0.b(r2)
            r13 = 56
            r14 = 0
            java.lang.String r7 = "om_activate_failure_time"
            r10 = 0
            r11 = 0
            r12 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r6, r7, r8, r9, r10, r11, r12, r13, r14)
        Ld1:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.om.AndroidInitializeOMSDK.invoke(rs.c):java.lang.Object");
    }
}
