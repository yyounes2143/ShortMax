package com.moloco.sdk.internal.services.bidtoken;

import android.os.Build;
import com.moloco.sdk.BuildConfig;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.service_locator.b;
import gt.r1;
import io.ktor.client.HttpClient;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f33139a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.bidtoken.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.a();
        }
    });

    public static final z a() {
        String str;
        String str2;
        String str3;
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "ServerBidTokenService", "Creating BidTokenService instance", null, false, 12, null);
        b.e eVar = b.e.f33636a;
        HttpClient a10 = com.moloco.sdk.internal.http.e.a(eVar.h().invoke(), eVar.l().invoke());
        l lVar = new l(2800L, 3, 200L);
        String language = Locale.getDefault().getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        String str4 = Build.MANUFACTURER;
        if (str4 == null) {
            str = "";
        } else {
            str = str4;
        }
        String str5 = Build.MODEL;
        if (str5 == null) {
            str2 = "";
        } else {
            str2 = str5;
        }
        String str6 = Build.HARDWARE;
        if (str6 == null) {
            str3 = "";
        } else {
            str3 = str6;
        }
        return new z(new c(BuildConfig.SDK_VERSION_NAME, a10, lVar, new j(language, RELEASE, str, str2, str3)), kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(com.moloco.sdk.internal.scheduling.c.a().getIo())), y.f33306a.a(new com.moloco.sdk.internal.bidtoken.c(), new com.moloco.sdk.internal.services.k()));
    }

    public static final z c() {
        return (z) f33139a.getValue();
    }
}
