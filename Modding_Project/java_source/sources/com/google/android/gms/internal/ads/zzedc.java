package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzedc {
    @Nullable
    zzedh zza(String str, WebView webView, String str2, String str3, @Nullable String str4, zzede zzedeVar, zzedd zzeddVar, @Nullable String str5);

    @Nullable
    zzedh zzb(String str, WebView webView, String str2, String str3, @Nullable String str4, String str5, zzede zzedeVar, zzedd zzeddVar, @Nullable String str6);

    @Nullable
    zzflw zze(VersionInfoParcel versionInfoParcel, WebView webView, boolean z10);

    @Nullable
    String zzf(Context context);

    void zzg(zzfll zzfllVar, View view);

    void zzh(zzflw zzflwVar, View view);

    void zzi(zzfll zzfllVar);

    void zzj(zzfll zzfllVar, View view);

    void zzk(zzfll zzfllVar);

    boolean zzl(Context context);

    void zzm(zzflw zzflwVar, zzcfx zzcfxVar);
}
