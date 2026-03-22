package io.bidmachine;

import android.content.Context;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import yq.r;
/* compiled from: Debugger.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Debugger {
    @NotNull
    private static final String DIR_NAME = "features";
    @NotNull
    private static final String FILE_NAME = "DebugParameters.json";
    @NotNull
    private static final String PARAMETER_CONSENT = "consent";
    @NotNull
    private static final String PARAMETER_COPPA = "coppa";
    @NotNull
    private static final String PARAMETER_ENDPOINT = "endpoint";
    @NotNull
    private static final String PARAMETER_GDPR_STRING = "GDPRString";
    @NotNull
    private static final String PARAMETER_LOGGING_ENABLED = "loggingEnabled";
    @NotNull
    private static final String PARAMETER_SUBJECT_TO_GDPR = "subjectToGDPR";
    @NotNull
    private static final String PARAMETER_TEST_MODE = "testMode";
    @NotNull
    private static final String PARAMETER_US_PRIVACY_STRING = "usPrivacyString";
    @NotNull
    private static final String TAG = "Debugger";
    @NotNull
    public static final Debugger INSTANCE = new Debugger();
    @NotNull
    private static final AtomicBoolean LOGGING_LOCK = new AtomicBoolean(false);
    @NotNull
    private static final AtomicBoolean TEST_MODE_LOCK = new AtomicBoolean(false);

    private Debugger() {
    }

    private final void applyAndLockIfExists(AtomicBoolean atomicBoolean, JSONObject jSONObject, String str, Function1<? super Boolean, Unit> function1) {
        if (jSONObject.has(str)) {
            function1.invoke(Boolean.valueOf(jSONObject.optBoolean(str)));
            atomicBoolean.set(true);
        }
    }

    public static final boolean isLoggingLock() {
        return LOGGING_LOCK.get();
    }

    public static final boolean isTestModeLock() {
        return TEST_MODE_LOCK.get();
    }

    public static final void setup(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            File f10 = ar.b.f(context);
            if (f10 == null) {
                return;
            }
            File file = new File(f10, "features/DebugParameters.json");
            if (!file.exists()) {
                return;
            }
            Log.d(TAG, "Debug file found");
            INSTANCE.setupFromJson$bidmachine_android_sdk_bh_3_4_0(ar.b.h(file));
        } catch (Throwable th2) {
            Log.w(TAG, th2);
        }
    }

    @VisibleForTesting
    public final void setupFromJson$bidmachine_android_sdk_bh_3_4_0(@Nullable String str) {
        String str2;
        if (str != null && !StringsKt.t0(str)) {
            JSONObject jSONObject = new JSONObject(str);
            AtomicBoolean atomicBoolean = LOGGING_LOCK;
            if (jSONObject.has(PARAMETER_LOGGING_ENABLED)) {
                BidMachine.setLoggingEnabled(jSONObject.optBoolean(PARAMETER_LOGGING_ENABLED));
                atomicBoolean.set(true);
            }
            AtomicBoolean atomicBoolean2 = TEST_MODE_LOCK;
            if (jSONObject.has(PARAMETER_TEST_MODE)) {
                BidMachine.setTestMode(jSONObject.optBoolean(PARAMETER_TEST_MODE));
                atomicBoolean2.set(true);
            }
            if (jSONObject.has(PARAMETER_ENDPOINT)) {
                String optString = jSONObject.optString(PARAMETER_ENDPOINT);
                Intrinsics.checkNotNullExpressionValue(optString, "jsonObject.optString(PARAMETER_ENDPOINT)");
                String obj = StringsKt.v1(optString).toString();
                if (obj.length() > 0 && r.p(obj)) {
                    BidMachine.setEndpoint(obj);
                }
            }
            if (jSONObject.has("coppa")) {
                BidMachine.setCoppa(Boolean.valueOf(jSONObject.optBoolean("coppa")));
            }
            if (jSONObject.has(PARAMETER_US_PRIVACY_STRING)) {
                BidMachine.setUSPrivacyString(jSONObject.optString(PARAMETER_US_PRIVACY_STRING));
            }
            if (jSONObject.has(PARAMETER_SUBJECT_TO_GDPR)) {
                BidMachine.setSubjectToGDPR(Boolean.valueOf(jSONObject.optBoolean(PARAMETER_SUBJECT_TO_GDPR)));
            }
            if (jSONObject.has(PARAMETER_CONSENT)) {
                boolean optBoolean = jSONObject.optBoolean(PARAMETER_CONSENT);
                if (jSONObject.has(PARAMETER_GDPR_STRING)) {
                    str2 = jSONObject.optString(PARAMETER_GDPR_STRING);
                } else {
                    str2 = null;
                }
                BidMachine.setConsentConfig(optBoolean, str2);
            }
        }
    }

    public static /* synthetic */ void isLoggingLock$annotations() {
    }

    public static /* synthetic */ void isTestModeLock$annotations() {
    }
}
