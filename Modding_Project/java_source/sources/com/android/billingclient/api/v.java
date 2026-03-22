package com.android.billingclient.api;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zziq;
import com.google.android.gms.internal.play_billing.zzis;
import com.google.android.gms.internal.play_billing.zzja;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzji;
import com.google.android.gms.internal.play_billing.zzjo;
import com.google.android.gms.internal.play_billing.zzjs;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class v implements t {

    /* renamed from: b  reason: collision with root package name */
    private zzis f6689b;

    /* renamed from: c  reason: collision with root package name */
    private final w f6690c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Context context, zzis zzisVar) {
        this.f6690c = new w(context);
        this.f6689b = zzisVar;
    }

    private final void l(@Nullable zzhx zzhxVar, zzis zzisVar) {
        if (zzhxVar == null) {
            return;
        }
        try {
            zzjg zzc = zzji.zzc();
            zzc.zzn(zzisVar);
            zzc.zza(zzhxVar);
            this.f6690c.a((zzji) zzc.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    private final void m(@Nullable zzib zzibVar, zzis zzisVar) {
        if (zzibVar == null) {
            return;
        }
        try {
            zzjg zzc = zzji.zzc();
            zzc.zzn(zzisVar);
            zzc.zzl(zzibVar);
            this.f6690c.a((zzji) zzc.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void a(zzhx zzhxVar, long j10, boolean z10) {
        zzis zzisVar;
        try {
            zzhv zzhvVar = (zzhv) zzhxVar.zzm();
            zzja zzjaVar = (zzja) zzhxVar.zzB().zzm();
            zzjaVar.zza(z10);
            zzhvVar.zzn(zzjaVar);
            zzhx zzhxVar2 = (zzhx) zzhvVar.zze();
            if (j10 == 0) {
                zzisVar = this.f6689b;
            } else {
                zziq zziqVar = (zziq) this.f6689b.zzm();
                zziqVar.zzo(j10);
                zzisVar = (zzis) zziqVar.zze();
            }
            l(zzhxVar2, zzisVar);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void b(zzhx zzhxVar, int i10, long j10) {
        try {
            zziq zziqVar = (zziq) this.f6689b.zzm();
            zziqVar.zzm(i10);
            zzis zzisVar = (zzis) zziqVar.zze();
            this.f6689b = zzisVar;
            if (j10 != 0) {
                zziq zziqVar2 = (zziq) zzisVar.zzm();
                zziqVar2.zzo(j10);
                zzisVar = (zzis) zziqVar2.zze();
            }
            l(zzhxVar, zzisVar);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void c(zzij zzijVar) {
        try {
            zzjg zzc = zzji.zzc();
            zzc.zzn(this.f6689b);
            zzc.zzm(zzijVar);
            this.f6690c.a((zzji) zzc.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void d(@Nullable zzib zzibVar, int i10) {
        try {
            zziq zziqVar = (zziq) this.f6689b.zzm();
            zziqVar.zzm(i10);
            this.f6689b = (zzis) zziqVar.zze();
            j(zzibVar);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void e(zzjo zzjoVar) {
        try {
            w wVar = this.f6690c;
            zzjg zzc = zzji.zzc();
            zzc.zzn(this.f6689b);
            zzc.zzo(zzjoVar);
            wVar.a((zzji) zzc.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void f(@Nullable zzjs zzjsVar) {
        if (zzjsVar == null) {
            return;
        }
        try {
            zzjg zzc = zzji.zzc();
            zzc.zzn(this.f6689b);
            zzc.zzp(zzjsVar);
            this.f6690c.a((zzji) zzc.zze());
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void g(zzhx zzhxVar, int i10, long j10, boolean z10) {
        zzis zzisVar;
        try {
            zziq zziqVar = (zziq) this.f6689b.zzm();
            zziqVar.zzm(i10);
            this.f6689b = (zzis) zziqVar.zze();
            zzhv zzhvVar = (zzhv) zzhxVar.zzm();
            zzja zzjaVar = (zzja) zzhxVar.zzB().zzm();
            zzjaVar.zza(z10);
            zzhvVar.zzn(zzjaVar);
            zzhx zzhxVar2 = (zzhx) zzhvVar.zze();
            if (j10 == 0) {
                zzisVar = this.f6689b;
            } else {
                zziq zziqVar2 = (zziq) this.f6689b.zzm();
                zziqVar2.zzo(j10);
                zzisVar = (zzis) zziqVar2.zze();
            }
            l(zzhxVar2, zzisVar);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void h(@Nullable zzhx zzhxVar) {
        try {
            l(zzhxVar, this.f6689b);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void i(zzib zzibVar, long j10, boolean z10) {
        zzis zzisVar;
        try {
            zzhz zzhzVar = (zzhz) zzibVar.zzm();
            zzja zzjaVar = (zzja) zzibVar.zzA().zzm();
            zzjaVar.zza(z10);
            zzhzVar.zzm(zzjaVar);
            zzib zzibVar2 = (zzib) zzhzVar.zze();
            if (j10 == 0) {
                zzisVar = this.f6689b;
            } else {
                zziq zziqVar = (zziq) this.f6689b.zzm();
                zziqVar.zzo(j10);
                zzisVar = (zzis) zziqVar.zze();
            }
            m(zzibVar2, zzisVar);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void j(@Nullable zzib zzibVar) {
        try {
            m(zzibVar, this.f6689b);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }

    @Override // com.android.billingclient.api.t
    public final void k(@Nullable zzhx zzhxVar, int i10) {
        try {
            zziq zziqVar = (zziq) this.f6689b.zzm();
            zziqVar.zzm(i10);
            this.f6689b = (zzis) zziqVar.zze();
            h(zzhxVar);
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to log.", th2);
        }
    }
}
