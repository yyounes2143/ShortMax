package com.iab.omid.library.applovin.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.applovin.internal.e;
import com.iab.omid.library.applovin.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f22544a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0322a> f22545b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f22546c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f22547d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f22548e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f22549f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f22550g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<String> f22551h = new HashSet<>();

    /* renamed from: i  reason: collision with root package name */
    private final Map<View, Boolean> f22552i = new WeakHashMap();

    /* renamed from: j  reason: collision with root package name */
    private boolean f22553j;

    /* renamed from: com.iab.omid.library.applovin.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0322a {

        /* renamed from: a  reason: collision with root package name */
        private final e f22554a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f22555b = new ArrayList<>();

        public C0322a(e eVar, String str) {
            this.f22554a = eVar;
            a(str);
        }

        public e a() {
            return this.f22554a;
        }

        public ArrayList<String> b() {
            return this.f22555b;
        }

        public void a(String str) {
            this.f22555b.add(str);
        }
    }

    public View a(String str) {
        return this.f22546c.get(str);
    }

    public C0322a b(View view) {
        C0322a c0322a = this.f22545b.get(view);
        if (c0322a != null) {
            this.f22545b.remove(view);
        }
        return c0322a;
    }

    public String c(View view) {
        if (this.f22544a.size() == 0) {
            return null;
        }
        String str = this.f22544a.get(view);
        if (str != null) {
            this.f22544a.remove(view);
        }
        return str;
    }

    public c d(View view) {
        return this.f22547d.contains(view) ? c.PARENT_VIEW : this.f22553j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.applovin.internal.c c10 = com.iab.omid.library.applovin.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.applovin.adsession.a aVar : c10.a()) {
                View e10 = aVar.e();
                if (aVar.h()) {
                    String c11 = aVar.c();
                    if (e10 != null) {
                        boolean e11 = h.e(e10);
                        if (e11) {
                            this.f22551h.add(c11);
                        }
                        String a10 = a(e10, e11);
                        if (a10 == null) {
                            this.f22548e.add(c11);
                            this.f22544a.put(e10, c11);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f22549f.add(c11);
                            this.f22546c.put(c11, e10);
                            this.f22550g.put(c11, a10);
                        }
                    } else {
                        this.f22549f.add(c11);
                        this.f22550g.put(c11, "noAdView");
                    }
                }
            }
        }
    }

    private Boolean a(View view) {
        if (view.hasWindowFocus()) {
            this.f22552i.remove(view);
            return Boolean.FALSE;
        } else if (this.f22552i.containsKey(view)) {
            return this.f22552i.get(view);
        } else {
            Map<View, Boolean> map = this.f22552i;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String b(String str) {
        return this.f22550g.get(str);
    }

    public HashSet<String> c() {
        return this.f22548e;
    }

    public void d() {
        this.f22553j = true;
    }

    public boolean e(View view) {
        if (this.f22552i.containsKey(view)) {
            this.f22552i.put(view, Boolean.TRUE);
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
                this.f22547d.addAll(hashSet);
                return null;
            }
            return "noWindowFocus";
        }
        return "notAttached";
    }

    public HashSet<String> b() {
        return this.f22549f;
    }

    public boolean c(String str) {
        return this.f22551h.contains(str);
    }

    public void a() {
        this.f22544a.clear();
        this.f22545b.clear();
        this.f22546c.clear();
        this.f22547d.clear();
        this.f22548e.clear();
        this.f22549f.clear();
        this.f22550g.clear();
        this.f22553j = false;
        this.f22551h.clear();
    }

    private void a(com.iab.omid.library.applovin.adsession.a aVar) {
        for (e eVar : aVar.f()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.applovin.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0322a c0322a = this.f22545b.get(view);
        if (c0322a != null) {
            c0322a.a(aVar.c());
        } else {
            this.f22545b.put(view, new C0322a(eVar, aVar.c()));
        }
    }
}
