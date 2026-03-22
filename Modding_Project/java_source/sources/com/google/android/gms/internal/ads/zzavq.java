package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzavq implements zzavp {
    protected static volatile zzawx zza;
    protected MotionEvent zzb;
    protected double zzk;
    protected float zzl;
    protected float zzm;
    protected float zzn;
    protected float zzo;
    protected DisplayMetrics zzq;
    @Nullable
    protected zzawp zzr;
    private double zzs;
    private double zzt;
    protected final LinkedList zzc = new LinkedList();
    protected long zzd = 0;
    protected long zze = 0;
    protected long zzf = 0;
    protected long zzg = 0;
    protected long zzh = 0;
    protected long zzi = 0;
    protected long zzj = 0;
    private boolean zzu = false;
    protected boolean zzp = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzavq(Context context) {
        try {
            zzaus.zze();
            this.zzq = context.getResources().getDisplayMetrics();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdd)).booleanValue()) {
                this.zzr = new zzawp();
            }
        } catch (Throwable unused) {
        }
    }

    private final void zzm() {
        this.zzh = 0L;
        this.zzd = 0L;
        this.zze = 0L;
        this.zzf = 0L;
        this.zzg = 0L;
        this.zzi = 0L;
        this.zzj = 0L;
        LinkedList linkedList = this.zzc;
        if (!linkedList.isEmpty()) {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                ((MotionEvent) it.next()).recycle();
            }
            linkedList.clear();
        } else {
            MotionEvent motionEvent = this.zzb;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.zzb = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzp(android.content.Context r20, java.lang.String r21, int r22, android.view.View r23, android.app.Activity r24, byte[] r25) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavq.zzp(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }

    protected abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzawn;

    protected abstract zzast zzb(Context context, View view, Activity activity);

    protected abstract zzast zzc(Context context, zzasg zzasgVar);

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzd(Context context, @Nullable String str, @Nullable View view) {
        return zzp(context, str, 3, view, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zze(Context context, @Nullable String str, @Nullable View view, @Nullable Activity activity) {
        return zzp(context, str, 3, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzf(Context context) {
        if (!zzaxa.zzc()) {
            return zzp(context, null, 1, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzh(Context context, @Nullable View view, @Nullable Activity activity) {
        return zzp(context, null, 2, view, activity, null);
    }

    protected abstract zzast zzi(Context context, View view, Activity activity);

    protected abstract zzawz zzj(MotionEvent motionEvent) throws zzawn;

    @Override // com.google.android.gms.internal.ads.zzavp
    public final synchronized void zzk(@Nullable MotionEvent motionEvent) {
        Long l10;
        try {
            if (this.zzu) {
                zzm();
                this.zzu = false;
            }
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 || action == 2) {
                    double rawX = motionEvent.getRawX();
                    double rawY = motionEvent.getRawY();
                    double d10 = rawX - this.zzs;
                    double d11 = rawY - this.zzt;
                    this.zzk += Math.sqrt((d10 * d10) + (d11 * d11));
                    this.zzs = rawX;
                    this.zzt = rawY;
                }
            } else {
                this.zzk = 0.0d;
                this.zzs = motionEvent.getRawX();
                this.zzt = motionEvent.getRawY();
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 != 1) {
                        if (action2 != 2) {
                            if (action2 == 3) {
                                this.zzg++;
                            }
                        } else {
                            this.zze += motionEvent.getHistorySize() + 1;
                            zzawz zzj = zzj(motionEvent);
                            Long l11 = zzj.zzd;
                            if (l11 != null && zzj.zzg != null) {
                                this.zzi += l11.longValue() + zzj.zzg.longValue();
                            }
                            if (this.zzq != null && (l10 = zzj.zze) != null && zzj.zzh != null) {
                                this.zzj += l10.longValue() + zzj.zzh.longValue();
                            }
                        }
                    } else {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        this.zzb = obtain;
                        LinkedList linkedList = this.zzc;
                        linkedList.add(obtain);
                        if (linkedList.size() > 6) {
                            ((MotionEvent) linkedList.remove()).recycle();
                        }
                        this.zzf++;
                        this.zzh = zza(new Throwable().getStackTrace());
                    }
                } catch (zzawn unused) {
                }
            } else {
                this.zzl = motionEvent.getX();
                this.zzm = motionEvent.getY();
                this.zzn = motionEvent.getRawX();
                this.zzo = motionEvent.getRawY();
                this.zzd++;
            }
            this.zzp = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final synchronized void zzl(int i10, int i11, int i12) {
        try {
            if (this.zzb != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcN)).booleanValue()) {
                    zzm();
                } else {
                    this.zzb.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.zzq;
            if (displayMetrics != null) {
                float f10 = displayMetrics.density;
                this.zzb = MotionEvent.obtain(0L, i12, 1, i10 * f10, i11 * f10, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.zzb = null;
            }
            this.zzp = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzawp zzawpVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdd)).booleanValue() && (zzawpVar = this.zzr) != null) {
            zzawpVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public void zzo(View view) {
    }
}
