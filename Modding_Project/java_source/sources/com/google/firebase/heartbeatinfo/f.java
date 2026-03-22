package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.os.Build;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import com.google.android.gms.measurement.internal.g;
import com.google.firebase.datastorage.JavaDataStorage;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import u8.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HeartBeatInfoStorage.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final Preferences.Key<Long> f21006b = PreferencesKeys.longKey("fire-global");

    /* renamed from: c  reason: collision with root package name */
    private static final Preferences.Key<Long> f21007c = PreferencesKeys.longKey("fire-count");

    /* renamed from: d  reason: collision with root package name */
    private static final Preferences.Key<String> f21008d = PreferencesKeys.stringKey("last-used-date");

    /* renamed from: a  reason: collision with root package name */
    private final JavaDataStorage f21009a;

    public f(Context context, String str) {
        this.f21009a = new JavaDataStorage(context, "FirebaseHeartBeat" + str);
    }

    private synchronized long e(MutablePreferences mutablePreferences) {
        long j10;
        try {
            long longValue = ((Long) m8.c.a(mutablePreferences, f21007c, 0L)).longValue();
            String str = "";
            Set hashSet = new HashSet();
            String str2 = null;
            for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str3 : set) {
                        if (str2 != null && str2.compareTo(str3) <= 0) {
                        }
                        str = entry.getKey().getName();
                        hashSet = set;
                        str2 = str3;
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str2);
            mutablePreferences.set(PreferencesKeys.stringSetKey(str), hashSet2);
            j10 = longValue - 1;
            mutablePreferences.set(f21007c, Long.valueOf(j10));
        } catch (Throwable th2) {
            throw th2;
        }
        return j10;
    }

    private synchronized String h(long j10) {
        Instant instant;
        ZoneOffset zoneOffset;
        OffsetDateTime atOffset;
        LocalDateTime localDateTime;
        DateTimeFormatter dateTimeFormatter;
        String format;
        if (Build.VERSION.SDK_INT >= 26) {
            instant = new Date(j10).toInstant();
            zoneOffset = ZoneOffset.UTC;
            atOffset = instant.atOffset(zoneOffset);
            localDateTime = atOffset.toLocalDateTime();
            dateTimeFormatter = DateTimeFormatter.ISO_LOCAL_DATE;
            format = localDateTime.format(dateTimeFormatter);
            return format;
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j10));
    }

    private synchronized Preferences.Key<Set<String>> i(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                for (String str2 : (Set) entry.getValue()) {
                    if (str.equals(str2)) {
                        return PreferencesKeys.stringSetKey(entry.getKey().getName());
                    }
                }
                continue;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(MutablePreferences mutablePreferences) {
        Set a10;
        long j10 = 0;
        for (Map.Entry<Preferences.Key<?>, Object> entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Preferences.Key<?> key = entry.getKey();
                String h10 = h(System.currentTimeMillis());
                if (((Set) entry.getValue()).contains(h10)) {
                    a10 = g.a(new Object[]{h10});
                    mutablePreferences.set(key, a10);
                    j10++;
                } else {
                    mutablePreferences.remove(key);
                }
            }
        }
        if (j10 == 0) {
            mutablePreferences.remove(f21007c);
            return null;
        }
        mutablePreferences.set(f21007c, Long.valueOf(j10));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit l(String str, MutablePreferences mutablePreferences) {
        mutablePreferences.set(f21008d, str);
        p(mutablePreferences, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit m(String str, String str2, Preferences.Key key, MutablePreferences mutablePreferences) {
        Preferences.Key<String> key2 = f21008d;
        if (((String) m8.c.a(mutablePreferences, key2, "")).equals(str)) {
            Preferences.Key<Set<String>> i10 = i(mutablePreferences, str);
            if (i10 == null || i10.getName().equals(str2)) {
                return null;
            }
            u(mutablePreferences, key, str);
            return null;
        }
        Preferences.Key<Long> key3 = f21007c;
        long longValue = ((Long) m8.c.a(mutablePreferences, key3, 0L)).longValue();
        if (longValue + 1 == 30) {
            longValue = e(mutablePreferences);
        }
        HashSet hashSet = new HashSet((Collection) m8.c.a(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
        mutablePreferences.set(key3, Long.valueOf(longValue + 1));
        mutablePreferences.set(key2, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit n(long j10, MutablePreferences mutablePreferences) {
        mutablePreferences.set(f21006b, Long.valueOf(j10));
        return null;
    }

    private synchronized void p(MutablePreferences mutablePreferences, String str) {
        try {
            Preferences.Key<Set<String>> i10 = i(mutablePreferences, str);
            if (i10 == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) m8.c.a(mutablePreferences, i10, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                mutablePreferences.remove(i10);
            } else {
                mutablePreferences.set(i10, hashSet);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void u(MutablePreferences mutablePreferences, Preferences.Key<Set<String>> key, String str) {
        p(mutablePreferences, str);
        HashSet hashSet = new HashSet((Collection) m8.c.a(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f() {
        this.f21009a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k10;
                k10 = f.this.k((MutablePreferences) obj);
                return k10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized List<o> g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String h10 = h(System.currentTimeMillis());
            for (Map.Entry<Preferences.Key<?>, Object> entry : this.f21009a.h().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(h10);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(o.a(entry.getKey().getName(), new ArrayList(hashSet)));
                    }
                }
            }
            t(System.currentTimeMillis());
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    synchronized boolean j(long j10, long j11) {
        return h(j10).equals(h(j11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void o() {
        final String h10 = h(System.currentTimeMillis());
        this.f21009a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit l10;
                l10 = f.this.l(h10, (MutablePreferences) obj);
                return l10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean q(long j10) {
        return r(f21006b, j10);
    }

    synchronized boolean r(Preferences.Key<Long> key, long j10) {
        if (j(((Long) this.f21009a.j(key, -1L)).longValue(), j10)) {
            return false;
        }
        this.f21009a.k(key, Long.valueOf(j10));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void s(long j10, final String str) {
        final String h10 = h(j10);
        final Preferences.Key<Set<String>> stringSetKey = PreferencesKeys.stringSetKey(str);
        this.f21009a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m10;
                m10 = f.this.m(h10, str, stringSetKey, (MutablePreferences) obj);
                return m10;
            }
        });
    }

    synchronized void t(final long j10) {
        this.f21009a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n10;
                n10 = f.n(j10, (MutablePreferences) obj);
                return n10;
            }
        });
    }
}
