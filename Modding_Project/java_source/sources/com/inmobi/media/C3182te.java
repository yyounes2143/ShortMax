package com.inmobi.media;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.inmobi.media.C3182te;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.te  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3182te {

    /* renamed from: a  reason: collision with root package name */
    public static final C3182te f25312a = new C3182te();

    /* renamed from: b  reason: collision with root package name */
    public static V0 f25313b;

    public static void e() {
        boolean z10;
        boolean booleanValue;
        V0 v02;
        try {
            Context d10 = Uc.d();
            if (d10 != null) {
                V0 v03 = new V0();
                try {
                    Reflection.getOrCreateKotlinClass(AdvertisingIdClient.class).getSimpleName();
                    try {
                        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(d10);
                        Intrinsics.checkNotNullExpressionValue(advertisingIdInfo, "getAdvertisingIdInfo(...)");
                        v03.a(advertisingIdInfo.getId());
                        v03.a(advertisingIdInfo.isLimitAdTrackingEnabled());
                        f25313b = v03;
                        Boolean bool = AbstractC2872ab.f24492b;
                        if (bool != null) {
                            booleanValue = bool.booleanValue();
                        } else {
                            Context d11 = Uc.d();
                            z10 = false;
                            if (d11 != null) {
                                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                                C6 a10 = B6.a(d11, "user_info_store");
                                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                                AbstractC2872ab.f24492b = Boolean.valueOf(a10.f23530a.getBoolean("user_age_restricted", false));
                            }
                            Boolean bool2 = AbstractC2872ab.f24492b;
                            if (bool2 != null) {
                                booleanValue = bool2.booleanValue();
                            }
                            if (z10 && (v02 = f25313b) != null) {
                                v02.a((String) null);
                            }
                            return;
                        }
                        z10 = booleanValue;
                        if (z10) {
                            v02.a((String) null);
                        }
                    } catch (Exception unused) {
                        Intrinsics.checkNotNullExpressionValue("te", "TAG");
                    }
                } catch (NoClassDefFoundError unused2) {
                }
            }
        } catch (Exception unused3) {
            Intrinsics.checkNotNullExpressionValue("te", "TAG");
        }
    }

    public static final void f() {
        e();
    }

    @WorkerThread
    public final void a() {
        try {
            e();
            d();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("te", "TAG");
        }
    }

    @Nullable
    public final V0 b() {
        return f25313b;
    }

    @Nullable
    public final Boolean c() {
        V0 v02 = f25313b;
        if (v02 != null) {
            return v02.c();
        }
        return null;
    }

    public final void d() {
        String a10;
        try {
            V0 v02 = f25313b;
            if (v02 != null && (a10 = v02.a()) != null) {
                Intrinsics.checkNotNullExpressionValue("te", "TAG");
                AbstractC2984h7.a((byte) 2, "te", "Publisher device Id is ".concat(a10));
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("te", "TAG");
        }
    }

    public final void a(boolean z10) {
        V0 v02 = f25313b;
        if (v02 == null) {
            return;
        }
        if (z10) {
            v02.a((String) null);
        } else if (v02.a() == null) {
            Uc.a(new Runnable() { // from class: ub.r6
                @Override // java.lang.Runnable
                public final void run() {
                    C3182te.f();
                }
            });
        }
    }
}
