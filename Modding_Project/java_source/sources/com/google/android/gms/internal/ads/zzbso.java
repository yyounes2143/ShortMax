package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.DataLoaderHelper;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbso extends zzbsu {
    private String zza;
    private boolean zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final Object zzi;
    private final zzcfg zzj;
    private final Activity zzk;
    private zzchd zzl;
    private ImageView zzm;
    private LinearLayout zzn;
    private final zzbsv zzo;
    private PopupWindow zzp;
    private RelativeLayout zzq;
    private ViewGroup zzr;

    static {
        CollectionUtils.setOf("top-left", "top-right", "top-center", TtmlNode.CENTER, "bottom-left", "bottom-right", "bottom-center");
    }

    public zzbso(zzcfg zzcfgVar, zzbsv zzbsvVar) {
        super(zzcfgVar, "resize");
        this.zza = "top-right";
        this.zzb = true;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = -1;
        this.zzi = new Object();
        this.zzj = zzcfgVar;
        this.zzk = zzcfgVar.zzi();
        this.zzo = zzbsvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(boolean z10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlm)).booleanValue()) {
            this.zzq.removeView((View) this.zzj);
            this.zzp.dismiss();
        } else {
            this.zzp.dismiss();
            this.zzq.removeView((View) this.zzj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzln)).booleanValue()) {
            View view = (View) this.zzj;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
        ViewGroup viewGroup = this.zzr;
        if (viewGroup != null) {
            viewGroup.removeView(this.zzm);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlo)).booleanValue()) {
                try {
                    ViewGroup viewGroup2 = this.zzr;
                    zzcfg zzcfgVar = this.zzj;
                    viewGroup2.addView((View) zzcfgVar);
                    zzcfgVar.zzaj(this.zzl);
                } catch (IllegalStateException e10) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to add webview back to view hierarchy.", e10);
                }
            } else {
                ViewGroup viewGroup3 = this.zzr;
                zzcfg zzcfgVar2 = this.zzj;
                viewGroup3.addView((View) zzcfgVar2);
                zzcfgVar2.zzaj(this.zzl);
            }
        }
        if (z10) {
            zzl(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
            zzbsv zzbsvVar = this.zzo;
            if (zzbsvVar != null) {
                zzbsvVar.zzb();
            }
        }
        this.zzp = null;
        this.zzq = null;
        this.zzr = null;
        this.zzn = null;
    }

    public final void zzb(final boolean z10) {
        synchronized (this.zzi) {
            try {
                if (this.zzp != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzll)).booleanValue() && Looper.getMainLooper().getThread() != Thread.currentThread()) {
                        zzcaf.zzf.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbsm
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzbso.this.zzm(z10);
                            }
                        });
                    } else {
                        zzm(z10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x025b, code lost:
        zzh("Resize location out of screen or close button is not visible.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0261, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x027f A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:11:0x0015, B:13:0x001d, B:14:0x0022, B:16:0x0024, B:18:0x002e, B:19:0x0033, B:21:0x0035, B:23:0x003b, B:24:0x0040, B:26:0x0042, B:28:0x0050, B:29:0x0061, B:31:0x006f, B:32:0x0080, B:34:0x008e, B:35:0x009f, B:37:0x00ad, B:38:0x00be, B:40:0x00cc, B:41:0x00da, B:43:0x00e8, B:44:0x00ea, B:46:0x00ee, B:48:0x00f2, B:50:0x00f8, B:53:0x0100, B:57:0x0124, B:63:0x0130, B:130:0x025b, B:131:0x0260, B:133:0x0262, B:135:0x027f, B:137:0x028b, B:139:0x02c3, B:171:0x0376, B:178:0x03a5, B:179:0x03bd, B:180:0x03d9, B:182:0x03e1, B:183:0x03e8, B:184:0x040e, B:187:0x0411, B:189:0x0437, B:190:0x0449, B:172:0x037d, B:173:0x0384, B:174:0x038b, B:175:0x0392, B:176:0x0398, B:177:0x039f, B:138:0x02c0, B:192:0x044b, B:193:0x0450, B:64:0x0139, B:66:0x013d, B:94:0x0190, B:95:0x019a, B:104:0x01ec, B:106:0x01f1, B:108:0x01f6, B:111:0x01fc, B:96:0x019e, B:97:0x01a8, B:98:0x01af, B:99:0x01bb, B:100:0x01c3, B:101:0x01d6, B:102:0x01e2, B:112:0x020b, B:120:0x0235, B:126:0x0245, B:123:0x023b, B:125:0x0243, B:116:0x022b, B:118:0x0231, B:127:0x024a, B:128:0x0252, B:195:0x0452, B:196:0x0457, B:198:0x0459, B:199:0x045e), top: B:203:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x044b A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:11:0x0015, B:13:0x001d, B:14:0x0022, B:16:0x0024, B:18:0x002e, B:19:0x0033, B:21:0x0035, B:23:0x003b, B:24:0x0040, B:26:0x0042, B:28:0x0050, B:29:0x0061, B:31:0x006f, B:32:0x0080, B:34:0x008e, B:35:0x009f, B:37:0x00ad, B:38:0x00be, B:40:0x00cc, B:41:0x00da, B:43:0x00e8, B:44:0x00ea, B:46:0x00ee, B:48:0x00f2, B:50:0x00f8, B:53:0x0100, B:57:0x0124, B:63:0x0130, B:130:0x025b, B:131:0x0260, B:133:0x0262, B:135:0x027f, B:137:0x028b, B:139:0x02c3, B:171:0x0376, B:178:0x03a5, B:179:0x03bd, B:180:0x03d9, B:182:0x03e1, B:183:0x03e8, B:184:0x040e, B:187:0x0411, B:189:0x0437, B:190:0x0449, B:172:0x037d, B:173:0x0384, B:174:0x038b, B:175:0x0392, B:176:0x0398, B:177:0x039f, B:138:0x02c0, B:192:0x044b, B:193:0x0450, B:64:0x0139, B:66:0x013d, B:94:0x0190, B:95:0x019a, B:104:0x01ec, B:106:0x01f1, B:108:0x01f6, B:111:0x01fc, B:96:0x019e, B:97:0x01a8, B:98:0x01af, B:99:0x01bb, B:100:0x01c3, B:101:0x01d6, B:102:0x01e2, B:112:0x020b, B:120:0x0235, B:126:0x0245, B:123:0x023b, B:125:0x0243, B:116:0x022b, B:118:0x0231, B:127:0x024a, B:128:0x0252, B:195:0x0452, B:196:0x0457, B:198:0x0459, B:199:0x045e), top: B:203:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(java.util.Map r19) {
        /*
            Method dump skipped, instructions count: 1174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbso.zzc(java.util.Map):void");
    }

    public final void zzd(int i10, int i11, boolean z10) {
        synchronized (this.zzi) {
            this.zzc = i10;
            this.zzd = i11;
        }
    }

    public final void zze(int i10, int i11) {
        this.zzc = i10;
        this.zzd = i11;
    }

    public final boolean zzf() {
        boolean z10;
        synchronized (this.zzi) {
            if (this.zzp != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }
}
