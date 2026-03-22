package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.PlatformVersion;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbac extends Thread {
    private boolean zza;
    private boolean zzb;
    private final Object zzc;
    private final zzazt zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final String zzm;
    private final boolean zzn;
    private final boolean zzo;

    public zzbac() {
        zzazt zzaztVar = new zzazt();
        this.zza = false;
        this.zzb = false;
        this.zzd = zzaztVar;
        this.zzc = new Object();
        this.zzf = ((Long) zzbev.zzd.zze()).intValue();
        this.zzg = ((Long) zzbev.zza.zze()).intValue();
        this.zzh = ((Long) zzbev.zze.zze()).intValue();
        this.zzi = ((Long) zzbev.zzc.zze()).intValue();
        this.zzj = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzak)).intValue();
        this.zzk = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzal)).intValue();
        this.zzl = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzam)).intValue();
        this.zze = ((Long) zzbev.zzf.zze()).intValue();
        this.zzm = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzao);
        this.zzn = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzap)).booleanValue();
        this.zzo = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaq)).booleanValue();
        ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzar)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(1:3)(2:31|(2:36|(3:39|(3:41|42|(6:50|(1:52)(5:53|54|55|(1:59)|(1:61))|6|7|e7|20))|37)))|4|5|6|7|e7) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in ContentFetchTask", r0);
        com.google.android.gms.ads.internal.zzv.zzp().zzw(r0, "ContentFetchTask.run");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00de, code lost:
        r1 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in ContentFetchTask", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e8 A[EXC_TOP_SPLITTER, LOOP:1: B:62:0x00e8->B:71:0x00e8, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbac.run():void");
    }

    @VisibleForTesting
    final zzbab zza(@Nullable View view, zzazs zzazsVar) {
        if (view == null) {
            return new zzbab(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (!TextUtils.isEmpty(text)) {
                zzazsVar.zzh(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                return new zzbab(this, 1, 0);
            }
            return new zzbab(this, 0, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzcfg)) {
            WebView webView = (WebView) view;
            if (!PlatformVersion.isAtLeastKitKat()) {
                return new zzbab(this, 0, 0);
            }
            zzazsVar.zzf();
            webView.post(new zzbaa(this, zzazsVar, webView, globalVisibleRect));
            return new zzbab(this, 0, 1);
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                zzbab zza = zza(viewGroup.getChildAt(i12), zzazsVar);
                i10 += zza.zza;
                i11 += zza.zzb;
            }
            return new zzbab(this, i10, i11);
        } else {
            return new zzbab(this, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        if (r11 == 0) goto L23;
     */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(android.view.View r11) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzazs r9 = new com.google.android.gms.internal.ads.zzazs     // Catch: java.lang.Exception -> L51
            int r1 = r10.zzf     // Catch: java.lang.Exception -> L51
            int r2 = r10.zzg     // Catch: java.lang.Exception -> L51
            int r3 = r10.zzh     // Catch: java.lang.Exception -> L51
            int r4 = r10.zzi     // Catch: java.lang.Exception -> L51
            int r5 = r10.zzj     // Catch: java.lang.Exception -> L51
            int r6 = r10.zzk     // Catch: java.lang.Exception -> L51
            int r7 = r10.zzl     // Catch: java.lang.Exception -> L51
            boolean r8 = r10.zzo     // Catch: java.lang.Exception -> L51
            r0 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L51
            com.google.android.gms.internal.ads.zzazx r0 = com.google.android.gms.ads.internal.zzv.zzb()     // Catch: java.lang.Exception -> L51
            android.content.Context r0 = r0.zzb()     // Catch: java.lang.Exception -> L51
            if (r0 == 0) goto L53
            java.lang.String r1 = r10.zzm     // Catch: java.lang.Exception -> L51
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L51
            if (r2 != 0) goto L53
            android.content.res.Resources r2 = r0.getResources()     // Catch: java.lang.Exception -> L51
            com.google.android.gms.internal.ads.zzbcv r3 = com.google.android.gms.internal.ads.zzbde.zzan     // Catch: java.lang.Exception -> L51
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> L51
            java.lang.Object r3 = r4.zzb(r3)     // Catch: java.lang.Exception -> L51
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> L51
            java.lang.String r4 = "id"
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Exception -> L51
            int r0 = r2.getIdentifier(r3, r4, r0)     // Catch: java.lang.Exception -> L51
            java.lang.Object r0 = r11.getTag(r0)     // Catch: java.lang.Exception -> L51
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L51
            if (r0 == 0) goto L53
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L51
            if (r0 != 0) goto L78
            goto L53
        L51:
            r11 = move-exception
            goto L7f
        L53:
            com.google.android.gms.internal.ads.zzbab r11 = r10.zza(r11, r9)     // Catch: java.lang.Exception -> L51
            r9.zzj()     // Catch: java.lang.Exception -> L51
            int r0 = r11.zza     // Catch: java.lang.Exception -> L51
            if (r0 != 0) goto L62
            int r0 = r11.zzb     // Catch: java.lang.Exception -> L51
            if (r0 == 0) goto L78
        L62:
            int r11 = r11.zzb     // Catch: java.lang.Exception -> L51
            if (r11 != 0) goto L6d
            int r11 = r9.zzb()     // Catch: java.lang.Exception -> L51
            if (r11 == 0) goto L78
            goto L6f
        L6d:
            if (r11 != 0) goto L79
        L6f:
            com.google.android.gms.internal.ads.zzazt r11 = r10.zzd     // Catch: java.lang.Exception -> L51
            boolean r11 = r11.zzc(r9)     // Catch: java.lang.Exception -> L51
            if (r11 != 0) goto L78
            goto L79
        L78:
            return
        L79:
            com.google.android.gms.internal.ads.zzazt r11 = r10.zzd     // Catch: java.lang.Exception -> L51
            r11.zza(r9)     // Catch: java.lang.Exception -> L51
            return
        L7f:
            int r0 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r0 = "Exception in fetchContentOnUIThread"
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r11)
            java.lang.String r0 = "ContentFetchTask.fetchContent"
            com.google.android.gms.internal.ads.zzbzs r1 = com.google.android.gms.ads.internal.zzv.zzp()
            r1.zzw(r11, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbac.zzb(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzc(zzazs zzazsVar, WebView webView, String str, boolean z10) {
        zzazsVar.zze();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString(MimeTypes.BASE_TYPE_TEXT);
                if (!this.zzn && !TextUtils.isEmpty(webView.getTitle())) {
                    String title = webView.getTitle();
                    zzazsVar.zzi(title + "\n" + optString, z10, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    zzazsVar.zzi(optString, z10, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzazsVar.zzl()) {
                this.zzd.zzb(zzazsVar);
            }
        } catch (JSONException unused) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Json string may be malformed.");
        } catch (Throwable th2) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get webview content.", th2);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zzd() {
        synchronized (this.zzc) {
            try {
                if (this.zza) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Content hash thread already started, quitting...");
                    return;
                }
                this.zza = true;
                start();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            this.zzb = true;
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("ContentFetchThread: paused, pause = true");
        }
    }
}
