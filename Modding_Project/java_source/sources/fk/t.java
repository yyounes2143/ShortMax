package fk;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FirebaseUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final t f51774a = new t();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f51775b;

    private t() {
    }

    public final void a() {
        if (f51775b) {
            return;
        }
        Logger.f41511a.h("FirebaseUtil", "installAppCheck");
        f51775b = true;
        try {
            p7.e.c().e(t7.b.b());
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FirebaseUtil", "installAppCheck exception -> " + e10.getMessage());
        }
    }

    public final void b() {
        try {
            String t02 = AccountRepo.f43052a.t0();
            FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
            firebaseCrashlytics.setUserId(t02 + '-' + DeviceUtil.f48146a.C());
            FirebaseAnalytics.getInstance(u.f51776a.b()).b(t02);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FirebaseUtil", "setUserId exception -> " + e10.getMessage());
        }
    }
}
