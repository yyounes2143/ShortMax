package k5;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import c5.i;
import com.bytedance.vodsetting.Module;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import f5.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import l5.a;
/* compiled from: SQLiteEventStore.java */
@WorkerThread
/* loaded from: classes4.dex */
public class m0 implements k5.d, l5.a, k5.c {

    /* renamed from: f  reason: collision with root package name */
    private static final a5.c f60625f = a5.c.b("proto");

    /* renamed from: a  reason: collision with root package name */
    private final v0 f60626a;

    /* renamed from: b  reason: collision with root package name */
    private final m5.a f60627b;

    /* renamed from: c  reason: collision with root package name */
    private final m5.a f60628c;

    /* renamed from: d  reason: collision with root package name */
    private final e f60629d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<String> f60630e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes4.dex */
    public interface b<T, U> {
        U apply(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final String f60631a;

        /* renamed from: b  reason: collision with root package name */
        final String f60632b;

        private c(String str, String str2) {
            this.f60631a = str;
            this.f60632b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes4.dex */
    public interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(m5.a aVar, m5.a aVar2, e eVar, v0 v0Var, ls.a<String> aVar3) {
        this.f60626a = v0Var;
        this.f60627b = aVar;
        this.f60628c = aVar2;
        this.f60629d = eVar;
        this.f60630e = aVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SQLiteDatabase A0(Throwable th2) {
        throw new SynchronizationException("Timed out while trying to open db.", th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long C0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f5.e D0(long j10, Cursor cursor) {
        cursor.moveToNext();
        return f5.e.c().c(cursor.getLong(0)).b(j10).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f5.e E0(final long j10, SQLiteDatabase sQLiteDatabase) {
        return (f5.e) f1(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() { // from class: k5.d0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                f5.e D0;
                D0 = m0.D0(j10, (Cursor) obj);
                return D0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long F0(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean G0(c5.p pVar, SQLiteDatabase sQLiteDatabase) {
        Long m02 = m0(sQLiteDatabase, pVar);
        if (m02 == null) {
            return Boolean.FALSE;
        }
        return (Boolean) f1(h0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m02.toString()}), new b() { // from class: k5.u
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List H0(SQLiteDatabase sQLiteDatabase) {
        return (List) f1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: k5.k0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                List I0;
                I0 = m0.I0((Cursor) obj);
                return I0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List I0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(c5.p.a().b(cursor.getString(1)).d(n5.a.b(cursor.getInt(2))).c(Z0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List K0(c5.p pVar, SQLiteDatabase sQLiteDatabase) {
        Priority[] values;
        List<k> X0 = X0(sQLiteDatabase, pVar, this.f60629d.d());
        for (Priority priority : Priority.values()) {
            if (priority != pVar.d()) {
                int d10 = this.f60629d.d() - X0.size();
                if (d10 <= 0) {
                    break;
                }
                X0.addAll(X0(sQLiteDatabase, pVar.f(priority), d10));
            }
        }
        return s0(X0, Y0(sQLiteDatabase, X0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ f5.a L0(Map map, a.C0741a c0741a, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            LogEventDropped.Reason d02 = d0(cursor.getInt(1));
            long j10 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(LogEventDropped.c().c(d02).b(j10).a());
        }
        a1(c0741a, map);
        return c0741a.e(l0()).d(i0()).c(this.f60630e.get()).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ f5.a M0(String str, final Map map, final a.C0741a c0741a, SQLiteDatabase sQLiteDatabase) {
        return (f5.a) f1(sQLiteDatabase.rawQuery(str, new String[0]), new b() { // from class: k5.a0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                f5.a L0;
                L0 = m0.this.L0(map, c0741a, (Cursor) obj);
                return L0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object N0(List list, c5.p pVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z10 = false;
            long j10 = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z10 = true;
            }
            i.a o10 = c5.i.a().n(cursor.getString(1)).i(cursor.getLong(2)).o(cursor.getLong(3));
            if (z10) {
                o10.h(new c5.h(d1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                o10.h(new c5.h(d1(cursor.getString(4)), b1(j10)));
            }
            if (!cursor.isNull(6)) {
                o10.g(Integer.valueOf(cursor.getInt(6)));
            }
            if (!cursor.isNull(8)) {
                o10.l(Integer.valueOf(cursor.getInt(8)));
            }
            if (!cursor.isNull(9)) {
                o10.m(cursor.getString(9));
            }
            if (!cursor.isNull(10)) {
                o10.j(cursor.getBlob(10));
            }
            if (!cursor.isNull(11)) {
                o10.k(cursor.getBlob(11));
            }
            list.add(k.a(j10, pVar, o10.d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object O0(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j10));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j10), set);
            }
            set.add(new c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long P0(c5.i iVar, c5.p pVar, SQLiteDatabase sQLiteDatabase) {
        boolean z10;
        byte[] bArr;
        if (o0()) {
            l(1L, LogEventDropped.Reason.CACHE_FULL, iVar.n());
            return -1L;
        }
        long f02 = f0(sQLiteDatabase, pVar);
        int e10 = this.f60629d.e();
        byte[] a10 = iVar.e().a();
        if (a10.length <= e10) {
            z10 = true;
        } else {
            z10 = false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(f02));
        contentValues.put("transport_name", iVar.n());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.o()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put(Module.ResponseKey.Code, iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        if (z10) {
            bArr = a10;
        } else {
            bArr = new byte[0];
        }
        contentValues.put("payload", bArr);
        contentValues.put("product_id", iVar.l());
        contentValues.put("pseudonymous_id", iVar.m());
        contentValues.put("experiment_ids_clear_blob", iVar.g());
        contentValues.put("experiment_ids_encrypted_blob", iVar.h());
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            int ceil = (int) Math.ceil(a10.length / e10);
            for (int i10 = 1; i10 <= ceil; i10++) {
                byte[] copyOfRange = Arrays.copyOfRange(a10, (i10 - 1) * e10, Math.min(i10 * e10, a10.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : iVar.k().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] Q0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i10 += blob.length;
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            byte[] bArr2 = (byte[]) arrayList.get(i12);
            System.arraycopy(bArr2, 0, bArr, i11, bArr2.length);
            i11 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object R0(Cursor cursor) {
        while (cursor.moveToNext()) {
            int i10 = cursor.getInt(0);
            l(i10, LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object S0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        f1(sQLiteDatabase.rawQuery(str2, null), new b() { // from class: k5.v
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object R0;
                R0 = m0.this.R0((Cursor) obj);
                return R0;
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean T0(Cursor cursor) {
        boolean z10;
        if (cursor.getCount() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object U0(String str, LogEventDropped.Reason reason, long j10, SQLiteDatabase sQLiteDatabase) {
        if (!((Boolean) f1(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())}), new b() { // from class: k5.y
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Boolean T0;
                T0 = m0.T0((Cursor) obj);
                return T0;
            }
        })).booleanValue()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j10));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        } else {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())});
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object V0(long j10, c5.p pVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(n5.a.a(pVar.d()))}) < 1) {
            contentValues.put("backend_name", pVar.b());
            contentValues.put(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, Integer.valueOf(n5.a.a(pVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object W0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f60627b.getTime()).execute();
        return null;
    }

    private List<k> X0(SQLiteDatabase sQLiteDatabase, final c5.p pVar, int i10) {
        final ArrayList arrayList = new ArrayList();
        Long m02 = m0(sQLiteDatabase, pVar);
        if (m02 == null) {
            return arrayList;
        }
        f1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", Module.ResponseKey.Code, "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{m02.toString()}, null, null, null, String.valueOf(i10)), new b() { // from class: k5.x
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object N0;
                N0 = m0.this.N0(arrayList, pVar, (Cursor) obj);
                return N0;
            }
        });
        return arrayList;
    }

    private Map<Long, Set<c>> Y0(SQLiteDatabase sQLiteDatabase, List<k> list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb2 = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(list.get(i10).c());
            if (i10 < list.size() - 1) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        f1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE}, sb2.toString(), null, null, null, null), new b() { // from class: k5.z
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object O0;
                O0 = m0.O0(hashMap, (Cursor) obj);
                return O0;
            }
        });
        return hashMap;
    }

    private static byte[] Z0(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private void a1(a.C0741a c0741a, Map<String, List<LogEventDropped>> map) {
        for (Map.Entry<String, List<LogEventDropped>> entry : map.entrySet()) {
            c0741a.a(f5.c.c().c(entry.getKey()).b(entry.getValue()).a());
        }
    }

    private byte[] b1(long j10) {
        return (byte[]) f1(h0().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), new b() { // from class: k5.b0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                byte[] Q0;
                Q0 = m0.Q0((Cursor) obj);
                return Q0;
            }
        });
    }

    private <T> T c1(d<T> dVar, b<Throwable, T> bVar) {
        long time = this.f60628c.getTime();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f60628c.getTime() >= this.f60629d.b() + time) {
                    return bVar.apply(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private LogEventDropped.Reason d0(int i10) {
        LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
        if (i10 == reason.getNumber()) {
            return reason;
        }
        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
        if (i10 == reason2.getNumber()) {
            return reason2;
        }
        LogEventDropped.Reason reason3 = LogEventDropped.Reason.CACHE_FULL;
        if (i10 == reason3.getNumber()) {
            return reason3;
        }
        LogEventDropped.Reason reason4 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
        if (i10 == reason4.getNumber()) {
            return reason4;
        }
        LogEventDropped.Reason reason5 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
        if (i10 == reason5.getNumber()) {
            return reason5;
        }
        LogEventDropped.Reason reason6 = LogEventDropped.Reason.INVALID_PAYLOD;
        if (i10 == reason6.getNumber()) {
            return reason6;
        }
        LogEventDropped.Reason reason7 = LogEventDropped.Reason.SERVER_ERROR;
        if (i10 == reason7.getNumber()) {
            return reason7;
        }
        g5.a.b("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i10));
        return reason;
    }

    private static a5.c d1(@Nullable String str) {
        if (str == null) {
            return f60625f;
        }
        return a5.c.b(str);
    }

    private void e0(final SQLiteDatabase sQLiteDatabase) {
        c1(new d() { // from class: k5.l
            @Override // k5.m0.d
            public final Object a() {
                Object y02;
                y02 = m0.y0(sQLiteDatabase);
                return y02;
            }
        }, new b() { // from class: k5.w
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object z02;
                z02 = m0.z0((Throwable) obj);
                return z02;
            }
        });
    }

    private static String e1(Iterable<k> iterable) {
        StringBuilder sb2 = new StringBuilder("(");
        Iterator<k> it = iterable.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().c());
            if (it.hasNext()) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    private long f0(SQLiteDatabase sQLiteDatabase, c5.p pVar) {
        Long m02 = m0(sQLiteDatabase, pVar);
        if (m02 != null) {
            return m02.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", pVar.b());
        contentValues.put(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, Integer.valueOf(n5.a.a(pVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (pVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(pVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    @VisibleForTesting
    static <T> T f1(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    private long getPageSize() {
        return h0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private f5.b i0() {
        return f5.b.b().b(f5.d.c().b(g0()).c(e.f60608a.f()).a()).a();
    }

    private long j0() {
        return h0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private f5.e l0() {
        final long time = this.f60627b.getTime();
        return (f5.e) n0(new b() { // from class: k5.c0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                f5.e E0;
                E0 = m0.E0(time, (SQLiteDatabase) obj);
                return E0;
            }
        });
    }

    @Nullable
    private Long m0(SQLiteDatabase sQLiteDatabase, c5.p pVar) {
        StringBuilder sb2 = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(pVar.b(), String.valueOf(n5.a.a(pVar.d()))));
        if (pVar.c() != null) {
            sb2.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(pVar.c(), 0));
        } else {
            sb2.append(" and extras is null");
        }
        return (Long) f1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb2.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: k5.n
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Long F0;
                F0 = m0.F0((Cursor) obj);
                return F0;
            }
        });
    }

    private boolean o0() {
        if (j0() * getPageSize() >= this.f60629d.f()) {
            return true;
        }
        return false;
    }

    private List<k> s0(List<k> list, Map<Long, Set<c>> map) {
        ListIterator<k> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            k next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.c()))) {
                i.a p10 = next.b().p();
                for (c cVar : map.get(Long.valueOf(next.c()))) {
                    p10.c(cVar.f60631a, cVar.f60632b);
                }
                listIterator.set(k.a(next.c(), next.d(), p10.d()));
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object t0(Cursor cursor) {
        while (cursor.moveToNext()) {
            int i10 = cursor.getInt(0);
            l(i10, LogEventDropped.Reason.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer w0(long j10, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j10)};
        f1(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() { // from class: k5.s
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object t02;
                t02 = m0.this.t0((Cursor) obj);
                return t02;
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object y0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object z0(Throwable th2) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th2);
    }

    @Override // k5.d
    public void O(Iterable<k> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        h0().compileStatement("DELETE FROM events WHERE _id in " + e1(iterable)).execute();
    }

    @Override // k5.d
    public Iterable<c5.p> Q() {
        return (Iterable) n0(new b() { // from class: k5.g0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                List H0;
                H0 = m0.H0((SQLiteDatabase) obj);
                return H0;
            }
        });
    }

    @Override // k5.d
    public Iterable<k> X(final c5.p pVar) {
        return (Iterable) n0(new b() { // from class: k5.m
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                List K0;
                K0 = m0.this.K0(pVar, (SQLiteDatabase) obj);
                return K0;
            }
        });
    }

    @Override // l5.a
    public <T> T a(a.InterfaceC0862a<T> interfaceC0862a) {
        SQLiteDatabase h02 = h0();
        e0(h02);
        try {
            T execute = interfaceC0862a.execute();
            h02.setTransactionSuccessful();
            return execute;
        } finally {
            h02.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f60626a.close();
    }

    @Override // k5.c
    public void d() {
        n0(new b() { // from class: k5.q
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object W0;
                W0 = m0.this.W0((SQLiteDatabase) obj);
                return W0;
            }
        });
    }

    @Override // k5.d
    @Nullable
    public k e(final c5.p pVar, final c5.i iVar) {
        g5.a.c("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", pVar.d(), iVar.n(), pVar.b());
        long longValue = ((Long) n0(new b() { // from class: k5.i0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Long P0;
                P0 = m0.this.P0(iVar, pVar, (SQLiteDatabase) obj);
                return P0;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return k.a(longValue, pVar, iVar);
    }

    @VisibleForTesting
    long g0() {
        return j0() * getPageSize();
    }

    @VisibleForTesting
    SQLiteDatabase h0() {
        final v0 v0Var = this.f60626a;
        Objects.requireNonNull(v0Var);
        return (SQLiteDatabase) c1(new d() { // from class: k5.e0
            @Override // k5.m0.d
            public final Object a() {
                return v0.this.getWritableDatabase();
            }
        }, new b() { // from class: k5.f0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                SQLiteDatabase A0;
                A0 = m0.A0((Throwable) obj);
                return A0;
            }
        });
    }

    @Override // k5.d
    public long j(c5.p pVar) {
        return ((Long) f1(h0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(n5.a.a(pVar.d()))}), new b() { // from class: k5.h0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Long C0;
                C0 = m0.C0((Cursor) obj);
                return C0;
            }
        })).longValue();
    }

    @Override // k5.c
    public f5.a k() {
        final a.C0741a e10 = f5.a.e();
        final HashMap hashMap = new HashMap();
        return (f5.a) n0(new b() { // from class: k5.t
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                f5.a M0;
                M0 = m0.this.M0(r2, hashMap, e10, (SQLiteDatabase) obj);
                return M0;
            }
        });
    }

    @Override // k5.d
    public void k0(Iterable<k> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + e1(iterable);
        n0(new b() { // from class: k5.l0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object S0;
                S0 = m0.this.S0(str, r3, (SQLiteDatabase) obj);
                return S0;
            }
        });
    }

    @Override // k5.c
    public void l(final long j10, final LogEventDropped.Reason reason, final String str) {
        n0(new b() { // from class: k5.r
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object U0;
                U0 = m0.U0(str, reason, j10, (SQLiteDatabase) obj);
                return U0;
            }
        });
    }

    @Override // k5.d
    public boolean n(final c5.p pVar) {
        return ((Boolean) n0(new b() { // from class: k5.o
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Boolean G0;
                G0 = m0.this.G0(pVar, (SQLiteDatabase) obj);
                return G0;
            }
        })).booleanValue();
    }

    @VisibleForTesting
    <T> T n0(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase h02 = h0();
        h02.beginTransaction();
        try {
            T apply = bVar.apply(h02);
            h02.setTransactionSuccessful();
            return apply;
        } finally {
            h02.endTransaction();
        }
    }

    @Override // k5.d
    public void v0(final c5.p pVar, final long j10) {
        n0(new b() { // from class: k5.p
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Object V0;
                V0 = m0.V0(j10, pVar, (SQLiteDatabase) obj);
                return V0;
            }
        });
    }

    @Override // k5.d
    public int z() {
        final long time = this.f60627b.getTime() - this.f60629d.c();
        return ((Integer) n0(new b() { // from class: k5.j0
            @Override // k5.m0.b
            public final Object apply(Object obj) {
                Integer w02;
                w02 = m0.this.w0(time, (SQLiteDatabase) obj);
                return w02;
            }
        })).intValue();
    }
}
