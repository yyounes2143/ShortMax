package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.ss.ttm.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@VisibleForTesting(otherwise = 3)
/* loaded from: classes4.dex */
public class zzcfo extends WebViewClient implements zzcgy {
    public static final /* synthetic */ int zzb = 0;
    @Nullable
    private zzdsj zzA;
    private boolean zzB;
    private boolean zzC;
    private int zzD;
    private boolean zzE;
    @Nullable
    private final zzecl zzG;
    private View.OnAttachStateChangeListener zzH;
    @Nullable
    protected zzbya zza;
    private final zzcfg zzc;
    @Nullable
    private final zzbcc zzd;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzr zzh;
    private zzcgw zzi;
    private zzcgx zzj;
    private zzbiv zzk;
    private zzbix zzl;
    private zzded zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private com.google.android.gms.ads.internal.overlay.zzad zzw;
    @Nullable
    private zzbst zzx;
    private com.google.android.gms.ads.internal.zzb zzy;
    private final HashMap zze = new HashMap();
    private final Object zzf = new Object();
    private int zzp = 0;
    private String zzq = "";
    private String zzr = "";
    private zzbso zzz = null;
    private final HashSet zzF = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfW)).split(",")));

    @VisibleForTesting
    public zzcfo(zzcfg zzcfgVar, @Nullable zzbcc zzbccVar, boolean z10, zzbst zzbstVar, @Nullable zzbso zzbsoVar, @Nullable zzecl zzeclVar) {
        this.zzd = zzbccVar;
        this.zzc = zzcfgVar;
        this.zzs = z10;
        this.zzx = zzbstVar;
        this.zzG = zzeclVar;
    }

    @Nullable
    private static WebResourceResponse zzY() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaY)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    @Nullable
    private final WebResourceResponse zzZ(String str, Map map) throws IOException {
        HttpURLConnection httpURLConnection;
        WebResourceResponse webResourceResponse;
        String trim;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME);
            int i10 = 0;
            while (true) {
                i10++;
                if (i10 <= 20) {
                    int i11 = zzfra.zzb;
                    URLConnection openConnection = url.openConnection();
                    openConnection.setConnectTimeout(10000);
                    openConnection.setReadTimeout(10000);
                    for (Map.Entry entry : map.entrySet()) {
                        openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                    if (openConnection instanceof HttpURLConnection) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        com.google.android.gms.ads.internal.util.zzs zzr = com.google.android.gms.ads.internal.zzv.zzr();
                        zzcfg zzcfgVar = this.zzc;
                        zzr.zzg(zzcfgVar.getContext(), zzcfgVar.zzm().afmaVersion, false, httpURLConnection, false, 60000);
                        webResourceResponse = null;
                        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
                        zzlVar.zzc(httpURLConnection, null);
                        int responseCode = httpURLConnection.getResponseCode();
                        zzlVar.zze(httpURLConnection, responseCode);
                        if (responseCode < 300 || responseCode >= 400) {
                            break;
                        }
                        String headerField = httpURLConnection.getHeaderField("Location");
                        if (headerField != null) {
                            if (!headerField.startsWith("tel:")) {
                                URL url2 = new URL(url, headerField);
                                String protocol = url2.getProtocol();
                                if (protocol == null) {
                                    int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Protocol is null");
                                    webResourceResponse = zzY();
                                    break;
                                } else if (!protocol.equals(ProxyConfig.MATCH_HTTP) && !protocol.equals("https")) {
                                    int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unsupported scheme: " + protocol);
                                    webResourceResponse = zzY();
                                    break;
                                } else {
                                    String str2 = "Redirecting to " + headerField;
                                    int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zze(str2);
                                    httpURLConnection.disconnect();
                                    url = url2;
                                }
                            }
                        } else {
                            throw new IOException("Missing Location header in redirect");
                        }
                    } else {
                        throw new IOException("Invalid protocol.");
                    }
                } else {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
            }
            com.google.android.gms.ads.internal.zzv.zzr();
            com.google.android.gms.ads.internal.zzv.zzr();
            String contentType = httpURLConnection.getContentType();
            String str3 = "";
            if (TextUtils.isEmpty(contentType)) {
                trim = "";
            } else {
                trim = contentType.split(";")[0].trim();
            }
            com.google.android.gms.ads.internal.zzv.zzr();
            String contentType2 = httpURLConnection.getContentType();
            if (!TextUtils.isEmpty(contentType2)) {
                String[] split = contentType2.split(";");
                if (split.length != 1) {
                    int i15 = 1;
                    while (true) {
                        if (i15 >= split.length) {
                            break;
                        }
                        if (split[i15].trim().startsWith("charset")) {
                            String[] split2 = split[i15].trim().split(ContainerUtils.KEY_VALUE_DELIMITER);
                            if (split2.length > 1) {
                                str3 = split2[1].trim();
                                break;
                            }
                        }
                        i15++;
                    }
                }
            }
            String str4 = str3;
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            HashMap hashMap = new HashMap(headerFields.size());
            for (Map.Entry<String, List<String>> entry2 : headerFields.entrySet()) {
                if (entry2.getKey() != null && entry2.getValue() != null && !entry2.getValue().isEmpty()) {
                    hashMap.put(entry2.getKey(), entry2.getValue().get(0));
                }
            }
            webResourceResponse = com.google.android.gms.ads.internal.zzv.zzs().zzb(trim, str4, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
            return webResourceResponse;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbkf) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzab() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzH;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzac(final View view, final zzbya zzbyaVar, final int i10) {
        if (zzbyaVar.zzi() && i10 > 0) {
            zzbyaVar.zzg(view);
            if (zzbyaVar.zzi()) {
                com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfh
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcfo.this.zzac(view, zzbyaVar, i10 - 1);
                    }
                }, 100L);
            }
        }
    }

    private static final boolean zzad(zzcfg zzcfgVar) {
        if (zzcfgVar.zzD() != null && zzcfgVar.zzD().zzb()) {
            return true;
        }
        return false;
    }

    private static final boolean zzae(boolean z10, zzcfg zzcfgVar) {
        if (z10 && !zzcfgVar.zzO().zzi() && !zzcfgVar.zzU().equals("interstitial_mb")) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ void zzh(zzcfo zzcfoVar) {
        zzcfg zzcfgVar = zzcfoVar.zzc;
        zzcfgVar.zzad();
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzcfgVar.zzL();
        if (zzL != null) {
            zzL.zzz();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzn(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            try {
                zzcfg zzcfgVar = this.zzc;
                if (zzcfgVar.zzaE()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                    zzcfgVar.zzX();
                    return;
                }
                this.zzB = true;
                zzcgx zzcgxVar = this.zzj;
                if (zzcgxVar != null) {
                    zzcgxVar.zza();
                    this.zzj = null;
                }
                zzk();
                zzcfg zzcfgVar2 = this.zzc;
                if (zzcfgVar2.zzL() != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmq)).booleanValue()) {
                        zzcfgVar2.zzL().zzG(str);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        this.zzo = true;
        this.zzp = i10;
        this.zzq = str;
        this.zzr = str2;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        int rendererPriorityAtExit;
        zzcfg zzcfgVar = this.zzc;
        didCrash = renderProcessGoneDetail.didCrash();
        rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
        return zzcfgVar.zzaD(didCrash, rendererPriorityAtExit);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2;
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzn(parse);
        } else {
            if (this.zzn && webView == this.zzc.zzG()) {
                String scheme = parse.getScheme();
                if (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        zzbya zzbyaVar = this.zza;
                        if (zzbyaVar != null) {
                            zzbyaVar.zzh(str);
                        }
                        this.zzg = null;
                    }
                    zzded zzdedVar = this.zzm;
                    if (zzdedVar != null) {
                        zzdedVar.zzdf();
                        this.zzm = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            zzcfg zzcfgVar = this.zzc;
            if (!zzcfgVar.zzG().willNotDraw()) {
                try {
                    zzavu zzI = zzcfgVar.zzI();
                    zzfda zzS = zzcfgVar.zzS();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmu)).booleanValue() && zzS != null) {
                        if (zzI != null && zzI.zzf(parse)) {
                            parse = zzS.zza(parse, zzcfgVar.getContext(), (View) zzcfgVar, zzcfgVar.zzi());
                        }
                    } else if (zzI != null && zzI.zzf(parse)) {
                        parse = zzI.zza(parse, zzcfgVar.getContext(), (View) zzcfgVar, zzcfgVar.zzi());
                    }
                } catch (zzavv unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzy;
                if (zzbVar != null && !zzbVar.zzc()) {
                    zzbVar.zzb(str);
                } else {
                    com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(CommonConstant.ACTION.HWID_SCHEME_URL, parse.toString(), null, null, null, null, null, null);
                    zzcfg zzcfgVar2 = this.zzc;
                    if (zzcfgVar2 != null) {
                        str2 = zzcfgVar2.zzr();
                    } else {
                        str2 = "";
                    }
                    zzv(zzcVar, true, false, str2);
                }
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            }
        }
        return true;
    }

    public final void zzA(boolean z10, int i10, String str, boolean z11, boolean z12) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcfn zzcfnVar;
        zzded zzdedVar;
        zzecl zzeclVar;
        zzcfg zzcfgVar = this.zzc;
        boolean zzaF = zzcfgVar.zzaF();
        boolean zzae = zzae(zzaF, zzcfgVar);
        boolean z13 = true;
        if (!zzae && z11) {
            z13 = false;
        }
        if (zzae) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaF) {
            zzcfnVar = null;
        } else {
            zzcfnVar = new zzcfn(zzcfgVar, this.zzh);
        }
        zzbiv zzbivVar = this.zzk;
        zzbix zzbixVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfgVar.zzm();
        if (z13) {
            zzdedVar = null;
        } else {
            zzdedVar = this.zzm;
        }
        if (zzad(zzcfgVar)) {
            zzeclVar = this.zzG;
        } else {
            zzeclVar = null;
        }
        zzy(new AdOverlayInfoParcel(zzaVar, zzcfnVar, zzbivVar, zzbixVar, zzadVar, zzcfgVar, z10, i10, str, zzm, zzdedVar, zzeclVar, z12));
    }

    public final void zzB(String str, zzbkf zzbkfVar) {
        synchronized (this.zzf) {
            try {
                HashMap hashMap = this.zze;
                List list = (List) hashMap.get(str);
                if (list == null) {
                    list = new CopyOnWriteArrayList();
                    hashMap.put(str, list);
                }
                list.add(zzbkfVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzC(zzcgw zzcgwVar) {
        this.zzi = zzcgwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzD(@Nullable com.google.android.gms.ads.internal.zzb zzbVar) {
        this.zzy = zzbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzE(int i10, int i11) {
        zzbso zzbsoVar = this.zzz;
        if (zzbsoVar != null) {
            zzbsoVar.zze(i10, i11);
        }
    }

    public final void zzF(boolean z10) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzG(boolean z10) {
        synchronized (this.zzf) {
            this.zzu = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzH(boolean z10) {
        synchronized (this.zzf) {
            this.zzv = z10;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzI() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzs = true;
            zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfi
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfo.zzh(zzcfo.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzJ(boolean z10) {
        synchronized (this.zzf) {
            this.zzt = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzK(zzcgx zzcgxVar) {
        this.zzj = zzcgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzL(zzbya zzbyaVar) {
        this.zza = zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzM(zzcmq zzcmqVar, @Nullable zzeca zzecaVar, @Nullable zzfjy zzfjyVar) {
        zzQ("/click");
        if (zzecaVar != null && zzfjyVar != null) {
            zzB("/click", new zzfde(this.zzm, zzcmqVar, zzfjyVar, zzecaVar));
            return;
        }
        zzded zzdedVar = this.zzm;
        zzbkf zzbkfVar = zzbke.zza;
        zzB("/click", new zzbjd(zzdedVar, zzcmqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzN(zzcmq zzcmqVar) {
        zzQ("/click");
        zzded zzdedVar = this.zzm;
        zzbkf zzbkfVar = zzbke.zza;
        zzB("/click", new zzbjd(zzdedVar, zzcmqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzO(zzcmq zzcmqVar, @Nullable zzeca zzecaVar, @Nullable zzdsj zzdsjVar) {
        zzQ("/open");
        zzB("/open", new zzbkr(this.zzy, this.zzz, zzecaVar, zzdsjVar, zzcmqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzP(zzfca zzfcaVar) {
        zzcfg zzcfgVar = this.zzc;
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcfgVar.getContext())) {
            zzQ("/logScionEvent");
            new HashMap();
            zzB("/logScionEvent", new zzbkl(zzcfgVar.getContext(), zzfcaVar.zzaw));
        }
    }

    public final void zzQ(String str) {
        synchronized (this.zzf) {
            try {
                List list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                list.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzR(String str, zzbkf zzbkfVar) {
        synchronized (this.zzf) {
            try {
                List list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                list.remove(zzbkfVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzS(String str, Predicate predicate) {
        synchronized (this.zzf) {
            try {
                List<zzbkf> list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (zzbkf zzbkfVar : list) {
                    if (predicate.apply(zzbkfVar)) {
                        arrayList.add(zzbkfVar);
                    }
                }
                list.removeAll(arrayList);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzT() {
        boolean z10;
        synchronized (this.zzf) {
            z10 = this.zzu;
        }
        return z10;
    }

    public final boolean zzU() {
        boolean z10;
        synchronized (this.zzf) {
            z10 = this.zzv;
        }
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final boolean zzV() {
        boolean z10;
        synchronized (this.zzf) {
            z10 = this.zzs;
        }
        return z10;
    }

    public final boolean zzW() {
        boolean z10;
        synchronized (this.zzf) {
            z10 = this.zzt;
        }
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzX(@Nullable com.google.android.gms.ads.internal.client.zza zzaVar, @Nullable zzbiv zzbivVar, @Nullable com.google.android.gms.ads.internal.overlay.zzr zzrVar, @Nullable zzbix zzbixVar, @Nullable com.google.android.gms.ads.internal.overlay.zzad zzadVar, boolean z10, @Nullable zzbki zzbkiVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbsv zzbsvVar, @Nullable zzbya zzbyaVar, @Nullable final zzeca zzecaVar, @Nullable final zzfjy zzfjyVar, @Nullable zzdsj zzdsjVar, @Nullable zzbkz zzbkzVar, @Nullable zzded zzdedVar, @Nullable zzbky zzbkyVar, @Nullable zzbks zzbksVar, @Nullable zzbkg zzbkgVar, @Nullable zzcmq zzcmqVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzbyaVar, null) : zzbVar;
        zzcfg zzcfgVar = this.zzc;
        this.zzz = new zzbso(zzcfgVar, zzbsvVar);
        this.zza = zzbyaVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbf)).booleanValue()) {
            zzB("/adMetadata", new zzbiu(zzbivVar));
        }
        if (zzbixVar != null) {
            zzB("/appEvent", new zzbiw(zzbixVar));
        }
        zzB("/backButton", zzbke.zzj);
        zzB("/refresh", zzbke.zzk);
        zzB("/canOpenApp", zzbke.zzb);
        zzB("/canOpenURLs", zzbke.zza);
        zzB("/canOpenIntents", zzbke.zzc);
        zzB("/close", zzbke.zzd);
        zzB("/customClose", zzbke.zze);
        zzB("/instrument", zzbke.zzn);
        zzB("/delayPageLoaded", zzbke.zzp);
        zzB("/delayPageClosed", zzbke.zzq);
        zzB("/getLocationInfo", zzbke.zzr);
        zzB("/log", zzbke.zzg);
        zzB("/mraid", new zzbkm(zzbVar2, this.zzz, zzbsvVar));
        zzbst zzbstVar = this.zzx;
        if (zzbstVar != null) {
            zzB("/mraidLoaded", zzbstVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzB("/open", new zzbkr(zzbVar2, this.zzz, zzecaVar, zzdsjVar, zzcmqVar));
        zzB("/precache", new zzcdo());
        zzB("/touch", zzbke.zzi);
        zzB("/video", zzbke.zzl);
        zzB("/videoMeta", zzbke.zzm);
        if (zzecaVar != null && zzfjyVar != null) {
            zzB("/click", new zzfde(zzdedVar, zzcmqVar, zzfjyVar, zzecaVar));
            zzB("/httpTrack", new zzbkf() { // from class: com.google.android.gms.internal.ads.zzfdf
                @Override // com.google.android.gms.internal.ads.zzbkf
                public final void zza(Object obj, Map map) {
                    zzcex zzcexVar = (zzcex) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from httpTrack GMSG.");
                        return;
                    }
                    zzfca zzD = zzcexVar.zzD();
                    if (zzD != null && !zzD.zzai) {
                        zzfjy.this.zzd(str, zzD.zzax, null, null);
                        return;
                    }
                    zzfcd zzR = ((zzcgj) zzcexVar).zzR();
                    if (zzR == null) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler");
                        return;
                    }
                    zzecaVar.zzd(new zzecc(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis(), zzR.zzb, str, 2));
                }
            });
        } else {
            zzB("/click", new zzbjd(zzdedVar, zzcmqVar));
            zzB("/httpTrack", zzbke.zzf);
        }
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcfgVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcfgVar.zzD() != null) {
                hashMap = zzcfgVar.zzD().zzaw;
            }
            zzB("/logScionEvent", new zzbkl(zzcfgVar.getContext(), hashMap));
        }
        if (zzbkiVar != null) {
            zzB("/setInterstitialProperties", new zzbkh(zzbkiVar));
        }
        if (zzbkzVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjp)).booleanValue()) {
                zzB("/inspectorNetworkExtras", zzbkzVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjI)).booleanValue() && zzbkyVar != null) {
            zzB("/shareSheet", zzbkyVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjN)).booleanValue() && zzbksVar != null) {
            zzB("/inspectorOutOfContextTest", zzbksVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjS)).booleanValue() && zzbkgVar != null) {
            zzB("/inspectorStorage", zzbkgVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlV)).booleanValue()) {
            zzB("/bindPlayStoreOverlay", zzbke.zzu);
            zzB("/presentPlayStoreOverlay", zzbke.zzv);
            zzB("/expandPlayStoreOverlay", zzbke.zzw);
            zzB("/collapsePlayStoreOverlay", zzbke.zzx);
            zzB("/closePlayStoreOverlay", zzbke.zzy);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdB)).booleanValue()) {
            zzB("/setPAIDPersonalizationEnabled", zzbke.zzA);
            zzB("/resetPAID", zzbke.zzz);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmp)).booleanValue() && zzcfgVar.zzD() != null && zzcfgVar.zzD().zzar) {
            zzB("/writeToLocalStorage", zzbke.zzB);
            zzB("/clearLocalStorageKeys", zzbke.zzC);
        }
        this.zzg = zzaVar;
        this.zzh = zzrVar;
        this.zzk = zzbivVar;
        this.zzl = zzbixVar;
        this.zzw = zzadVar;
        this.zzy = zzbVar3;
        this.zzm = zzdedVar;
        this.zzA = zzdsjVar;
        this.zzn = z10;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b4 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b7, B:30:0x00cb, B:33:0x00e6, B:78:0x01b8, B:50:0x0170, B:97:0x029f, B:86:0x0226, B:87:0x024f, B:85:0x01fe, B:49:0x0149, B:32:0x00d9, B:88:0x0250, B:90:0x025a, B:92:0x0260, B:94:0x0293, B:99:0x02ae, B:101:0x02b4, B:103:0x02c2), top: B:112:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02c7 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b7 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TRY_ENTER, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b7, B:30:0x00cb, B:33:0x00e6, B:78:0x01b8, B:50:0x0170, B:97:0x029f, B:86:0x0226, B:87:0x024f, B:85:0x01fe, B:49:0x0149, B:32:0x00d9, B:88:0x0250, B:90:0x025a, B:92:0x0260, B:94:0x0293, B:99:0x02ae, B:101:0x02b4, B:103:0x02c2), top: B:112:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f3 A[Catch: all -> 0x01ac, TryCatch #7 {all -> 0x01ac, blocks: (B:71:0x0191, B:73:0x01a3, B:77:0x01ae, B:81:0x01e1, B:83:0x01f3, B:84:0x01fa), top: B:109:0x00e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0250 A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b7, B:30:0x00cb, B:33:0x00e6, B:78:0x01b8, B:50:0x0170, B:97:0x029f, B:86:0x0226, B:87:0x024f, B:85:0x01fe, B:49:0x0149, B:32:0x00d9, B:88:0x0250, B:90:0x025a, B:92:0x0260, B:94:0x0293, B:99:0x02ae, B:101:0x02b4, B:103:0x02c2), top: B:112:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x029f A[Catch: NoClassDefFoundError -> 0x0020, Exception -> 0x0023, TryCatch #11 {Exception -> 0x0023, NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:10:0x0026, B:12:0x0036, B:14:0x003d, B:16:0x004b, B:18:0x0067, B:20:0x0080, B:22:0x0097, B:23:0x009a, B:25:0x009d, B:28:0x00b7, B:30:0x00cb, B:33:0x00e6, B:78:0x01b8, B:50:0x0170, B:97:0x029f, B:86:0x0226, B:87:0x024f, B:85:0x01fe, B:49:0x0149, B:32:0x00d9, B:88:0x0250, B:90:0x025a, B:92:0x0260, B:94:0x0293, B:99:0x02ae, B:101:0x02b4, B:103:0x02c2), top: B:112:0x000c }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse zzc(java.lang.String r20, java.util.Map r21) {
        /*
            Method dump skipped, instructions count: 727
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfo.zzc(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzded
    public final void zzdH() {
        zzded zzdedVar = this.zzm;
        if (zzdedVar != null) {
            zzdedVar.zzdH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzded
    public final void zzdf() {
        zzded zzdedVar = this.zzm;
        if (zzdedVar != null) {
            zzdedVar.zzdf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final zzdsj zze() {
        return this.zzA;
    }

    public final void zzk() {
        if (this.zzi != null && ((this.zzB && this.zzD <= 0) || this.zzC || this.zzo)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue()) {
                zzcfg zzcfgVar = this.zzc;
                if (zzcfgVar.zzl() != null) {
                    zzbdl.zza(zzcfgVar.zzl().zza(), zzcfgVar.zzk(), "awfllc");
                }
            }
            zzcgw zzcgwVar = this.zzi;
            boolean z10 = false;
            if (!this.zzC && !this.zzo) {
                z10 = true;
            }
            zzcgwVar.zza(z10, this.zzp, this.zzq, this.zzr);
            this.zzi = null;
        }
        this.zzc.zzaf();
    }

    public final void zzl() {
        zzbya zzbyaVar = this.zza;
        if (zzbyaVar != null) {
            zzbyaVar.zzf();
            this.zza = null;
        }
        zzab();
        synchronized (this.zzf) {
            try {
                this.zze.clear();
                this.zzg = null;
                this.zzh = null;
                this.zzi = null;
                this.zzj = null;
                this.zzk = null;
                this.zzl = null;
                this.zzn = false;
                this.zzs = false;
                this.zzt = false;
                this.zzu = false;
                this.zzw = null;
                this.zzy = null;
                this.zzx = null;
                zzbso zzbsoVar = this.zzz;
                if (zzbsoVar != null) {
                    zzbsoVar.zzb(true);
                    this.zzz = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzm(boolean z10) {
        this.zzE = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzn(Uri uri) {
        final String str;
        com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(String.valueOf(uri)));
        HashMap hashMap = this.zze;
        String path = uri.getPath();
        List list = (List) hashMap.get(path);
        if (path != null && list != null) {
            String encodedQuery = uri.getEncodedQuery();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfV)).booleanValue() && this.zzF.contains(path) && encodedQuery != null) {
                if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfX)).intValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                    zzgdn.zzr(com.google.android.gms.ads.internal.zzv.zzr().zzb(uri), new zzcfm(this, list, path, uri), zzcaf.zzf);
                    return;
                }
            }
            com.google.android.gms.ads.internal.zzv.zzr();
            zzaa(com.google.android.gms.ads.internal.util.zzs.zzQ(uri), list, path);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgV)).booleanValue() && com.google.android.gms.ads.internal.zzv.zzp().zzg() != null) {
            if (path != null && path.length() >= 2) {
                str = path.substring(1);
            } else {
                str = "null";
            }
            zzcaf.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfj
                @Override // java.lang.Runnable
                public final void run() {
                    int i10 = zzcfo.zzb;
                    com.google.android.gms.ads.internal.zzv.zzp().zzg().zze(str);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzo() {
        zzbcc zzbccVar = this.zzd;
        if (zzbccVar != null) {
            zzbccVar.zzc(10005);
        }
        this.zzC = true;
        this.zzp = 10004;
        this.zzq = "Page loaded delay cancel.";
        zzk();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzp() {
        synchronized (this.zzf) {
        }
        this.zzD++;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzq() {
        this.zzD--;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzr(int i10, int i11, boolean z10) {
        zzbst zzbstVar = this.zzx;
        if (zzbstVar != null) {
            zzbstVar.zzb(i10, i11);
        }
        zzbso zzbsoVar = this.zzz;
        if (zzbsoVar != null) {
            zzbsoVar.zzd(i10, i11, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgy
    public final void zzs() {
        zzbya zzbyaVar = this.zza;
        if (zzbyaVar != null) {
            zzcfg zzcfgVar = this.zzc;
            WebView zzG = zzcfgVar.zzG();
            if (ViewCompat.isAttachedToWindow(zzG)) {
                zzac(zzG, zzbyaVar, 10);
                return;
            }
            zzab();
            zzcfl zzcflVar = new zzcfl(this, zzbyaVar);
            this.zzH = zzcflVar;
            ((View) zzcfgVar).addOnAttachStateChangeListener(zzcflVar);
        }
    }

    public final void zzv(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z10, boolean z11, String str) {
        boolean z12;
        com.google.android.gms.ads.internal.client.zza zzaVar;
        com.google.android.gms.ads.internal.overlay.zzr zzrVar;
        zzded zzdedVar;
        zzcfg zzcfgVar = this.zzc;
        boolean zzaF = zzcfgVar.zzaF();
        boolean z13 = false;
        if (zzae(zzaF, zzcfgVar) || z11) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12 || !z10) {
            z13 = true;
        }
        if (z12) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaF) {
            zzrVar = null;
        } else {
            zzrVar = this.zzh;
        }
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfgVar.zzm();
        if (z13) {
            zzdedVar = null;
        } else {
            zzdedVar = this.zzm;
        }
        zzy(new AdOverlayInfoParcel(zzcVar, zzaVar, zzrVar, zzadVar, zzm, zzcfgVar, zzdedVar, str));
    }

    public final void zzw(String str, String str2, int i10) {
        zzecl zzeclVar = this.zzG;
        zzcfg zzcfgVar = this.zzc;
        zzy(new AdOverlayInfoParcel(zzcfgVar, zzcfgVar.zzm(), str, str2, 14, zzeclVar));
    }

    public final void zzx(boolean z10, int i10, boolean z11) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzded zzdedVar;
        zzecl zzeclVar;
        zzcfg zzcfgVar = this.zzc;
        boolean zzae = zzae(zzcfgVar.zzaF(), zzcfgVar);
        boolean z12 = true;
        if (!zzae && z11) {
            z12 = false;
        }
        if (zzae) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzh;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfgVar.zzm();
        if (z12) {
            zzdedVar = null;
        } else {
            zzdedVar = this.zzm;
        }
        if (zzad(zzcfgVar)) {
            zzeclVar = this.zzG;
        } else {
            zzeclVar = null;
        }
        zzy(new AdOverlayInfoParcel(zzaVar, zzrVar, zzadVar, zzcfgVar, z10, i10, zzm, zzdedVar, zzeclVar));
    }

    public final void zzy(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z10;
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbso zzbsoVar = this.zzz;
        if (zzbsoVar != null) {
            z10 = zzbsoVar.zzf();
        } else {
            z10 = false;
        }
        com.google.android.gms.ads.internal.zzv.zzj();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzc.getContext(), adOverlayInfoParcel, !z10, this.zzA);
        zzbya zzbyaVar = this.zza;
        if (zzbyaVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzbyaVar.zzh(str);
        }
    }

    public final void zzz(boolean z10, int i10, String str, String str2, boolean z11) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcfn zzcfnVar;
        zzded zzdedVar;
        zzecl zzeclVar;
        zzcfg zzcfgVar = this.zzc;
        boolean zzaF = zzcfgVar.zzaF();
        boolean zzae = zzae(zzaF, zzcfgVar);
        boolean z12 = true;
        if (!zzae && z11) {
            z12 = false;
        }
        if (zzae) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaF) {
            zzcfnVar = null;
        } else {
            zzcfnVar = new zzcfn(zzcfgVar, this.zzh);
        }
        zzbiv zzbivVar = this.zzk;
        zzbix zzbixVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zzw;
        VersionInfoParcel zzm = zzcfgVar.zzm();
        if (z12) {
            zzdedVar = null;
        } else {
            zzdedVar = this.zzm;
        }
        if (zzad(zzcfgVar)) {
            zzeclVar = this.zzG;
        } else {
            zzeclVar = null;
        }
        zzy(new AdOverlayInfoParcel(zzaVar, zzcfnVar, zzbivVar, zzbixVar, zzadVar, zzcfgVar, z10, i10, str, str2, zzm, zzdedVar, zzeclVar));
    }
}
