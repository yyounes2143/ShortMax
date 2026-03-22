package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzayc extends zzayk {
    private final StackTraceElement[] zzh;

    public zzayc(zzawx zzawxVar, String str, String str2, zzast zzastVar, int i10, int i11, StackTraceElement[] stackTraceElementArr) {
        super(zzawxVar, "UtW7g7feJqOHsjIRMP7TbkL8M4VYsmVrsaULCIKJGwvBOELKcxTQZfT6AHg6wl4V", "3s4OpKjyDjUzqtut1o8wCVCKFRdtRePXWRu+sqk/xG8=", zzastVar, i10, 45);
        this.zzh = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        StackTraceElement[] stackTraceElementArr = this.zzh;
        if (stackTraceElementArr != null) {
            zzawo zzawoVar = new zzawo((String) this.zze.invoke(null, stackTraceElementArr));
            zzast zzastVar = this.zzd;
            synchronized (zzastVar) {
                try {
                    zzastVar.zzD(zzawoVar.zza.longValue());
                    if (zzawoVar.zzb.booleanValue()) {
                        int i10 = 1;
                        if (true != zzawoVar.zzc.booleanValue()) {
                            i10 = 2;
                        }
                        zzastVar.zzZ(i10);
                    } else {
                        zzastVar.zzZ(3);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
