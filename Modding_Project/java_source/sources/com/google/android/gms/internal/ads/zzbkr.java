package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbkr implements zzbkf {
    @Nullable
    private final com.google.android.gms.ads.internal.zzb zza;
    @Nullable
    private final zzdsj zzb;
    @Nullable
    private final zzbso zzd;
    @Nullable
    private final zzeca zze;
    @Nullable
    private final zzcmq zzf;
    @Nullable
    private com.google.android.gms.ads.internal.util.client.zzu zzc = null;
    private com.google.android.gms.ads.internal.overlay.zzaa zzg = null;
    private final zzgdy zzh = zzcaf.zzg;

    public zzbkr(com.google.android.gms.ads.internal.zzb zzbVar, zzbso zzbsoVar, zzeca zzecaVar, zzdsj zzdsjVar, zzcmq zzcmqVar) {
        this.zza = zzbVar;
        this.zzd = zzbsoVar;
        this.zze = zzecaVar;
        this.zzb = zzdsjVar;
        this.zzf = zzcmqVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get("o");
        if (str != null) {
            if (TtmlNode.TAG_P.equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if ("c".equalsIgnoreCase(str)) {
                return 14;
            }
            return -1;
        }
        return -1;
    }

    @VisibleForTesting
    static Uri zzc(Context context, zzavu zzavuVar, Uri uri, View view, @Nullable Activity activity, @Nullable zzfda zzfdaVar) {
        if (zzavuVar == null) {
            return uri;
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmu)).booleanValue() && zzfdaVar != null) {
                if (zzavuVar.zze(uri)) {
                    uri = zzfdaVar.zza(uri, context, view, activity);
                }
            } else if (zzavuVar.zze(uri)) {
                uri = zzavuVar.zza(uri, context, view, activity);
            }
        } catch (zzavv unused) {
        } catch (Exception e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "OpenGmsgHandler.maybeAddClickSignalsToUri");
        }
        return uri;
    }

    @VisibleForTesting
    static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e10) {
            String valueOf = String.valueOf(uri.toString());
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error adding click uptime parameter to url: ".concat(valueOf), e10);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return "1".equals(map.get("custom_close"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(String str, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, String str2) {
        String str3;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        Object obj;
        HashMap hashMap;
        Object obj2;
        boolean z15;
        String str4;
        boolean z16;
        zzcfg zzcfgVar = (zzcfg) zzaVar;
        zzfca zzD = zzcfgVar.zzD();
        zzfcd zzR = zzcfgVar.zzR();
        boolean z17 = false;
        if (zzD == null || zzR == null) {
            str3 = "";
            z10 = false;
        } else {
            String str5 = zzR.zzb;
            z10 = zzD.zzb();
            str3 = str5;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlg)).booleanValue() && map.containsKey(SRStrategy.KEY_SR_STRATEGY_CONFIG) && ((String) map.get(SRStrategy.KEY_SR_STRATEGY_CONFIG)).equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzng)).booleanValue() && map.containsKey("ig_cl") && ((String) map.get("ig_cl")).equals("true")) {
            z12 = true;
        } else {
            z12 = false;
        }
        if ("expand".equalsIgnoreCase(str2)) {
            if (zzcfgVar.zzaF()) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot expand WebView that is already expanded.");
                return;
            }
            zzk(false);
            ((zzcgq) zzaVar).zzaL(zzf(map), zzb(map), z11);
        } else if ("webapp".equalsIgnoreCase(str2)) {
            zzk(false);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmq)).booleanValue() && Objects.equals(map.get("is_allowed_for_lock_screen"), "1")) {
                z16 = true;
            } else {
                z16 = false;
            }
            if (str != null) {
                ((zzcgq) zzaVar).zzaN(zzf(map), zzb(map), str, z11, z16);
            } else {
                ((zzcgq) zzaVar).zzaM(zzf(map), zzb(map), (String) map.get("html"), (String) map.get("baseurl"), z11);
            }
        } else {
            Intent intent = null;
            if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
                Context context = zzcfgVar.getContext();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeY)).booleanValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza("User opt out chrome custom tab.");
                    zzm(10);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeT)).booleanValue()) {
                        String packageName = CustomTabsClient.getPackageName(context, null);
                        if (packageName != null && !context.getPackageName().equals(packageName)) {
                            z17 = true;
                        }
                    } else {
                        z17 = zzbef.zzg(context);
                    }
                    if (!z17) {
                        zzm(4);
                    } else {
                        zzk(true);
                        if (TextUtils.isEmpty(str)) {
                            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot open browser with null or empty url");
                            zzm(7);
                            return;
                        }
                        Uri zzd = zzd(zzc(zzcfgVar.getContext(), zzcfgVar.zzI(), Uri.parse(str), zzcfgVar.zzF(), zzcfgVar.zzi(), zzcfgVar.zzS()));
                        if (!z10 || this.zze == null || !zzl(zzaVar, zzcfgVar.getContext(), zzd.toString(), str3)) {
                            this.zzg = new zzbko(this);
                            ((zzcgq) zzaVar).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc(null, zzd.toString(), null, null, null, null, null, null, ObjectWrapper.wrap(this.zzg).asBinder(), true), z11, z12, str3);
                            return;
                        }
                        return;
                    }
                }
                map.put("use_first_package", "true");
                map.put("use_running_process", "true");
                zzj(zzaVar, map, z10, str3, z11, z12);
            } else if (MBridgeConstans.DYNAMIC_VIEW_WX_APP.equalsIgnoreCase(str2) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                zzj(zzaVar, map, z10, str3, z11, z12);
            } else if ("open_app".equalsIgnoreCase(str2)) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziE)).booleanValue()) {
                    zzk(true);
                    String str6 = (String) map.get(TtmlNode.TAG_P);
                    if (str6 == null) {
                        int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Package name missing from open app action.");
                    } else if (!z10 || this.zze == null || !zzl(zzaVar, zzcfgVar.getContext(), str6, str3)) {
                        PackageManager packageManager = zzcfgVar.getContext().getPackageManager();
                        if (packageManager == null) {
                            int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot get package manager from open app action.");
                            return;
                        }
                        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str6);
                        if (launchIntentForPackage != null) {
                            ((zzcgq) zzaVar).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc(launchIntentForPackage, this.zzg), z11, z12, str3);
                        }
                    }
                }
            } else {
                zzk(true);
                String str7 = (String) map.get("intent_url");
                if (!TextUtils.isEmpty(str7)) {
                    try {
                        intent = Intent.parseUri(str7, 0);
                    } catch (URISyntaxException e10) {
                        String valueOf = String.valueOf(str7);
                        int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error parsing the url: ".concat(valueOf), e10);
                    }
                }
                Intent intent2 = intent;
                if (intent2 != null && intent2.getData() != null) {
                    Uri data = intent2.getData();
                    if (!Uri.EMPTY.equals(data)) {
                        Uri zzd2 = zzd(zzc(zzcfgVar.getContext(), zzcfgVar.zzI(), data, zzcfgVar.zzF(), zzcfgVar.zzi(), zzcfgVar.zzS()));
                        if (!TextUtils.isEmpty(intent2.getType())) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziF)).booleanValue()) {
                                intent2.setDataAndType(zzd2, intent2.getType());
                            }
                        }
                        intent2.setData(zzd2);
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzja)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id")) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                HashMap hashMap2 = new HashMap();
                if (z13) {
                    obj = TtmlNode.TAG_P;
                    obj2 = "event_id";
                    z14 = z12;
                    hashMap = hashMap2;
                    this.zzg = new zzbkp(this, z11, zzaVar, hashMap2, map);
                    z15 = false;
                } else {
                    z14 = z12;
                    obj = TtmlNode.TAG_P;
                    hashMap = hashMap2;
                    obj2 = "event_id";
                    z15 = z11;
                }
                if (intent2 != null) {
                    if (z10 && this.zze != null && zzl(zzaVar, zzcfgVar.getContext(), intent2.getData().toString(), str3)) {
                        if (z13) {
                            hashMap.put((String) map.get(obj2), Boolean.TRUE);
                            ((zzbna) zzaVar).zzd("openIntentAsync", hashMap);
                            return;
                        }
                        return;
                    }
                    ((zzcgq) zzaVar).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc(intent2, this.zzg), z15, z14, str3);
                    return;
                }
                boolean z18 = z14;
                if (!TextUtils.isEmpty(str)) {
                    str4 = zzd(zzc(zzcfgVar.getContext(), zzcfgVar.zzI(), Uri.parse(str), zzcfgVar.zzF(), zzcfgVar.zzi(), zzcfgVar.zzS())).toString();
                } else {
                    str4 = str;
                }
                if (z10 && this.zze != null && zzl(zzaVar, zzcfgVar.getContext(), str4, str3)) {
                    if (z13) {
                        hashMap.put((String) map.get(obj2), Boolean.TRUE);
                        ((zzbna) zzaVar).zzd("openIntentAsync", hashMap);
                        return;
                    }
                    return;
                }
                ((zzcgq) zzaVar).zzaJ(new com.google.android.gms.ads.internal.overlay.zzc((String) map.get("i"), str4, (String) map.get("m"), (String) map.get(obj), (String) map.get("c"), (String) map.get("f"), (String) map.get("e"), this.zzg), z15, z18, str3);
            }
        }
    }

    private final void zzi(Context context, String str, String str2) {
        zzeca zzecaVar = this.zze;
        zzecaVar.zzc(str);
        zzdsj zzdsjVar = this.zzb;
        if (zzdsjVar != null) {
            zzecl.zzp(context, zzdsjVar, zzecaVar, str, "dialog_not_shown", zzfyt.zze("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x010c, code lost:
        if (com.google.android.gms.internal.ads.zzbkq.zzc(r2, r12, r13, r14, r15) == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x015c, code lost:
        r22 = r7;
        r11 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzj(com.google.android.gms.ads.internal.client.zza r21, java.util.Map r22, boolean r23, java.lang.String r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbkr.zzj(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean, boolean):void");
    }

    private final void zzk(boolean z10) {
        zzbso zzbsoVar = this.zzd;
        if (zzbsoVar != null) {
            zzbsoVar.zzb(z10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006e, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zziU)).booleanValue() != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d8, code lost:
        if (r5 != false) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzl(com.google.android.gms.ads.internal.client.zza r10, android.content.Context r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbkr.zzl(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i10) {
        zzdsj zzdsjVar;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeS)).booleanValue() && (zzdsjVar = this.zzb) != null) {
            zzdsi zza = zzdsjVar.zza();
            zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "cct_action");
            switch (i10) {
                case 2:
                    str = "CONTEXT_NOT_AN_ACTIVITY";
                    break;
                case 3:
                    str = "CONTEXT_NULL";
                    break;
                case 4:
                    str = "CCT_NOT_SUPPORTED";
                    break;
                case 5:
                    str = "CCT_READY_TO_OPEN";
                    break;
                case 6:
                    str = "ACTIVITY_NOT_FOUND";
                    break;
                case 7:
                    str = "EMPTY_URL";
                    break;
                case 8:
                    str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
                    break;
                case 9:
                    str = "WRONG_EXP_SETUP";
                    break;
                default:
                    str = "OPT_OUT";
                    break;
            }
            zza.zzb("cct_open_status", str);
            zza.zzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        com.google.common.util.concurrent.e zzh;
        zzcmq zzcmqVar;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String str = (String) map.get("u");
        Map hashMap = new HashMap();
        zzcfg zzcfgVar = (zzcfg) zzaVar;
        if (zzcfgVar.zzD() != null) {
            hashMap = zzcfgVar.zzD().zzaw;
        }
        String zzc = zzbyq.zzc(str, zzcfgVar.getContext(), true, hashMap);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar != null && !zzbVar.zzc()) {
            zzbVar.zzb(zzc);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkx)).booleanValue() && (zzcmqVar = this.zzf) != null && zzcmq.zzj(zzc)) {
            zzh = zzcmqVar.zze(zzc, com.google.android.gms.ads.internal.client.zzbb.zze());
        } else {
            zzh = zzgdn.zzh(zzc);
        }
        zzgdn.zzr(zzh, new zzbkn(this, map, zzaVar, str2), this.zzh);
    }
}
