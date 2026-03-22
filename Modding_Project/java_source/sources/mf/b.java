package mf;

import com.ss.mediakit.net.AVMDLDNSParser;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.startshorts.androidplayer.bean.configure.FeatureController;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpDNSManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f62506a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f62507b;

    private b() {
    }

    private final void e(String str) {
        try {
            if (f62507b) {
                Logger.f41511a.h("HttpDnsManager", "turnOnInternal failed -> mIsHttpDNSOn is true");
                return;
            }
            f62507b = true;
            TTVideoEngine.setIntValue(90, 4);
            TTVideoEngine.setIntValue(91, 0);
            qe.a aVar = qe.a.f65321a;
            TTVideoEngine.setIntValue(92, aVar.value().getHttpDNSTimeOut());
            AVMDLDNSParser.setCustomHttpDNSParser(new c());
            DataLoaderHelper.getDataLoader().clearNetinfoCache();
            Logger logger = Logger.f41511a;
            logger.h("HttpDnsManager", "turnOnInternal -> scene(" + str + "),httpDNSEnable(" + aVar.value().getHttpDNSPlayerEnable() + "),httpDNSErrorCodes(" + aVar.value().getHttpDNSErrorCodes() + "),httpDNSTimeOut(" + aVar.value().getHttpDNSTimeOut() + ")httpDNSCountryCodes(" + aVar.value().getHttpDNSCountryCodes() + ")countryCode(" + AccountRepo.f43052a.i0() + ')');
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("HttpDnsManager", "turnOnInternal exception -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String g(FeatureController value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.getHttpDNSCountryCodes();
    }

    public final void b() {
        TTVideoEngine.setIntValue(7, 1);
        TTVideoEngine.setIntValue(90, 0);
        TTVideoEngine.setIntValue(8, 1);
        f();
    }

    public final boolean c(@Nullable String str) {
        qe.a aVar = qe.a.f65321a;
        if (!aVar.value().getHttpDNSPlayerEnable()) {
            Logger.f41511a.h("HttpDnsManager", "shouldRetryWithHttpDns -> false,httpDNSEnable is false");
            return false;
        } else if (str != null && !StringsKt.t0(str)) {
            List<String> r10 = v.r(aVar.value().getHttpDNSErrorCodes());
            if (!r10.contains(str)) {
                Logger logger = Logger.f41511a;
                logger.h("HttpDnsManager", "shouldRetryWithHttpDns -> false,errorCode not in httpDNSErrorCodes, errorCode(" + str + "),errorCodes(" + r10 + ')');
                return false;
            }
            return true;
        } else {
            Logger logger2 = Logger.f41511a;
            logger2.e("HttpDnsManager", "shouldRetryWithHttpDns -> false,errorCode isNullOrBlank, errorCode(" + str + ')');
            return false;
        }
    }

    public final void d(@NotNull String errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        try {
            if (!c(errorCode)) {
                return;
            }
            e("errorCode=" + errorCode);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("HttpDnsManager", "turnOn exception -> " + e10.getMessage());
        }
    }

    public final void f() {
        qe.a aVar = qe.a.f65321a;
        if (aVar.value().getHttpDNSPlayerEnable()) {
            if (aVar.f(new Function1() { // from class: mf.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    String g10;
                    g10 = b.g((FeatureController) obj);
                    return g10;
                }
            })) {
                e("switch");
            }
        } else if (f62507b) {
            Logger.f41511a.h("HttpDnsManager", "turnOff");
            TTVideoEngine.setIntValue(90, 0);
            TTVideoEngine.setIntValue(91, 0);
            DataLoaderHelper.getDataLoader().clearNetinfoCache();
            f62507b = false;
        }
    }
}
