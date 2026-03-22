package j9;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import com.google.firebase.sessions.DataCollectionState;
import com.google.firebase.sessions.EventType;
import com.google.firebase.sessions.LogEnvironment;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SessionEvents.kt */
@Metadata
/* loaded from: classes5.dex */
public final class c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c0 f60289a = new c0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final p8.a f60290b;

    static {
        p8.a i10 = new r8.d().j(c.f60253a).k(true).i();
        Intrinsics.checkNotNullExpressionValue(i10, "build(...)");
        f60290b = i10;
    }

    private c0() {
    }

    private final DataCollectionState d(SessionSubscriber sessionSubscriber) {
        if (sessionSubscriber == null) {
            return DataCollectionState.COLLECTION_SDK_NOT_INSTALLED;
        }
        if (sessionSubscriber.a()) {
            return DataCollectionState.COLLECTION_ENABLED;
        }
        return DataCollectionState.COLLECTION_DISABLED;
    }

    @NotNull
    public final b0 a(@NotNull com.google.firebase.f firebaseApp, @NotNull com.google.firebase.sessions.j sessionDetails, @NotNull SessionsSettings sessionsSettings, @NotNull Map<SessionSubscriber.Name, ? extends SessionSubscriber> subscribers, @NotNull String firebaseInstallationId, @NotNull String firebaseAuthenticationToken) {
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        Intrinsics.checkNotNullParameter(sessionsSettings, "sessionsSettings");
        Intrinsics.checkNotNullParameter(subscribers, "subscribers");
        Intrinsics.checkNotNullParameter(firebaseInstallationId, "firebaseInstallationId");
        Intrinsics.checkNotNullParameter(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        return new b0(EventType.SESSION_START, new h0(sessionDetails.b(), sessionDetails.a(), sessionDetails.c(), sessionDetails.d(), new d(d(subscribers.get(SessionSubscriber.Name.PERFORMANCE)), d(subscribers.get(SessionSubscriber.Name.CRASHLYTICS)), sessionsSettings.a()), firebaseInstallationId, firebaseAuthenticationToken), b(firebaseApp));
    }

    @NotNull
    public final b b(@NotNull com.google.firebase.f firebaseApp) {
        String valueOf;
        String str;
        long longVersionCode;
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Context l10 = firebaseApp.l();
        Intrinsics.checkNotNullExpressionValue(l10, "getApplicationContext(...)");
        String packageName = l10.getPackageName();
        PackageInfo packageInfo = l10.getPackageManager().getPackageInfo(packageName, 0);
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            valueOf = String.valueOf(longVersionCode);
        } else {
            valueOf = String.valueOf(packageInfo.versionCode);
        }
        String str2 = valueOf;
        String c10 = firebaseApp.p().c();
        Intrinsics.checkNotNullExpressionValue(c10, "getApplicationId(...)");
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        LogEnvironment logEnvironment = LogEnvironment.LOG_ENVIRONMENT_PROD;
        Intrinsics.checkNotNull(packageName);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str = str2;
        } else {
            str = str3;
        }
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        z zVar = z.f60351a;
        Context l11 = firebaseApp.l();
        Intrinsics.checkNotNullExpressionValue(l11, "getApplicationContext(...)");
        y b10 = zVar.b(l11);
        Context l12 = firebaseApp.l();
        Intrinsics.checkNotNullExpressionValue(l12, "getApplicationContext(...)");
        return new b(c10, MODEL, "3.0.3", RELEASE, logEnvironment, new a(packageName, str, str2, MANUFACTURER, b10, zVar.a(l12)));
    }

    @NotNull
    public final p8.a c() {
        return f60290b;
    }
}
