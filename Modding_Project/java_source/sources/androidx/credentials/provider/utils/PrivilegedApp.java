package androidx.credentials.provider.utils;

import android.os.Build;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: PrivilegedApp.kt */
@Metadata
/* loaded from: classes.dex */
public final class PrivilegedApp {
    @NotNull
    private static final String ANDROID_TYPE_KEY = "android";
    @NotNull
    private static final String APPS_KEY = "apps";
    @NotNull
    private static final String APP_INFO_KEY = "info";
    @NotNull
    private static final String BUILD_KEY = "build";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String FINGERPRINT_KEY = "cert_fingerprint_sha256";
    @NotNull
    private static final String PACKAGE_NAME_KEY = "package_name";
    @NotNull
    private static final String SIGNATURES_KEY = "signatures";
    @NotNull
    private static final String TYPE_KEY = "type";
    @NotNull
    private static final String USER_BUILD_TYPE = "userdebug";
    @NotNull
    private static final String USER_DEBUG_KEY = "userdebug";
    @NotNull
    private final Set<String> fingerprints;
    @NotNull
    private final String packageName;

    /* compiled from: PrivilegedApp.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PrivilegedApp createFromJSONObject(@NotNull JSONObject appInfoJsonObject, boolean z10) {
            Intrinsics.checkNotNullParameter(appInfoJsonObject, "appInfoJsonObject");
            JSONArray jSONArray = appInfoJsonObject.getJSONArray(PrivilegedApp.SIGNATURES_KEY);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                if (!z10 || !Intrinsics.areEqual("userdebug", jSONArray.getJSONObject(i10).optString(PrivilegedApp.BUILD_KEY)) || Intrinsics.areEqual("userdebug", Build.TYPE)) {
                    String string = jSONArray.getJSONObject(i10).getString(PrivilegedApp.FINGERPRINT_KEY);
                    Intrinsics.checkNotNullExpressionValue(string, "signaturesJson.getJSONOb…etString(FINGERPRINT_KEY)");
                    linkedHashSet.add(string);
                }
            }
            String string2 = appInfoJsonObject.getString("package_name");
            Intrinsics.checkNotNullExpressionValue(string2, "appInfoJsonObject.getString(PACKAGE_NAME_KEY)");
            return new PrivilegedApp(string2, linkedHashSet);
        }

        @NotNull
        public final List<PrivilegedApp> extractPrivilegedApps$credentials_release(@NotNull JSONObject jsonObject) {
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jsonObject.getJSONArray(PrivilegedApp.APPS_KEY);
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                if (Intrinsics.areEqual(jSONObject.getString("type"), "android")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(PrivilegedApp.APP_INFO_KEY);
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "appJsonObject.getJSONObject(APP_INFO_KEY)");
                    arrayList.add(createFromJSONObject(jSONObject2, true));
                }
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public PrivilegedApp(@NotNull String packageName, @NotNull Set<String> fingerprints) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(fingerprints, "fingerprints");
        this.packageName = packageName;
        this.fingerprints = fingerprints;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PrivilegedApp copy$default(PrivilegedApp privilegedApp, String str, Set set, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = privilegedApp.packageName;
        }
        if ((i10 & 2) != 0) {
            set = privilegedApp.fingerprints;
        }
        return privilegedApp.copy(str, set);
    }

    @NotNull
    public static final PrivilegedApp createFromJSONObject(@NotNull JSONObject jSONObject, boolean z10) {
        return Companion.createFromJSONObject(jSONObject, z10);
    }

    @NotNull
    public final String component1() {
        return this.packageName;
    }

    @NotNull
    public final Set<String> component2() {
        return this.fingerprints;
    }

    @NotNull
    public final PrivilegedApp copy(@NotNull String packageName, @NotNull Set<String> fingerprints) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(fingerprints, "fingerprints");
        return new PrivilegedApp(packageName, fingerprints);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivilegedApp)) {
            return false;
        }
        PrivilegedApp privilegedApp = (PrivilegedApp) obj;
        if (Intrinsics.areEqual(this.packageName, privilegedApp.packageName) && Intrinsics.areEqual(this.fingerprints, privilegedApp.fingerprints)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Set<String> getFingerprints() {
        return this.fingerprints;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    public int hashCode() {
        return (this.packageName.hashCode() * 31) + this.fingerprints.hashCode();
    }

    @NotNull
    public String toString() {
        return "PrivilegedApp(packageName=" + this.packageName + ", fingerprints=" + this.fingerprints + ')';
    }
}
