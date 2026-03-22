package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfns implements zzfmt {
    private static final zzfns zza = new zzfns();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzfno();
    private static final Runnable zze = new zzfnp();
    private int zzg;
    private long zzm;
    private final List zzf = new ArrayList();
    private boolean zzh = false;
    private final List zzi = new ArrayList();
    private final zzfnl zzk = new zzfnl();
    private final zzfmv zzj = new zzfmv();
    private final zzfnm zzl = new zzfnm(new zzfnv());

    zzfns() {
    }

    public static zzfns zzd() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzg(zzfns zzfnsVar) {
        zzfnsVar.zzg = 0;
        zzfnsVar.zzi.clear();
        zzfnsVar.zzh = false;
        for (zzflp zzflpVar : zzfmi.zza().zzb()) {
        }
        zzfnsVar.zzm = System.nanoTime();
        zzfnl zzfnlVar = zzfnsVar.zzk;
        zzfnlVar.zzi();
        long nanoTime = System.nanoTime();
        zzfmv zzfmvVar = zzfnsVar.zzj;
        zzfmu zza2 = zzfmvVar.zza();
        if (zzfnlVar.zze().size() > 0) {
            Iterator it = zzfnlVar.zze().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                JSONObject zza3 = zza2.zza(null);
                View zza4 = zzfnlVar.zza(str);
                zzfmu zzb2 = zzfmvVar.zzb();
                String zzc2 = zzfnlVar.zzc(str);
                if (zzc2 != null) {
                    JSONObject zza5 = zzb2.zza(zza4);
                    zzfne.zzb(zza5, str);
                    try {
                        zza5.put("notVisibleReason", zzc2);
                    } catch (JSONException e10) {
                        zzfnf.zza("Error with setting not visible reason", e10);
                    }
                    zzfne.zzc(zza3, zza5);
                }
                zzfne.zzf(zza3);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                zzfnsVar.zzl.zzc(zza3, hashSet, nanoTime);
            }
        }
        zzfnl zzfnlVar2 = zzfnsVar.zzk;
        if (zzfnlVar2.zzf().size() > 0) {
            JSONObject zza6 = zza2.zza(null);
            zzfnsVar.zzk(null, zza2, zza6, 1, false);
            zzfne.zzf(zza6);
            zzfnsVar.zzl.zzd(zza6, zzfnlVar2.zzf(), nanoTime);
        } else {
            zzfnsVar.zzl.zzb();
        }
        zzfnlVar2.zzg();
        long nanoTime2 = System.nanoTime() - zzfnsVar.zzm;
        List<zzfnr> list = zzfnsVar.zzf;
        if (list.size() > 0) {
            for (zzfnr zzfnrVar : list) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                zzfnrVar.zzb();
                if (zzfnrVar instanceof zzfnq) {
                    ((zzfnq) zzfnrVar).zza();
                }
            }
        }
        zzfms.zza().zzc();
    }

    private final void zzk(View view, zzfmu zzfmuVar, JSONObject jSONObject, int i10, boolean z10) {
        boolean z11 = true;
        if (i10 != 1) {
            z11 = false;
        }
        zzfmuVar.zzb(view, jSONObject, this, z11, z10);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmt
    public final void zza(View view, zzfmu zzfmuVar, JSONObject jSONObject, boolean z10) {
        zzfnl zzfnlVar;
        int zzl;
        boolean z11;
        boolean z12;
        if (zzfnj.zza(view) == null && (zzl = (zzfnlVar = this.zzk).zzl(view)) != 3) {
            JSONObject zza2 = zzfmuVar.zza(view);
            zzfne.zzc(jSONObject, zza2);
            String zzd2 = zzfnlVar.zzd(view);
            if (zzd2 != null) {
                zzfne.zzb(zza2, zzd2);
                try {
                    zza2.put("hasWindowFocus", Boolean.valueOf(this.zzk.zzk(view)));
                } catch (JSONException e10) {
                    zzfnf.zza("Error with setting has window focus", e10);
                }
                boolean zzj = this.zzk.zzj(zzd2);
                Boolean valueOf = Boolean.valueOf(zzj);
                if (zzj) {
                    try {
                        zza2.put("isPipActive", valueOf);
                    } catch (JSONException e11) {
                        zzfnf.zza("Error with setting is picture-in-picture active", e11);
                    }
                }
                this.zzk.zzh();
            } else {
                zzfnk zzb2 = zzfnlVar.zzb(view);
                if (zzb2 != null) {
                    zzfml zza3 = zzb2.zza();
                    JSONArray jSONArray = new JSONArray();
                    ArrayList zzb3 = zzb2.zzb();
                    int size = zzb3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        jSONArray.put((String) zzb3.get(i10));
                    }
                    try {
                        zza2.put("isFriendlyObstructionFor", jSONArray);
                        zza2.put("friendlyObstructionClass", zza3.zzd());
                        zza2.put("friendlyObstructionPurpose", zza3.zza());
                        zza2.put("friendlyObstructionReason", zza3.zzc());
                    } catch (JSONException e12) {
                        zzfnf.zza("Error with setting friendly obstruction", e12);
                    }
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z10 || z11) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                zzk(view, zzfmuVar, zza2, zzl, z12);
            }
            this.zzg++;
        }
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzfnn(this));
    }
}
