package androidx.credentials.provider;

import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.credentials.provider.utils.RequestValidationUtil;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CallingAppInfo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"})
/* loaded from: classes.dex */
public final class CallingAppInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "CallingAppInfo";
    @Nullable
    private final String origin;
    @NotNull
    private final String packageName;
    @NotNull
    private final SigningInfo signingInfo;

    /* compiled from: CallingAppInfo.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CallingAppInfo.kt */
    @RequiresApi(28)
    @Metadata
    /* loaded from: classes.dex */
    public static final class SignatureVerifierApi28 {
        @NotNull
        private final SigningInfo signingInfo;

        public SignatureVerifierApi28(@NotNull SigningInfo signingInfo) {
            Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
            this.signingInfo = signingInfo;
        }

        private final Set<String> convertToFingerprints(Signature[] signatureArr) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Signature signature : signatureArr) {
                byte[] digest = MessageDigest.getInstance("SHA-256").digest(signature.toByteArray());
                Intrinsics.checkNotNullExpressionValue(digest, "digest");
                linkedHashSet.add(kotlin.collections.n.P0(digest, ":", null, null, 0, null, new Function1<Byte, CharSequence>() { // from class: androidx.credentials.provider.CallingAppInfo$SignatureVerifierApi28$convertToFingerprints$1
                    @NotNull
                    public final CharSequence invoke(byte b10) {
                        String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
                        return format;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ CharSequence invoke(Byte b10) {
                        return invoke(b10.byteValue());
                    }
                }, 30, null));
            }
            return linkedHashSet;
        }

        private final Set<String> getSignatureFingerprints() {
            boolean hasMultipleSigners;
            Signature[] signingCertificateHistory;
            Signature[] signingCertificateHistory2;
            Signature[] apkContentsSigners;
            Signature[] apkContentsSigners2;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            hasMultipleSigners = this.signingInfo.hasMultipleSigners();
            if (hasMultipleSigners) {
                apkContentsSigners = this.signingInfo.getApkContentsSigners();
                if (apkContentsSigners != null) {
                    apkContentsSigners2 = this.signingInfo.getApkContentsSigners();
                    Intrinsics.checkNotNullExpressionValue(apkContentsSigners2, "signingInfo.apkContentsSigners");
                    linkedHashSet.addAll(convertToFingerprints(apkContentsSigners2));
                    return linkedHashSet;
                }
            }
            signingCertificateHistory = this.signingInfo.getSigningCertificateHistory();
            if (signingCertificateHistory != null) {
                signingCertificateHistory2 = this.signingInfo.getSigningCertificateHistory();
                Signature signature = signingCertificateHistory2[0];
                Intrinsics.checkNotNullExpressionValue(signature, "signingInfo.signingCertificateHistory[0]");
                linkedHashSet.addAll(convertToFingerprints(new Signature[]{signature}));
            }
            return linkedHashSet;
        }

        public final boolean verifySignatureFingerprints(@NotNull Set<String> candidateSigFingerprints) {
            boolean hasMultipleSigners;
            Intrinsics.checkNotNullParameter(candidateSigFingerprints, "candidateSigFingerprints");
            Set<String> signatureFingerprints = getSignatureFingerprints();
            hasMultipleSigners = this.signingInfo.hasMultipleSigners();
            if (hasMultipleSigners) {
                return candidateSigFingerprints.containsAll(signatureFingerprints);
            }
            if (!CollectionsKt.w0(candidateSigFingerprints, signatureFingerprints).isEmpty()) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CallingAppInfo(@NotNull String packageName, @NotNull SigningInfo signingInfo) {
        this(packageName, signingInfo, null, 4, null);
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
    }

    private final boolean isAppPrivileged(List<PrivilegedApp> list) {
        for (PrivilegedApp privilegedApp : list) {
            if (Intrinsics.areEqual(privilegedApp.getPackageName(), this.packageName)) {
                return isAppPrivileged(privilegedApp.getFingerprints());
            }
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public final String getOrigin() {
        return this.origin;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final SigningInfo getSigningInfo() {
        return this.signingInfo;
    }

    public final boolean isOriginPopulated() {
        if (this.origin != null) {
            return true;
        }
        return false;
    }

    public CallingAppInfo(@NotNull String packageName, @NotNull SigningInfo signingInfo, @Nullable String str) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
        this.packageName = packageName;
        this.signingInfo = signingInfo;
        this.origin = str;
        if (packageName.length() <= 0) {
            throw new IllegalArgumentException("packageName must not be empty");
        }
    }

    @Nullable
    public final String getOrigin(@NotNull String privilegedAllowlist) {
        Intrinsics.checkNotNullParameter(privilegedAllowlist, "privilegedAllowlist");
        if (RequestValidationUtil.Companion.isValidJSON(privilegedAllowlist)) {
            String str = this.origin;
            if (str == null) {
                return str;
            }
            try {
                if (isAppPrivileged(PrivilegedApp.Companion.extractPrivilegedApps$credentials_release(new JSONObject(privilegedAllowlist)))) {
                    return this.origin;
                }
                throw new IllegalStateException("Origin is not being returned as the calling app did notmatch the privileged allowlist");
            } catch (JSONException unused) {
                throw new IllegalArgumentException("privilegedAllowlist must be formatted properly");
            }
        }
        throw new IllegalArgumentException("privilegedAllowlist must not be empty, and must be a valid JSON");
    }

    private final boolean isAppPrivileged(Set<String> set) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new SignatureVerifierApi28(this.signingInfo).verifySignatureFingerprints(set);
        }
        return false;
    }

    public /* synthetic */ CallingAppInfo(String str, SigningInfo signingInfo, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, signingInfo, (i10 & 4) != 0 ? null : str2);
    }
}
