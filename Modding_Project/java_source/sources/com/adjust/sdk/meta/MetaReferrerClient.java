package com.adjust.sdk.meta;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class MetaReferrerClient {
    private static final String COLUMN_ACTUAL_TIMESTAMP = "actual_timestamp";
    private static final String COLUMN_INSTALL_REFERRER = "install_referrer";
    private static final String COLUMN_IS_CT = "is_ct";
    private static final String FACEBOOK_REFERRER_PROVIDER_AUTHORITY = "com.facebook.katana.provider.InstallReferrerProvider";
    private static final String FBLITE_REFERRER_PROVIDER_AUTHORITY = "com.facebook.lite.provider.InstallReferrerProvider";
    private static final String INSTAGRAM_REFERRER_PROVIDER_AUTHORITY = "com.instagram.contentprovider.InstallReferrerProvider";
    private static final AtomicBoolean shouldTryToRead = new AtomicBoolean(true);

    /* JADX WARN: Code restructure failed: missing block: B:50:0x013e, code lost:
        if (0 == 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.adjust.sdk.meta.MetaInstallReferrerResult getMetaInstallReferrer(android.content.Context r11, java.lang.String r12, com.adjust.sdk.ILogger r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.meta.MetaReferrerClient.getMetaInstallReferrer(android.content.Context, java.lang.String, com.adjust.sdk.ILogger, boolean):com.adjust.sdk.meta.MetaInstallReferrerResult");
    }

    private static boolean isValidReferrer(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return true;
    }

    private static boolean resolveContentProvider(Context context, String str) {
        try {
            if (context.getPackageManager().resolveContentProvider(str, 0) == null) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
