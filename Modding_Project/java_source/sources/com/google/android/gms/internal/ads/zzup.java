package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzup extends zzug {
    private final HashMap zza = new HashMap();
    @Nullable
    private Handler zzb;
    @Nullable
    private zzhj zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zzA(Object obj, zzvj zzvjVar, zzbl zzblVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzB(final Object obj, zzvj zzvjVar) {
        HashMap hashMap = this.zza;
        zzdd.zzd(!hashMap.containsKey(obj));
        zzvi zzviVar = new zzvi() { // from class: com.google.android.gms.internal.ads.zzum
            @Override // com.google.android.gms.internal.ads.zzvi
            public final void zza(zzvj zzvjVar2, zzbl zzblVar) {
                zzup.this.zzA(obj, zzvjVar2, zzblVar);
            }
        };
        zzun zzunVar = new zzun(this, obj);
        hashMap.put(obj, new zzuo(zzvjVar, zzviVar, zzunVar));
        Handler handler = this.zzb;
        handler.getClass();
        zzvjVar.zzh(handler, zzunVar);
        Handler handler2 = this.zzb;
        handler2.getClass();
        zzvjVar.zzg(handler2, zzunVar);
        zzvjVar.zzm(zzviVar, this.zzc, zzb());
        if (!zzu()) {
            zzvjVar.zzi(zzviVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzug
    @CallSuper
    protected final void zzj() {
        for (zzuo zzuoVar : this.zza.values()) {
            zzuoVar.zza.zzi(zzuoVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzug
    @CallSuper
    protected final void zzl() {
        for (zzuo zzuoVar : this.zza.values()) {
            zzuoVar.zza.zzk(zzuoVar.zzb);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzug
    @CallSuper
    public void zzn(@Nullable zzhj zzhjVar) {
        this.zzc = zzhjVar;
        this.zzb = zzex.zzy(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzug
    @CallSuper
    public void zzq() {
        HashMap hashMap = this.zza;
        for (zzuo zzuoVar : hashMap.values()) {
            zzvj zzvjVar = zzuoVar.zza;
            zzvjVar.zzp(zzuoVar.zzb);
            zzun zzunVar = zzuoVar.zzc;
            zzvjVar.zzs(zzunVar);
            zzvjVar.zzr(zzunVar);
        }
        hashMap.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzw(Object obj, int i10) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public zzvh zzy(Object obj, zzvh zzvhVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    @CallSuper
    public void zzz() throws IOException {
        for (zzuo zzuoVar : this.zza.values()) {
            zzuoVar.zza.zzz();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long zzx(Object obj, long j10, @Nullable zzvh zzvhVar) {
        return j10;
    }
}
