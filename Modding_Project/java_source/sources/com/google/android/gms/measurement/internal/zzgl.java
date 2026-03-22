package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzgl extends zzg {
    private static final String[] zza = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};
    private final zzgj zzb;
    private boolean zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgl(zzic zzicVar) {
        super(zzicVar);
        Context zzaY = this.zzu.zzaY();
        this.zzu.zzc();
        this.zzb = new zzgj(this, zzaY, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015f  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzs(int r18, byte[] r19) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgl.zzs(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return false;
    }

    @WorkerThread
    public final void zzh() {
        int delete;
        zzg();
        try {
            SQLiteDatabase zzp = zzp();
            if (zzp != null && (delete = zzp.delete("messages", null, null)) > 0) {
                this.zzu.zzaV().zzk().zzb("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e10) {
            this.zzu.zzaV().zzb().zzb("Error resetting local analytics data. error", e10);
        }
    }

    public final boolean zzi(zzbg zzbgVar) {
        Parcel obtain = Parcel.obtain();
        zzbh.zza(zzbgVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzu.zzaV().zzc().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zzs(0, marshall);
    }

    public final boolean zzj(zzpl zzplVar) {
        Parcel obtain = Parcel.obtain();
        zzpm.zza(zzplVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzu.zzaV().zzc().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zzs(1, marshall);
    }

    public final boolean zzk(zzah zzahVar) {
        zzic zzicVar = this.zzu;
        byte[] zzae = zzicVar.zzk().zzae(zzahVar);
        if (zzae.length > 131072) {
            zzicVar.zzaV().zzc().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zzs(2, zzae);
    }

    public final boolean zzl(zzbe zzbeVar) {
        zzic zzicVar = this.zzu;
        byte[] zzae = zzicVar.zzk().zzae(zzbeVar);
        if (zzae == null) {
            zzicVar.zzaV().zzc().zza("Null default event parameters; not writing to database");
            return false;
        } else if (zzae.length > 131072) {
            zzicVar.zzaV().zzc().zza("Default event parameters too long for local database. Sending directly to service");
            return false;
        } else {
            return zzs(4, zzae);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x02fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x02db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x035a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x035a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzm(int r29) {
        /*
            Method dump skipped, instructions count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgl.zzm(int):java.util.List");
    }

    @WorkerThread
    public final boolean zzn() {
        return zzs(3, new byte[0]);
    }

    @WorkerThread
    public final boolean zzo() {
        zzg();
        if (!this.zzc && zzq()) {
            int i10 = 5;
            int i11 = 0;
            while (true) {
                if (i11 < 5) {
                    SQLiteDatabase sQLiteDatabase = null;
                    try {
                        try {
                            try {
                                SQLiteDatabase zzp = zzp();
                                if (zzp == null) {
                                    this.zzc = true;
                                } else {
                                    zzp.beginTransaction();
                                    zzp.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                                    zzp.setTransactionSuccessful();
                                    zzp.endTransaction();
                                    zzp.close();
                                    return true;
                                }
                            } catch (SQLiteException e10) {
                                if (0 != 0) {
                                    try {
                                        if (sQLiteDatabase.inTransaction()) {
                                            sQLiteDatabase.endTransaction();
                                        }
                                    } catch (Throwable th2) {
                                        if (0 != 0) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th2;
                                    }
                                }
                                this.zzu.zzaV().zzb().zzb("Error deleting app launch break from local database", e10);
                                this.zzc = true;
                                if (0 != 0) {
                                    sQLiteDatabase.close();
                                }
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            SystemClock.sleep(i10);
                            i10 += 20;
                            if (0 == 0) {
                            }
                            sQLiteDatabase.close();
                        }
                    } catch (SQLiteFullException e11) {
                        this.zzu.zzaV().zzb().zzb("Error deleting app launch break from local database", e11);
                        this.zzc = true;
                        if (0 == 0) {
                        }
                        sQLiteDatabase.close();
                    }
                } else {
                    this.zzu.zzaV().zze().zza("Error deleting app launch break from local database in reasonable time");
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    @VisibleForTesting
    @WorkerThread
    final SQLiteDatabase zzp() throws SQLiteException {
        if (this.zzc) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzb.getWritableDatabase();
        if (writableDatabase == null) {
            this.zzc = true;
            return null;
        }
        return writableDatabase;
    }

    @VisibleForTesting
    final boolean zzq() {
        zzic zzicVar = this.zzu;
        Context zzaY = zzicVar.zzaY();
        zzicVar.zzc();
        return zzaY.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
