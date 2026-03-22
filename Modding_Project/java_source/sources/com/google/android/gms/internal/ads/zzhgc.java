package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzhgc implements Iterator, Closeable, zzarr {
    private static final zzarq zza = new zzhgb("eof ");
    protected zzarn zzb;
    protected zzhgd zzc;
    zzarq zzd = null;
    long zze = 0;
    long zzf = 0;
    private final List zzg = new ArrayList();

    static {
        zzhgj.zzb(zzhgc.class);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzarq zzarqVar = this.zzd;
        if (zzarqVar == zza) {
            return false;
        }
        if (zzarqVar != null) {
            return true;
        }
        try {
            this.zzd = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.zzd = zza;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("[");
        int i10 = 0;
        while (true) {
            List list = this.zzg;
            if (i10 < list.size()) {
                if (i10 > 0) {
                    sb2.append(";");
                }
                sb2.append(((zzarq) list.get(i10)).toString());
                i10++;
            } else {
                sb2.append("]");
                return sb2.toString();
            }
        }
    }

    @Override // java.util.Iterator
    /* renamed from: zzc */
    public final zzarq next() {
        zzarq zzb;
        zzarq zzarqVar = this.zzd;
        if (zzarqVar != null && zzarqVar != zza) {
            this.zzd = null;
            return zzarqVar;
        }
        zzhgd zzhgdVar = this.zzc;
        if (zzhgdVar != null && this.zze < this.zzf) {
            try {
                synchronized (zzhgdVar) {
                    this.zzc.zze(this.zze);
                    zzb = this.zzb.zzb(this.zzc, this);
                    this.zze = this.zzc.zzb();
                }
                return zzb;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.zzd = zza;
        throw new NoSuchElementException();
    }

    public final List zzd() {
        if (this.zzc != null && this.zzd != zza) {
            return new zzhgi(this.zzg, this);
        }
        return this.zzg;
    }

    public final void zze(zzhgd zzhgdVar, long j10, zzarn zzarnVar) throws IOException {
        this.zzc = zzhgdVar;
        this.zze = zzhgdVar.zzb();
        zzhgdVar.zze(zzhgdVar.zzb() + j10);
        this.zzf = zzhgdVar.zzb();
        this.zzb = zzarnVar;
    }

    public void close() throws IOException {
    }
}
