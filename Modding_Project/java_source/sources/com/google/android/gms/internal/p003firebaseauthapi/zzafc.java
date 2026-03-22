package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.LibraryVersion;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafc  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzafc {
    private final int zza;

    private zzafc(String str) {
        this.zza = zza(str);
    }

    private static int zza(String str) {
        try {
            List<String> zza = zzt.zza("[.-]").zza((CharSequence) str);
            if (zza.size() == 1) {
                return Integer.parseInt(str);
            }
            if (zza.size() >= 3) {
                return (Integer.parseInt(zza.get(0)) * TTVideoEngineInterface.PLAYER_TIME_BASE) + (Integer.parseInt(zza.get(1)) * 1000) + Integer.parseInt(zza.get(2));
            }
            return -1;
        } catch (IllegalArgumentException e10) {
            if (Log.isLoggable("LibraryVersionContainer", 3)) {
                Log.d("LibraryVersionContainer", String.format("Version code parsing failed for: %s with exception %s.", str, e10));
                return -1;
            }
            return -1;
        }
    }

    public final String zzb() {
        return String.format("X%s", Integer.toString(this.zza));
    }

    public static zzafc zza() {
        String version = LibraryVersion.getInstance().getVersion("firebase-auth");
        return new zzafc((TextUtils.isEmpty(version) || version.equals(GrsBaseInfo.CountryCodeSource.UNKNOWN)) ? "-1" : "-1");
    }
}
