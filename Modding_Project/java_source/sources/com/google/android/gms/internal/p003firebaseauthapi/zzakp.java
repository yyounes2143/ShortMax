package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzakp  reason: invalid package */
/* loaded from: classes4.dex */
final class zzakp implements zzaol {
    private final zzakn zza;

    private zzakp(zzakn zzaknVar) {
        zzakn zzaknVar2 = (zzakn) zzalh.zza(zzaknVar, "output");
        this.zza = zzaknVar2;
        zzaknVar2.zza = this;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzb(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzaks)) {
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    i12 += zzakn.zza(list.get(i13).doubleValue());
                }
                this.zza.zzm(i12);
                while (i11 < list.size()) {
                    this.zza.zzb(list.get(i11).doubleValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        zzaks zzaksVar = (zzaks) list;
        if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < zzaksVar.size(); i15++) {
                i14 += zzakn.zza(zzaksVar.zzb(i15));
            }
            this.zza.zzm(i14);
            while (i11 < zzaksVar.size()) {
                this.zza.zzb(zzaksVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zzaksVar.size()) {
            this.zza.zzb(i10, zzaksVar.zzb(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzc(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzali)) {
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    i12 += zzakn.zza(list.get(i13).intValue());
                }
                this.zza.zzm(i12);
                while (i11 < list.size()) {
                    this.zza.zzk(list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zzh(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzali zzaliVar = (zzali) list;
        if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < zzaliVar.size(); i15++) {
                i14 += zzakn.zza(zzaliVar.zzb(i15));
            }
            this.zza.zzm(i14);
            while (i11 < zzaliVar.size()) {
                this.zza.zzk(zzaliVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zzaliVar.size()) {
            this.zza.zzh(i10, zzaliVar.zzb(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzd(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzali)) {
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    i12 += zzakn.zzb(list.get(i13).intValue());
                }
                this.zza.zzm(i12);
                while (i11 < list.size()) {
                    this.zza.zzj(list.get(i11).intValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zzg(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        zzali zzaliVar = (zzali) list;
        if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < zzaliVar.size(); i15++) {
                i14 += zzakn.zzb(zzaliVar.zzb(i15));
            }
            this.zza.zzm(i14);
            while (i11 < zzaliVar.size()) {
                this.zza.zzj(zzaliVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zzaliVar.size()) {
            this.zza.zzg(i10, zzaliVar.zzb(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zze(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzalx)) {
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    i12 += zzakn.zza(list.get(i13).longValue());
                }
                this.zza.zzm(i12);
                while (i11 < list.size()) {
                    this.zza.zzf(list.get(i11).longValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zzf(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        zzalx zzalxVar = (zzalx) list;
        if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < zzalxVar.size(); i15++) {
                i14 += zzakn.zza(zzalxVar.zzb(i15));
            }
            this.zza.zzm(i14);
            while (i11 < zzalxVar.size()) {
                this.zza.zzf(zzalxVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zzalxVar.size()) {
            this.zza.zzf(i10, zzalxVar.zzb(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzf(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzald)) {
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    i12 += zzakn.zza(list.get(i13).floatValue());
                }
                this.zza.zzm(i12);
                while (i11 < list.size()) {
                    this.zza.zzb(list.get(i11).floatValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        zzald zzaldVar = (zzald) list;
        if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < zzaldVar.size(); i15++) {
                i14 += zzakn.zza(zzaldVar.zzb(i15));
            }
            this.zza.zzm(i14);
            while (i11 < zzaldVar.size()) {
                this.zza.zzb(zzaldVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zzaldVar.size()) {
            this.zza.zzb(i10, zzaldVar.zzb(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzg(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzaliVar.size(); i13++) {
                    i12 += zzakn.zzc(zzaliVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzaliVar.size()) {
                    this.zza.zzk(zzaliVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzaliVar.size()) {
                this.zza.zzh(i10, zzaliVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzc(list.get(i15).intValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzk(list.get(i11).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzh(i10, list.get(i11).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzh(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzalxVar.size(); i13++) {
                    i12 += zzakn.zzb(zzalxVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzalxVar.size()) {
                    this.zza.zzh(zzalxVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzalxVar.size()) {
                this.zza.zzh(i10, zzalxVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzb(list.get(i15).longValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzh(list.get(i11).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzh(i10, list.get(i11).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzi(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzaliVar.size(); i13++) {
                    i12 += zzakn.zzf(zzaliVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzaliVar.size()) {
                    this.zza.zzj(zzaliVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzaliVar.size()) {
                this.zza.zzg(i10, zzaliVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzf(list.get(i15).intValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzj(list.get(i11).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzg(i10, list.get(i11).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzj(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzalxVar.size(); i13++) {
                    i12 += zzakn.zzc(zzalxVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzalxVar.size()) {
                    this.zza.zzf(zzalxVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzalxVar.size()) {
                this.zza.zzf(i10, zzalxVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzc(list.get(i15).longValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzf(list.get(i11).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzf(i10, list.get(i11).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzk(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzaliVar.size(); i13++) {
                    i12 += zzakn.zzg(zzaliVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzaliVar.size()) {
                    this.zza.zzl(zzaliVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzaliVar.size()) {
                this.zza.zzi(i10, zzaliVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzg(list.get(i15).intValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzl(list.get(i11).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzi(i10, list.get(i11).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzl(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzalxVar.size(); i13++) {
                    i12 += zzakn.zzd(zzalxVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzalxVar.size()) {
                    this.zza.zzg(zzalxVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzalxVar.size()) {
                this.zza.zzg(i10, zzalxVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzd(list.get(i15).longValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzg(list.get(i11).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzg(i10, list.get(i11).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzm(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzali) {
            zzali zzaliVar = (zzali) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzaliVar.size(); i13++) {
                    i12 += zzakn.zzi(zzaliVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzaliVar.size()) {
                    this.zza.zzm(zzaliVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzaliVar.size()) {
                this.zza.zzk(i10, zzaliVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zzi(list.get(i15).intValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzm(list.get(i11).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzk(i10, list.get(i11).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzn(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (list instanceof zzalx) {
            zzalx zzalxVar = (zzalx) list;
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < zzalxVar.size(); i13++) {
                    i12 += zzakn.zze(zzalxVar.zzb(i13));
                }
                this.zza.zzm(i12);
                while (i11 < zzalxVar.size()) {
                    this.zza.zzh(zzalxVar.zzb(i11));
                    i11++;
                }
                return;
            }
            while (i11 < zzalxVar.size()) {
                this.zza.zzh(i10, zzalxVar.zzb(i11));
                i11++;
            }
        } else if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += zzakn.zze(list.get(i15).longValue());
            }
            this.zza.zzm(i14);
            while (i11 < list.size()) {
                this.zza.zzh(list.get(i11).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.zza.zzh(i10, list.get(i11).longValue());
                i11++;
            }
        }
    }

    public static zzakp zza(zzakn zzaknVar) {
        zzakp zzakpVar = zzaknVar.zza;
        return zzakpVar != null ? zzakpVar : new zzakp(zzaknVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, boolean z10) throws IOException {
        this.zza.zzb(i10, z10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof zzajt)) {
            if (z10) {
                this.zza.zzj(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    i12 += zzakn.zza(list.get(i13).booleanValue());
                }
                this.zza.zzm(i12);
                while (i11 < list.size()) {
                    this.zza.zzb(list.get(i11).booleanValue());
                    i11++;
                }
                return;
            }
            while (i11 < list.size()) {
                this.zza.zzb(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        zzajt zzajtVar = (zzajt) list;
        if (z10) {
            this.zza.zzj(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < zzajtVar.size(); i15++) {
                i14 += zzakn.zza(zzajtVar.zzb(i15));
            }
            this.zza.zzm(i14);
            while (i11 < zzajtVar.size()) {
                this.zza.zzb(zzajtVar.zzb(i11));
                i11++;
            }
            return;
        }
        while (i11 < zzajtVar.size()) {
            this.zza.zzb(i10, zzajtVar.zzb(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzb(int i10, int i11) throws IOException {
        this.zza.zzg(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzd(int i10, int i11) throws IOException {
        this.zza.zzg(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zze(int i10, int i11) throws IOException {
        this.zza.zzi(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzf(int i10, int i11) throws IOException {
        this.zza.zzk(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzb(int i10, long j10) throws IOException {
        this.zza.zzh(i10, j10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zze(int i10, long j10) throws IOException {
        this.zza.zzh(i10, j10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzd(int i10, long j10) throws IOException {
        this.zza.zzg(i10, j10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzb(int i10, Object obj, zzanb zzanbVar) throws IOException {
        zzajm zzajmVar = (zzajm) obj;
        this.zza.zzj(i10, 2);
        this.zza.zzm(zzajmVar.zza(zzanbVar));
        zzanbVar.zza((zzanb) zzajmVar, (zzaol) this);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, zzajv zzajvVar) throws IOException {
        this.zza.zzc(i10, zzajvVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzc(int i10, int i11) throws IOException {
        this.zza.zzh(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, List<zzajv> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.zza.zzc(i10, list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzc(int i10, long j10) throws IOException {
        this.zza.zzf(i10, j10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, double d10) throws IOException {
        this.zza.zzb(i10, d10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzb(int i10, List<?> list, zzanb zzanbVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzb(i10, list.get(i11), zzanbVar);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    @Deprecated
    public final void zza(int i10) throws IOException {
        this.zza.zzj(i10, 4);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, int i11) throws IOException {
        this.zza.zzh(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    @Deprecated
    public final void zzb(int i10) throws IOException {
        this.zza.zzj(i10, 3);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zzb(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (list instanceof zzalt) {
            zzalt zzaltVar = (zzalt) list;
            while (i11 < list.size()) {
                Object zza = zzaltVar.zza(i11);
                if (zza instanceof String) {
                    this.zza.zzb(i10, (String) zza);
                } else {
                    this.zza.zzc(i10, (zzajv) zza);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.zza.zzb(i10, list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, long j10) throws IOException {
        this.zza.zzf(i10, j10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, float f10) throws IOException {
        this.zza.zzb(i10, f10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, Object obj, zzanb zzanbVar) throws IOException {
        this.zza.zzj(i10, 3);
        zzanbVar.zza((zzanb) ((zzajm) obj), (zzaol) this);
        this.zza.zzj(i10, 4);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, List<?> list, zzanb zzanbVar) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            zza(i10, list.get(i11), zzanbVar);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final <K, V> void zza(int i10, zzamd<K, V> zzamdVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zzj(i10, 2);
            this.zza.zzm(zzame.zza(zzamdVar, entry.getKey(), entry.getValue()));
            zzame.zza(this.zza, zzamdVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, Object obj) throws IOException {
        if (obj instanceof zzajv) {
            this.zza.zzd(i10, (zzajv) obj);
        } else {
            this.zza.zzb(i10, (zzamm) obj);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaol
    public final void zza(int i10, String str) throws IOException {
        this.zza.zzb(i10, str);
    }
}
