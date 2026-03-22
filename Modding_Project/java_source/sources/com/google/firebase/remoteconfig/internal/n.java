package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
/* compiled from: ConfigGetParameterHandler.java */
/* loaded from: classes5.dex */
public class n {
    @VisibleForTesting(otherwise = 3)

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f21428e = Charset.forName("UTF-8");

    /* renamed from: f  reason: collision with root package name */
    static final Pattern f21429f = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: g  reason: collision with root package name */
    static final Pattern f21430g = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: a  reason: collision with root package name */
    private final Set<BiConsumer<String, g>> f21431a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final Executor f21432b;

    /* renamed from: c  reason: collision with root package name */
    private final f f21433c;

    /* renamed from: d  reason: collision with root package name */
    private final f f21434d;

    public n(Executor executor, f fVar, f fVar2) {
        this.f21432b = executor;
        this.f21433c = fVar;
        this.f21434d = fVar2;
    }

    private void c(final String str, final g gVar) {
        if (gVar == null) {
            return;
        }
        synchronized (this.f21431a) {
            try {
                for (final BiConsumer<String, g> biConsumer : this.f21431a) {
                    this.f21432b.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            BiConsumer.this.accept(str, gVar);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    private static g e(f fVar) {
        return fVar.f();
    }

    private static Set<String> f(f fVar) {
        HashSet hashSet = new HashSet();
        g e10 = e(fVar);
        if (e10 == null) {
            return hashSet;
        }
        Iterator<String> keys = e10.g().keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    @Nullable
    private static String g(f fVar, String str) {
        g e10 = e(fVar);
        if (e10 == null) {
            return null;
        }
        try {
            return e10.g().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    private static void j(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    public void b(BiConsumer<String, g> biConsumer) {
        synchronized (this.f21431a) {
            this.f21431a.add(biConsumer);
        }
    }

    public Map<String, f9.j> d() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(f(this.f21433c));
        hashSet.addAll(f(this.f21434d));
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            hashMap.put(str, h(str));
        }
        return hashMap;
    }

    public f9.j h(String str) {
        String g10 = g(this.f21433c, str);
        if (g10 != null) {
            c(str, e(this.f21433c));
            return new u(g10, 2);
        }
        String g11 = g(this.f21434d, str);
        if (g11 != null) {
            return new u(g11, 1);
        }
        j(str, "FirebaseRemoteConfigValue");
        return new u("", 0);
    }
}
