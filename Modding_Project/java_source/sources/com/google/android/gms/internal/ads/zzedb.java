package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzedb implements zzedc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzedh zzc(String str, String str2, String str3, zzedd zzeddVar, String str4, WebView webView, String str5, String str6, zzede zzedeVar) {
        zzfly zza = zzfly.zza("Google", str2);
        zzflx zzp = zzp("javascript");
        zzflq zzn = zzn(zzeddVar.toString());
        zzflx zzflxVar = zzflx.NONE;
        if (zzp == zzflxVar) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Unable to parse impression owner: javascript");
            return null;
        } else if (zzn == null) {
            String valueOf = String.valueOf(zzeddVar);
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Unable to parse creative type: ".concat(valueOf));
            return null;
        } else {
            zzflx zzp2 = zzp(str4);
            if (zzn == zzflq.VIDEO && zzp2 == zzflxVar) {
                String valueOf2 = String.valueOf(str4);
                int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid html session error; Video events owner unknown for video creative: ".concat(valueOf2));
                return null;
            }
            zzfln zzb = zzfln.zzb(zza, webView, str5, "");
            return new zzedh(zzfll.zza(zzflm.zza(zzn, zzo(zzedeVar.toString()), zzp, zzp2, true), zzb), zzb);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzedh zzd(String str, String str2, String str3, String str4, zzedd zzeddVar, WebView webView, String str5, String str6, zzede zzedeVar) {
        zzfly zza = zzfly.zza(str, str2);
        zzflx zzp = zzp("javascript");
        zzflx zzp2 = zzp(str4);
        zzflq zzn = zzn(zzeddVar.toString());
        zzflx zzflxVar = zzflx.NONE;
        if (zzp == zzflxVar) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        } else if (zzn == null) {
            String valueOf = String.valueOf(zzeddVar);
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Unable to parse creative type: ".concat(valueOf));
            return null;
        } else if (zzn == zzflq.VIDEO && zzp2 == zzflxVar) {
            String valueOf2 = String.valueOf(str4);
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid js session error; Video events owner unknown for video creative: ".concat(valueOf2));
            return null;
        } else {
            zzfln zzc = zzfln.zzc(zza, webView, str5, "");
            return new zzedh(zzfll.zza(zzflm.zza(zzn, zzo(zzedeVar.toString()), zzp, zzp2, true), zzc), zzc);
        }
    }

    @Nullable
    private static zzflq zzn(String str) {
        char c10;
        int hashCode = str.hashCode();
        if (hashCode != -382745961) {
            if (hashCode != 112202875) {
                if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                    c10 = 1;
                }
                c10 = 65535;
            } else {
                if (str.equals("video")) {
                    c10 = 2;
                }
                c10 = 65535;
            }
        } else {
            if (str.equals("htmlDisplay")) {
                c10 = 0;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    return null;
                }
                return zzflq.VIDEO;
            }
            return zzflq.NATIVE_DISPLAY;
        }
        return zzflq.HTML_DISPLAY;
    }

    private static zzflt zzo(String str) {
        char c10;
        int hashCode = str.hashCode();
        if (hashCode != -1104128070) {
            if (hashCode != 1318088141) {
                if (hashCode == 1988248512 && str.equals("onePixel")) {
                    c10 = 2;
                }
                c10 = 65535;
            } else {
                if (str.equals("definedByJavascript")) {
                    c10 = 1;
                }
                c10 = 65535;
            }
        } else {
            if (str.equals("beginToRender")) {
                c10 = 0;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    return zzflt.UNSPECIFIED;
                }
                return zzflt.ONE_PIXEL;
            }
            return zzflt.DEFINED_BY_JAVASCRIPT;
        }
        return zzflt.BEGIN_TO_RENDER;
    }

    private static zzflx zzp(@Nullable String str) {
        if ("native".equals(str)) {
            return zzflx.NATIVE;
        }
        if ("javascript".equals(str)) {
            return zzflx.JAVASCRIPT;
        }
        return zzflx.NONE;
    }

    @Nullable
    private static final Object zzq(zzeda zzedaVar) {
        try {
            return zzedaVar.zza();
        } catch (RuntimeException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e10, "omid exception");
            return null;
        }
    }

    private static final void zzr(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e10, "omid exception");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    @Nullable
    public final zzedh zza(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final zzede zzedeVar, final zzedd zzeddVar, @Nullable final String str5) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue() && zzflj.zzb()) {
            return (zzedh) zzq(new zzeda("Google", str, "javascript", zzeddVar, str4, webView, str5, "", zzedeVar) { // from class: com.google.android.gms.internal.ads.zzecq
                public final /* synthetic */ String zzb;
                public final /* synthetic */ zzedd zzd;
                public final /* synthetic */ String zze;
                public final /* synthetic */ WebView zzf;
                public final /* synthetic */ String zzg;
                public final /* synthetic */ zzede zzi;
                public final /* synthetic */ String zza = "Google";
                public final /* synthetic */ String zzc = "javascript";
                public final /* synthetic */ String zzh = "";

                {
                    this.zzb = str;
                    this.zzd = zzeddVar;
                    this.zze = str4;
                    this.zzf = webView;
                    this.zzg = str5;
                    this.zzi = zzedeVar;
                }

                @Override // com.google.android.gms.internal.ads.zzeda
                public final Object zza() {
                    return zzedb.zzc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    @Nullable
    public final zzedh zzb(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final String str5, final zzede zzedeVar, final zzedd zzeddVar, @Nullable final String str6) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue() && zzflj.zzb()) {
            return (zzedh) zzq(new zzeda(str5, str, "javascript", str4, zzeddVar, webView, str6, "", zzedeVar) { // from class: com.google.android.gms.internal.ads.zzect
                public final /* synthetic */ String zza;
                public final /* synthetic */ String zzb;
                public final /* synthetic */ String zzd;
                public final /* synthetic */ zzedd zze;
                public final /* synthetic */ WebView zzf;
                public final /* synthetic */ String zzg;
                public final /* synthetic */ zzede zzi;
                public final /* synthetic */ String zzc = "javascript";
                public final /* synthetic */ String zzh = "";

                {
                    this.zzd = str4;
                    this.zze = zzeddVar;
                    this.zzf = webView;
                    this.zzg = str6;
                    this.zzi = zzedeVar;
                }

                @Override // com.google.android.gms.internal.ads.zzeda
                public final Object zza() {
                    return zzedb.zzd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    @Nullable
    public final zzflw zze(final VersionInfoParcel versionInfoParcel, final WebView webView, boolean z10) {
        return (zzflw) zzq(new zzeda(webView, true) { // from class: com.google.android.gms.internal.ads.zzecy
            public final /* synthetic */ WebView zzb;

            @Override // com.google.android.gms.internal.ads.zzeda
            public final Object zza() {
                VersionInfoParcel versionInfoParcel2 = VersionInfoParcel.this;
                int i10 = versionInfoParcel2.buddyApkVersion;
                int i11 = versionInfoParcel2.clientJarVersion;
                return zzflw.zzb(zzfly.zza("Google", i10 + "." + i11), this.zzb, true);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    @Nullable
    public final String zzf(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue()) {
            return null;
        }
        return (String) zzq(new zzeda() { // from class: com.google.android.gms.internal.ads.zzecw
            @Override // com.google.android.gms.internal.ads.zzeda
            public final Object zza() {
                return "a.1.5.2-google_20241009";
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzg(final zzfll zzfllVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecp
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue() && zzflj.zzb()) {
                    zzfll.this.zzb(view, zzfls.NOT_VISIBLE, "Ad overlay");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzh(final zzflw zzflwVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecv
            @Override // java.lang.Runnable
            public final void run() {
                zzflw.this.zzf(view, zzfls.NOT_VISIBLE, "Ad overlay");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzi(final zzfll zzfllVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecz
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue() && zzflj.zzb()) {
                    zzfll.this.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzj(final zzfll zzfllVar, final View view) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecr
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue() && zzflj.zzb()) {
                    zzfll.this.zzd(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzk(final zzfll zzfllVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue() && zzflj.zzb()) {
            Objects.requireNonNull(zzfllVar);
            zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecs
                @Override // java.lang.Runnable
                public final void run() {
                    zzfll.this.zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final boolean zzl(final Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfz)).booleanValue()) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid flag is disabled");
            return false;
        }
        Boolean bool = (Boolean) zzq(new zzeda() { // from class: com.google.android.gms.internal.ads.zzecu
            @Override // com.google.android.gms.internal.ads.zzeda
            public final Object zza() {
                if (zzflj.zzb()) {
                    return Boolean.TRUE;
                }
                zzflj.zza(context);
                return Boolean.valueOf(zzflj.zzb());
            }
        });
        if (bool == null || !bool.booleanValue()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzm(final zzflw zzflwVar, final zzcfx zzcfxVar) {
        zzr(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecx
            @Override // java.lang.Runnable
            public final void run() {
                zzflw.this.zzg(zzcfxVar);
            }
        });
    }
}
