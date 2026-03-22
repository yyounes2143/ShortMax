package com.vungle.ads.internal.signals;

import com.vungle.ads.internal.model.UnclosedAd;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c2;
import vt.r2;
/* compiled from: SessionData.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class SessionData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int sessionCount;
    private long sessionCreationTime;
    private int sessionDepthCounter;
    private long sessionDuration;
    @NotNull
    private final String sessionId;
    @NotNull
    private List<SignaledAd> signaledAd;
    @NotNull
    private List<UnclosedAd> unclosedAd;

    /* compiled from: SessionData.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<SessionData> serializer() {
            return SessionData$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public SessionData(int i10) {
        this.sessionCount = i10;
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        this.sessionId = uuid;
        this.sessionCreationTime = System.currentTimeMillis() / 1000;
        this.signaledAd = new ArrayList();
        this.unclosedAd = new ArrayList();
    }

    public static /* synthetic */ SessionData copy$default(SessionData sessionData, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = sessionData.sessionCount;
        }
        return sessionData.copy(i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0030, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r2) == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void write$Self(@org.jetbrains.annotations.NotNull com.vungle.ads.internal.signals.SessionData r7, @org.jetbrains.annotations.NotNull kotlinx.serialization.encoding.d r8, @org.jetbrains.annotations.NotNull kotlinx.serialization.descriptors.SerialDescriptor r9) {
        /*
            java.lang.String r0 = "self"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "output"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "serialDesc"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            int r0 = r7.sessionCount
            r1 = 0
            r8.encodeIntElement(r9, r1, r0)
            r0 = 1
            boolean r1 = r8.shouldEncodeElementDefault(r9, r0)
            if (r1 == 0) goto L1d
            goto L32
        L1d:
            java.lang.String r1 = r7.sessionId
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "randomUUID().toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 != 0) goto L37
        L32:
            java.lang.String r1 = r7.sessionId
            r8.encodeStringElement(r9, r0, r1)
        L37:
            r0 = 2
            boolean r1 = r8.shouldEncodeElementDefault(r9, r0)
            if (r1 == 0) goto L3f
            goto L4c
        L3f:
            long r1 = r7.sessionCreationTime
            long r3 = java.lang.System.currentTimeMillis()
            r5 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 / r5
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L51
        L4c:
            long r1 = r7.sessionCreationTime
            r8.encodeLongElement(r9, r0, r1)
        L51:
            r0 = 3
            boolean r1 = r8.shouldEncodeElementDefault(r9, r0)
            if (r1 == 0) goto L59
            goto L66
        L59:
            java.util.List<com.vungle.ads.internal.signals.SignaledAd> r1 = r7.signaledAd
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 != 0) goto L72
        L66:
            vt.f r1 = new vt.f
            com.vungle.ads.internal.signals.SignaledAd$$serializer r2 = com.vungle.ads.internal.signals.SignaledAd$$serializer.INSTANCE
            r1.<init>(r2)
            java.util.List<com.vungle.ads.internal.signals.SignaledAd> r2 = r7.signaledAd
            r8.encodeSerializableElement(r9, r0, r1, r2)
        L72:
            r0 = 4
            boolean r1 = r8.shouldEncodeElementDefault(r9, r0)
            if (r1 == 0) goto L7a
            goto L82
        L7a:
            long r1 = r7.sessionDuration
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L87
        L82:
            long r1 = r7.sessionDuration
            r8.encodeLongElement(r9, r0, r1)
        L87:
            r0 = 5
            boolean r1 = r8.shouldEncodeElementDefault(r9, r0)
            if (r1 == 0) goto L8f
            goto L93
        L8f:
            int r1 = r7.sessionDepthCounter
            if (r1 == 0) goto L98
        L93:
            int r1 = r7.sessionDepthCounter
            r8.encodeIntElement(r9, r0, r1)
        L98:
            r0 = 6
            boolean r1 = r8.shouldEncodeElementDefault(r9, r0)
            if (r1 == 0) goto La0
            goto Lad
        La0:
            java.util.List<com.vungle.ads.internal.model.UnclosedAd> r1 = r7.unclosedAd
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 != 0) goto Lb9
        Lad:
            vt.f r1 = new vt.f
            com.vungle.ads.internal.model.UnclosedAd$$serializer r2 = com.vungle.ads.internal.model.UnclosedAd$$serializer.INSTANCE
            r1.<init>(r2)
            java.util.List<com.vungle.ads.internal.model.UnclosedAd> r7 = r7.unclosedAd
            r8.encodeSerializableElement(r9, r0, r1, r7)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.signals.SessionData.write$Self(com.vungle.ads.internal.signals.SessionData, kotlinx.serialization.encoding.d, kotlinx.serialization.descriptors.SerialDescriptor):void");
    }

    public final int component1() {
        return this.sessionCount;
    }

    @NotNull
    public final SessionData copy(int i10) {
        return new SessionData(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SessionData) && this.sessionCount == ((SessionData) obj).sessionCount) {
            return true;
        }
        return false;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionCreationTime() {
        return this.sessionCreationTime;
    }

    public final int getSessionDepthCounter() {
        return this.sessionDepthCounter;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    @NotNull
    public final String getSessionId() {
        return this.sessionId;
    }

    @NotNull
    public final List<SignaledAd> getSignaledAd() {
        return this.signaledAd;
    }

    @NotNull
    public final List<UnclosedAd> getUnclosedAd() {
        return this.unclosedAd;
    }

    public int hashCode() {
        return Integer.hashCode(this.sessionCount);
    }

    public final void setSessionCreationTime(long j10) {
        this.sessionCreationTime = j10;
    }

    public final void setSessionDepthCounter(int i10) {
        this.sessionDepthCounter = i10;
    }

    public final void setSessionDuration(long j10) {
        this.sessionDuration = j10;
    }

    public final void setSignaledAd(@NotNull List<SignaledAd> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.signaledAd = list;
    }

    public final void setUnclosedAd(@NotNull List<UnclosedAd> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.unclosedAd = list;
    }

    @NotNull
    public String toString() {
        return "SessionData(sessionCount=" + this.sessionCount + ')';
    }

    @c
    public /* synthetic */ SessionData(int i10, int i11, String str, long j10, List list, long j11, int i12, List list2, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, SessionData$$serializer.INSTANCE.getDescriptor());
        }
        this.sessionCount = i11;
        if ((i10 & 2) == 0) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
            this.sessionId = uuid;
        } else {
            this.sessionId = str;
        }
        if ((i10 & 4) == 0) {
            this.sessionCreationTime = System.currentTimeMillis() / 1000;
        } else {
            this.sessionCreationTime = j10;
        }
        if ((i10 & 8) == 0) {
            this.signaledAd = new ArrayList();
        } else {
            this.signaledAd = list;
        }
        if ((i10 & 16) == 0) {
            this.sessionDuration = 0L;
        } else {
            this.sessionDuration = j11;
        }
        if ((i10 & 32) == 0) {
            this.sessionDepthCounter = 0;
        } else {
            this.sessionDepthCounter = i12;
        }
        if ((i10 & 64) == 0) {
            this.unclosedAd = new ArrayList();
        } else {
            this.unclosedAd = list2;
        }
    }

    public static /* synthetic */ void getSessionCount$annotations() {
    }

    public static /* synthetic */ void getSessionCreationTime$annotations() {
    }

    public static /* synthetic */ void getSessionDepthCounter$annotations() {
    }

    public static /* synthetic */ void getSessionDuration$annotations() {
    }

    public static /* synthetic */ void getSessionId$annotations() {
    }

    public static /* synthetic */ void getSignaledAd$annotations() {
    }

    public static /* synthetic */ void getUnclosedAd$annotations() {
    }
}
