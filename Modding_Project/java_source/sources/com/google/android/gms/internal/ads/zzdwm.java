package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzdwm extends Exception {
    private final int zza;

    public zzdwm(int i10) {
        this.zza = i10;
    }

    public final int zza() {
        return this.zza;
    }

    public zzdwm(int i10, String str) {
        super(str);
        this.zza = i10;
    }

    public zzdwm(int i10, String str, Throwable th2) {
        super(str, th2);
        this.zza = 1;
    }
}
