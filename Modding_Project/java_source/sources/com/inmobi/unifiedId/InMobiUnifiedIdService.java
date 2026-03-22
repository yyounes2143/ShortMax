package com.inmobi.unifiedId;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.AbstractC2872ab;
import com.inmobi.media.AbstractC3110p5;
import com.inmobi.media.AbstractC3246xe;
import com.inmobi.media.AbstractC3278ze;
import com.inmobi.media.B6;
import com.inmobi.media.C3182te;
import com.inmobi.media.C6;
import com.inmobi.media.L4;
import com.inmobi.media.O2;
import com.inmobi.media.Pd;
import com.inmobi.media.Q5;
import com.inmobi.media.Td;
import com.inmobi.media.Uc;
import com.inmobi.unifiedId.InMobiUnifiedIdInterface;
import com.inmobi.unifiedId.InMobiUnifiedIdService;
import com.inmobi.unifiedId.InMobiUserDataModel;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiUnifiedIdService {
    @NotNull
    public static final InMobiUnifiedIdService INSTANCE = new InMobiUnifiedIdService();

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f25522a = new AtomicBoolean();

    /* JADX WARN: Code restructure failed: missing block: B:47:0x008c, code lost:
        if (r4.length() != 0) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.unifiedId.InMobiUnifiedIdInterface r14) {
        /*
            java.lang.String r0 = "InMobiUnifiedIdService"
            java.lang.String r1 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            org.json.JSONObject r0 = com.inmobi.media.Q5.b()
            r1 = 0
            r2 = 1
            r3 = 0
            java.lang.String r4 = "ufids"
            if (r0 != 0) goto L14
            goto L75
        L14:
            boolean r5 = r0.has(r4)     // Catch: org.json.JSONException -> L75
            if (r5 == 0) goto L1f
            org.json.JSONArray r5 = r0.getJSONArray(r4)     // Catch: org.json.JSONException -> L75
            goto L20
        L1f:
            r5 = r3
        L20:
            if (r5 == 0) goto L75
            int r5 = r5.length()
            if (r5 != 0) goto L29
            goto L75
        L29:
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r4)
            boolean r5 = r0.has(r4)     // Catch: org.json.JSONException -> L58
            if (r5 == 0) goto L56
            org.json.JSONArray r5 = r0.getJSONArray(r4)     // Catch: org.json.JSONException -> L58
            int r6 = r5.length()     // Catch: org.json.JSONException -> L58
            r7 = r1
            r8 = r2
        L3c:
            if (r7 >= r6) goto L5c
            org.json.JSONObject r9 = r5.getJSONObject(r7)     // Catch: org.json.JSONException -> L59
            long r10 = java.lang.System.currentTimeMillis()     // Catch: org.json.JSONException -> L59
            java.lang.String r12 = "expiry"
            long r12 = r9.getLong(r12)     // Catch: org.json.JSONException -> L59
            int r9 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r9 > 0) goto L52
            r9 = r2
            goto L53
        L52:
            r9 = r1
        L53:
            r8 = r8 & r9
            int r7 = r7 + r2
            goto L3c
        L56:
            r8 = r2
            goto L5c
        L58:
            r8 = r2
        L59:
            java.util.Objects.toString(r0)
        L5c:
            if (r8 != 0) goto L75
            org.json.JSONObject r0 = com.inmobi.media.AbstractC3246xe.f25438a
            if (r14 == 0) goto L67
            java.util.LinkedHashSet r0 = com.inmobi.media.AbstractC3246xe.f25439b
            r0.add(r14)
        L67:
            boolean r0 = com.inmobi.media.AbstractC3246xe.b()
            if (r0 == 0) goto L71
            java.util.Objects.toString(r14)
            goto Lba
        L71:
            com.inmobi.media.AbstractC3246xe.d()
            goto Lba
        L75:
            if (r14 == 0) goto Lba
            if (r0 != 0) goto L7a
            goto L8e
        L7a:
            boolean r5 = r0.has(r4)     // Catch: org.json.JSONException -> L8e
            if (r5 == 0) goto L85
            org.json.JSONArray r4 = r0.getJSONArray(r4)     // Catch: org.json.JSONException -> L8e
            goto L86
        L85:
            r4 = r3
        L86:
            if (r4 == 0) goto L8e
            int r4 = r4.length()
            if (r4 != 0) goto L8f
        L8e:
            r1 = r2
        L8f:
            if (r1 == 0) goto Lb7
            java.util.concurrent.atomic.AtomicBoolean r0 = com.inmobi.unifiedId.InMobiUnifiedIdService.f25522a
            boolean r0 = r0.get()
            if (r0 == 0) goto Lac
            java.util.LinkedHashSet r0 = com.inmobi.media.AbstractC3246xe.f25439b
            r0.add(r14)
            boolean r0 = com.inmobi.media.AbstractC3246xe.b()
            if (r0 == 0) goto La8
            java.util.Objects.toString(r14)
            goto Lba
        La8:
            com.inmobi.media.AbstractC3246xe.d()
            goto Lba
        Lac:
            java.lang.Error r0 = new java.lang.Error
            java.lang.String r1 = "Push api needs to called prior to fetch"
            r0.<init>(r1)
            com.inmobi.media.AbstractC3278ze.a(r14, r3, r0)
            goto Lba
        Lb7:
            com.inmobi.media.AbstractC3278ze.a(r14, r0, r3)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.unifiedId.InMobiUnifiedIdService.a(com.inmobi.unifiedId.InMobiUnifiedIdInterface):void");
    }

    public static final void b(InMobiUnifiedIdInterface inMobiUnifiedIdInterface) {
        fetchUnifiedIdsInternal$media_release(inMobiUnifiedIdInterface);
    }

    public static final void fetchUnifiedIds(@Nullable final InMobiUnifiedIdInterface inMobiUnifiedIdInterface) {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        if (Uc.q()) {
            Uc.a(new Runnable() { // from class: wb.c
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiUnifiedIdService.b(InMobiUnifiedIdInterface.this);
                }
            });
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            throw new SdkNotInitializedException("InMobiUnifiedIdService");
        }
    }

    @WorkerThread
    public static final void fetchUnifiedIdsInternal$media_release(@Nullable InMobiUnifiedIdInterface inMobiUnifiedIdInterface) {
        boolean z10;
        boolean z11;
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        HashMap hashMap = new HashMap();
        Pd pd2 = Pd.f23988a;
        Pd.b("FetchApiInvoked", hashMap, Td.f24224a);
        LinkedHashMap linkedHashMap = O2.f23923a;
        boolean isEnabled = ((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig().isEnabled();
        if (!isEnabled) {
            reset();
        }
        if (!isEnabled) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            AbstractC3278ze.a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.UNIFIED_SERVICE_IS_NOT_ENABLED));
            return;
        }
        Boolean c10 = C3182te.f25312a.c();
        if (c10 != null) {
            z10 = c10.booleanValue();
        } else {
            z10 = true;
        }
        if (z10) {
            reset();
        }
        if (z10) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            AbstractC3278ze.a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.USER_HAS_OPTED_OUT));
            return;
        }
        Boolean bool = AbstractC2872ab.f24492b;
        if (bool != null) {
            z11 = bool.booleanValue();
        } else {
            Context d10 = Uc.d();
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                AbstractC2872ab.f24492b = Boolean.valueOf(a10.f23530a.getBoolean("user_age_restricted", false));
            }
            Boolean bool2 = AbstractC2872ab.f24492b;
            if (bool2 != null) {
                z11 = bool2.booleanValue();
            } else {
                z11 = false;
            }
        }
        if (z11) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            AbstractC3278ze.a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.USER_HAS_AGE_RESTRICTION));
            return;
        }
        synchronized (AbstractC3246xe.class) {
            try {
                if (AbstractC3246xe.b()) {
                    if (inMobiUnifiedIdInterface != null) {
                        AbstractC3246xe.f25439b.add(inMobiUnifiedIdInterface);
                    }
                    if (AbstractC3246xe.b()) {
                        Objects.toString(inMobiUnifiedIdInterface);
                    } else {
                        AbstractC3246xe.d();
                    }
                } else {
                    a(inMobiUnifiedIdInterface);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void push(@Nullable final InMobiUserDataModel inMobiUserDataModel) {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        Objects.toString(inMobiUserDataModel);
        if (Uc.q()) {
            Uc.a(new Runnable() { // from class: wb.b
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiUnifiedIdService.a(InMobiUserDataModel.this);
                }
            });
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            throw new SdkNotInitializedException("InMobiUnifiedIdService");
        }
    }

    public static final void reset() {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        if (Uc.q()) {
            Uc.a(new Runnable() { // from class: wb.a
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiUnifiedIdService.a();
                }
            });
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            throw new SdkNotInitializedException("InMobiUnifiedIdService");
        }
    }

    @NotNull
    public final AtomicBoolean isPushCalled() {
        return f25522a;
    }

    @VisibleForTesting(otherwise = 5)
    public static /* synthetic */ void isPushCalled$annotations() {
    }

    public static final void a(InMobiUserDataModel inMobiUserDataModel) {
        boolean booleanValue;
        InMobiUserDataModel inMobiUserDataModel2;
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        Objects.toString(inMobiUserDataModel);
        LinkedHashMap linkedHashMap = O2.f23923a;
        boolean isEnabled = ((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig().isEnabled();
        if (!isEnabled) {
            reset();
        }
        if (!isEnabled) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        Boolean c10 = C3182te.f25312a.c();
        boolean booleanValue2 = c10 != null ? c10.booleanValue() : true;
        if (booleanValue2) {
            reset();
        }
        if (booleanValue2) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        Boolean bool = AbstractC2872ab.f24492b;
        boolean z10 = false;
        if (bool != null) {
            booleanValue = bool.booleanValue();
        } else {
            Context d10 = Uc.d();
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                AbstractC2872ab.f24492b = Boolean.valueOf(a10.f23530a.getBoolean("user_age_restricted", false));
            }
            Boolean bool2 = AbstractC2872ab.f24492b;
            booleanValue = bool2 != null ? bool2.booleanValue() : false;
        }
        if (booleanValue) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        InMobiUserDataModel inMobiUserDataModel3 = L4.f23806a;
        if (inMobiUserDataModel == null && L4.f23806a == null) {
            z10 = true;
        } else if (inMobiUserDataModel != null && (inMobiUserDataModel2 = L4.f23806a) != null) {
            z10 = Intrinsics.areEqual(inMobiUserDataModel, inMobiUserDataModel2);
        }
        if (z10 && f25522a.get()) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        synchronized (L4.class) {
            Objects.toString(L4.f23806a);
            Objects.toString(inMobiUserDataModel);
            L4.f23806a = inMobiUserDataModel;
        }
        f25522a.set(true);
        AbstractC3246xe.c();
    }

    public static final void a() {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        f25522a.set(false);
        synchronized (L4.class) {
            Objects.toString(L4.f23806a);
            L4.f23806a = null;
        }
        AbstractC3246xe.e();
        Q5.b(null);
        Q5.a(null);
        Q5.f24037d = false;
        Q5.f24036c = false;
    }
}
