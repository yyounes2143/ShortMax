package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import h7.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzjr implements zzjv {
    private final ContentResolver zzc;
    private final Uri zzd;
    private final Runnable zze;
    private volatile Map zzi;
    private static final ConcurrentMap zzb = new ConcurrentHashMap();
    public static final String[] zza = {"key", AppMeasurementSdk.ConditionalUserProperty.VALUE};
    @GuardedBy("this")
    private ContentObserver zzf = null;
    private volatile boolean zzg = true;
    private final Object zzh = new Object();
    @GuardedBy("this")
    private final List zzj = new ArrayList();

    private zzjr(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        k.j(contentResolver);
        k.j(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        this.zze = runnable;
    }

    public static zzjr zza(final ContentResolver contentResolver, final Uri uri, final Runnable runnable) {
        zzjr zzjrVar = (zzjr) zzb.computeIfAbsent(uri, new Function() { // from class: com.google.android.gms.internal.measurement.zzjq
            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                return zzjr.zzf(contentResolver, uri, runnable, (Uri) obj);
            }
        });
        try {
            if (zzjrVar.zzg) {
                synchronized (zzjrVar) {
                    if (zzjrVar.zzg) {
                        zzjo zzjoVar = new zzjo(zzjrVar, null);
                        zzjrVar.zzc.registerContentObserver(zzjrVar.zzd, false, zzjoVar);
                        zzjrVar.zzf = zzjoVar;
                        zzjrVar.zzg = false;
                    }
                }
            }
            return zzjrVar;
        } catch (SecurityException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzd() {
        Iterator it = zzb.values().iterator();
        while (it.hasNext()) {
            zzjr zzjrVar = (zzjr) it.next();
            synchronized (zzjrVar) {
                try {
                    if (zzjrVar.zzg) {
                        zzjrVar.zzg = false;
                    } else {
                        ContentObserver contentObserver = zzjrVar.zzf;
                        if (contentObserver != null) {
                            zzjrVar.zzc.unregisterContentObserver(contentObserver);
                            zzjrVar.zzf = null;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            it.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzjr zzf(ContentResolver contentResolver, Uri uri, Runnable runnable, Uri uri2) {
        return new zzjr(contentResolver, uri, runnable);
    }

    public final Map zzb() {
        Map emptyMap;
        Map map = this.zzi;
        if (map == null) {
            synchronized (this.zzh) {
                map = this.zzi;
                if (map == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        emptyMap = (Map) zzjv.zzh(new zzju() { // from class: com.google.android.gms.internal.measurement.zzjp
                            @Override // com.google.android.gms.internal.measurement.zzju
                            public final /* synthetic */ Object zza() {
                                return zzjr.this.zzg();
                            }
                        });
                    } catch (SQLiteException | IllegalStateException | SecurityException e10) {
                        Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e10);
                        emptyMap = Collections.emptyMap();
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    this.zzi = emptyMap;
                    map = emptyMap;
                }
            }
        }
        if (map != null) {
            return map;
        }
        return Collections.emptyMap();
    }

    public final void zzc() {
        synchronized (this.zzh) {
            this.zzi = null;
            this.zze.run();
        }
        synchronized (this) {
            try {
                for (zzjs zzjsVar : this.zzj) {
                    zzjsVar.zza();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjv
    public final /* bridge */ /* synthetic */ Object zze(String str) {
        return (String) zzb().get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map zzg() {
        Map emptyMap;
        Cursor query;
        Map hashMap;
        Map emptyMap2;
        ContentResolver contentResolver = this.zzc;
        Uri uri = this.zzd;
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (acquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.emptyMap();
            }
            try {
                query = acquireUnstableContentProviderClient.query(uri, zza, null, null, null);
                try {
                } catch (Throwable th2) {
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (RemoteException e10) {
                Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e10);
                emptyMap = Collections.emptyMap();
            }
            if (query == null) {
                Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                emptyMap = Collections.emptyMap();
                acquireUnstableContentProviderClient.release();
                return emptyMap;
            }
            int count = query.getCount();
            if (count == 0) {
                emptyMap2 = Collections.emptyMap();
            } else {
                if (count <= 256) {
                    hashMap = new ArrayMap(count);
                } else {
                    hashMap = new HashMap(count, 1.0f);
                }
                while (query.moveToNext()) {
                    hashMap.put(query.getString(0), query.getString(1));
                }
                if (!query.isAfterLast()) {
                    Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                    emptyMap2 = Collections.emptyMap();
                } else {
                    query.close();
                    acquireUnstableContentProviderClient.release();
                    return hashMap;
                }
            }
            query.close();
            acquireUnstableContentProviderClient.release();
            return emptyMap2;
        } catch (Throwable th4) {
            acquireUnstableContentProviderClient.release();
            throw th4;
        }
    }
}
