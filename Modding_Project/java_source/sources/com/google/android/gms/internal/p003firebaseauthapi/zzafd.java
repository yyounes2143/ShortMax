package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Locale;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafd  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzafd {
    public static String zza() {
        Locale locale = Locale.getDefault();
        StringBuilder sb2 = new StringBuilder();
        zza(sb2, locale);
        Locale locale2 = Locale.US;
        if (!locale.equals(locale2)) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            zza(sb2, locale2);
        }
        return sb2.toString();
    }

    private static void zza(StringBuilder sb2, Locale locale) {
        String language = locale.getLanguage();
        if (language != null) {
            sb2.append(language);
            String country = locale.getCountry();
            if (country != null) {
                sb2.append("-");
                sb2.append(country);
            }
        }
    }
}
