package com.google.android.gms.internal.ads;

import android.net.Network;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfrr extends zzfrf {
    private zzfwh<Integer> zza;
    private zzfwh<Integer> zzb;
    @Nullable
    private zzfrq zzc;
    @Nullable
    private HttpURLConnection zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfrr(zzfwh<Integer> zzfwhVar, zzfwh<Integer> zzfwhVar2, @Nullable zzfrq zzfrqVar) {
        this.zza = zzfwhVar;
        this.zzb = zzfwhVar2;
        this.zzc = zzfrqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Integer zzf() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Integer zzg() {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ URLConnection zzp(URL url) throws IOException {
        int i10 = zzfra.zzb;
        return url.openConnection();
    }

    public static void zzs(@Nullable HttpURLConnection httpURLConnection) {
        zzfrg.zza();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zzs(this.zzd);
    }

    public HttpURLConnection zzm() throws IOException {
        zzfrg.zzb(((Integer) this.zza.zza()).intValue(), ((Integer) this.zzb.zza()).intValue());
        zzfrq zzfrqVar = this.zzc;
        zzfrqVar.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfrqVar.zza();
        this.zzd = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection zzn(zzfrq zzfrqVar, final int i10, final int i11) throws IOException {
        this.zza = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfrj
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i10);
                return valueOf;
            }
        };
        this.zzb = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfrk
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i11);
                return valueOf;
            }
        };
        this.zzc = zzfrqVar;
        return zzm();
    }

    @RequiresApi(21)
    public HttpURLConnection zzo(@NonNull final Network network, @NonNull final URL url, final int i10, final int i11) throws IOException {
        this.zza = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfrl
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i10);
                return valueOf;
            }
        };
        this.zzb = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfrm
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i11);
                return valueOf;
            }
        };
        this.zzc = new zzfrq() { // from class: com.google.android.gms.internal.ads.zzfrn
            @Override // com.google.android.gms.internal.ads.zzfrq
            public final URLConnection zza() {
                URLConnection openConnection;
                openConnection = network.openConnection(url);
                return openConnection;
            }
        };
        return zzm();
    }

    public URLConnection zzr(@NonNull final URL url, final int i10) throws IOException {
        this.zza = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfro
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i10);
                return valueOf;
            }
        };
        this.zzc = new zzfrq() { // from class: com.google.android.gms.internal.ads.zzfrp
            @Override // com.google.android.gms.internal.ads.zzfrq
            public final URLConnection zza() {
                return zzfrr.zzp(url);
            }
        };
        return zzm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfrr() {
        this(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfrh
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                return zzfrr.zzf();
            }
        }, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfri
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                return zzfrr.zzg();
            }
        }, null);
    }
}
