package com.iab.omid.library.mmadbridge.walking;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.mmadbridge.internal.e;
import com.iab.omid.library.mmadbridge.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f23080a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0338a> f23081b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f23082c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f23083d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f23084e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f23085f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f23086g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<String> f23087h = new HashSet<>();

    /* renamed from: i  reason: collision with root package name */
    private final Map<View, Boolean> f23088i = new WeakHashMap();

    /* renamed from: j  reason: collision with root package name */
    private boolean f23089j;

    /* renamed from: com.iab.omid.library.mmadbridge.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0338a {

        /* renamed from: a  reason: collision with root package name */
        private final e f23090a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f23091b = new ArrayList<>();

        public C0338a(e eVar, String str) {
            this.f23090a = eVar;
            a(str);
        }

        public e a() {
            return this.f23090a;
        }

        public ArrayList<String> b() {
            return this.f23091b;
        }

        public void a(String str) {
            this.f23091b.add(str);
        }
    }

    public View a(String str) {
        return this.f23082c.get(str);
    }

    public C0338a b(View view) {
        C0338a c0338a = this.f23081b.get(view);
        if (c0338a != null) {
            this.f23081b.remove(view);
        }
        return c0338a;
    }

    public String c(View view) {
        if (this.f23080a.size() == 0) {
            return null;
        }
        String str = this.f23080a.get(view);
        if (str != null) {
            this.f23080a.remove(view);
        }
        return str;
    }

    public c d(View view) {
        return this.f23083d.contains(view) ? c.PARENT_VIEW : this.f23089j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.mmadbridge.internal.c c10 = com.iab.omid.library.mmadbridge.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : c10.a()) {
                View c11 = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (c11 != null) {
                        boolean e10 = h.e(c11);
                        if (e10) {
                            this.f23087h.add(adSessionId);
                        }
                        String a10 = a(c11, e10);
                        if (a10 == null) {
                            this.f23084e.add(adSessionId);
                            this.f23080a.put(c11, adSessionId);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f23085f.add(adSessionId);
                            this.f23082c.put(adSessionId, c11);
                            this.f23086g.put(adSessionId, a10);
                        }
                    } else {
                        this.f23085f.add(adSessionId);
                        this.f23086g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    private Boolean a(View view) {
        if (view.hasWindowFocus()) {
            this.f23088i.remove(view);
            return Boolean.FALSE;
        } else if (this.f23088i.containsKey(view)) {
            return this.f23088i.get(view);
        } else {
            Map<View, Boolean> map = this.f23088i;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String b(String str) {
        return this.f23086g.get(str);
    }

    public HashSet<String> c() {
        return this.f23084e;
    }

    public void d() {
        this.f23089j = true;
    }

    public boolean e(View view) {
        if (this.f23088i.containsKey(view)) {
            this.f23088i.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    private String a(View view, boolean z10) {
        if (view.isAttachedToWindow()) {
            if (!a(view).booleanValue() || z10) {
                HashSet hashSet = new HashSet();
                while (view != null) {
                    String a10 = h.a(view);
                    if (a10 != null) {
                        return a10;
                    }
                    hashSet.add(view);
                    ViewParent parent = view.getParent();
                    view = parent instanceof View ? (View) parent : null;
                }
                this.f23083d.addAll(hashSet);
                return null;
            }
            return "noWindowFocus";
        }
        return "notAttached";
    }

    public HashSet<String> b() {
        return this.f23085f;
    }

    @VisibleForTesting
    public boolean c(String str) {
        return this.f23087h.contains(str);
    }

    public void a() {
        this.f23080a.clear();
        this.f23081b.clear();
        this.f23082c.clear();
        this.f23083d.clear();
        this.f23084e.clear();
        this.f23085f.clear();
        this.f23086g.clear();
        this.f23089j = false;
        this.f23087h.clear();
    }

    private void a(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        for (e eVar : aVar.d()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.mmadbridge.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0338a c0338a = this.f23081b.get(view);
        if (c0338a != null) {
            c0338a.a(aVar.getAdSessionId());
        } else {
            this.f23081b.put(view, new C0338a(eVar, aVar.getAdSessionId()));
        }
    }
}
