package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbun;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzu implements zze {
    private final Context zza;
    @Nullable
    private final String zzb;
    @Nullable
    private String zzc;

    public zzu(Context context, @Nullable String str) {
        this.zza = context;
        this.zzb = str;
    }

    private final URL zzc(String str) throws MalformedURLException {
        URL url = null;
        try {
            url = new URI(str).toURL();
        } catch (IllegalArgumentException e10) {
            e = e10;
            zze(str, e);
        } catch (MalformedURLException e11) {
            e = e11;
            zze(str, e);
        } catch (URISyntaxException e12) {
            zze(str, e12);
            if (((Boolean) zzbd.zzc().zzb(zzbde.zze)).booleanValue()) {
                url = zzd(str);
            }
        }
        if (url == null) {
            zzo.zze("Falling back to direct new URL(\"" + str + "\") constructor.");
            return new URL(str);
        }
        return url;
    }

    @Nullable
    private final URL zzd(String str) {
        URL url;
        try {
            zzo.zze("Attempting to parse components, encode, and reconstruct URI.");
            URL url2 = new URL(str);
            URI uri = new URI(url2.getProtocol(), url2.getUserInfo(), url2.getHost(), url2.getPort(), url2.getPath(), url2.getQuery(), url2.getRef());
            url = uri.toURL();
            try {
                String obj = uri.toString();
                zzo.zze("Successfully constructed URL after component encoding via new URI(parts).toURL() for original: \"" + str + "\" -> encoded URI: " + obj);
            } catch (IllegalArgumentException e10) {
                e = e10;
                zze(str, e);
                return url;
            } catch (MalformedURLException e11) {
                e = e11;
                zze(str, e);
                return url;
            } catch (URISyntaxException e12) {
                e = e12;
                zze(str, e);
                return url;
            }
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException e13) {
            e = e13;
            url = null;
        }
        return url;
    }

    private final void zze(String str, Throwable th2) {
        String message = th2.getMessage();
        zzo.zzj("Error while parsing ping URL: " + str + ". " + message);
        zzbun.zza(this.zza).zzi(th2, "HttpUrlPinger.pingUrl", ((float) ((Integer) zzbd.zzc().zzb(zzbde.zznf)).intValue()) / 100.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e7, code lost:
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f1, code lost:
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f3, code lost:
        android.net.TrafficStats.clearThreadStatsTag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f6, code lost:
        return r0;
     */
    @Override // com.google.android.gms.ads.internal.util.client.zze
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.ads.internal.util.client.zzt zza(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.client.zzu.zza(java.lang.String):com.google.android.gms.ads.internal.util.client.zzt");
    }

    @Nullable
    public final String zzb() {
        return this.zzc;
    }
}
