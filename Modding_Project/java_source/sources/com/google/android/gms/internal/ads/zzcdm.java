package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.HashMap;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdm implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzcdn zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdm(zzcdn zzcdnVar, String str, String str2, String str3, String str4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        Objects.requireNonNull(zzcdnVar);
        this.zze = zzcdnVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        char c10;
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "precacheCanceled");
        hashMap.put("src", this.zza);
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("cachedSrc", str);
        }
        String str2 = this.zzc;
        switch (str2.hashCode()) {
            case -1947652542:
                if (str2.equals("interrupted")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1396664534:
                if (str2.equals("badUrl")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -1347010958:
                if (str2.equals("inProgress")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -918817863:
                if (str2.equals("downloadTimeout")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case -659376217:
                if (str2.equals("contentLengthMissing")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -642208130:
                if (str2.equals("playerFailed")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -354048396:
                if (str2.equals("sizeExceeded")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case -32082395:
                if (str2.equals("externalAbort")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 3387234:
                if (str2.equals("noop")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 96784904:
                if (str2.equals("error")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 580119100:
                if (str2.equals("expireFailed")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 725497484:
                if (str2.equals("noCacheDir")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        String str3 = IVideoEventLogger.SET_SURFACE_TYPE_INTERNAL;
        switch (c10) {
            case 6:
            case 7:
                str3 = "io";
                break;
            case '\b':
            case '\t':
                str3 = "network";
                break;
            case '\n':
            case 11:
                str3 = "policy";
                break;
        }
        hashMap.put("type", str3);
        hashMap.put("reason", str2);
        String str4 = this.zzd;
        if (!TextUtils.isEmpty(str4)) {
            hashMap.put("message", str4);
        }
        zzcdn.zze(this.zze, "onPrecacheEvent", hashMap);
    }
}
