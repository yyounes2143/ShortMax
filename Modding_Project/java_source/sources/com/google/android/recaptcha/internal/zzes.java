package com.google.android.recaptcha.internal;

import android.content.Context;
import com.unity3d.services.UnityAdsConstants;
import gt.g;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzes implements zzeo {
    @Nullable
    private static Timer zza;
    @NotNull
    private final Context zzb;
    @NotNull
    private final zzet zzc;
    @NotNull
    private final g0 zzd;
    @Nullable
    private final zzei zze;

    public zzes(@NotNull Context context, @NotNull zzet zzetVar, @NotNull g0 g0Var) {
        zzei zzeiVar;
        this.zzb = context;
        this.zzc = zzetVar;
        this.zzd = g0Var;
        zzei zzeiVar2 = null;
        try {
            zzeiVar = zzei.zzd;
            zzeiVar = zzeiVar == null ? new zzei(context, null) : zzeiVar;
            zzei.zzd = zzeiVar;
            zzeiVar2 = zzeiVar;
        } catch (Exception unused) {
        }
        this.zze = zzeiVar2;
        zzh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        zzei zzeiVar;
        zztx zzk;
        int zzN;
        int i10;
        zzei zzeiVar2 = this.zze;
        if (zzeiVar2 != null) {
            for (List<zzej> list : CollectionsKt.j1(zzeiVar2.zzd(), 20, 20, true)) {
                zzrd zzi = zzrf.zzi();
                ArrayList arrayList = new ArrayList();
                for (zzej zzejVar : list) {
                    try {
                        zzk = zztx.zzk(zzkh.zzg().zzj(zzejVar.zzc()));
                        zzN = zzk.zzN();
                        i10 = zzN - 1;
                    } catch (Exception unused) {
                        zzei zzeiVar3 = this.zze;
                        if (zzeiVar3 != null) {
                            zzeiVar3.zzf(zzejVar);
                        }
                    }
                    if (zzN != 0) {
                        if (i10 != 0) {
                            if (i10 != 1) {
                                if (i10 == 2) {
                                    Unit unit = Unit.f60915a;
                                } else {
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else {
                                zzi.zzr(zzk.zzg());
                            }
                        } else {
                            zzi.zzq(zzk.zzf());
                        }
                        arrayList.add(zzejVar);
                    } else {
                        throw null;
                    }
                }
                if (zzi.zze() + zzi.zzf() != 0) {
                    if (this.zzc.zza(((zzrf) zzi.zzk()).zzd()) && (zzeiVar = this.zze) != null) {
                        zzeiVar.zza(arrayList);
                    }
                }
            }
        }
    }

    private final void zzh() {
        if (zza == null) {
            Timer timer = new Timer();
            zza = timer;
            timer.schedule(new zzep(this), UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, UnityAdsConstants.Timeout.INIT_TIMEOUT_MS);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzeo
    public final void zza(@NotNull zztx zztxVar) {
        g.d(this.zzd, null, null, new zzer(this, zztxVar, null), 3, null);
        zzh();
    }
}
