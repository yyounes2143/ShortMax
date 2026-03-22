package com.iab.omid.library.inmobi.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.inmobi.internal.e;
import com.iab.omid.library.inmobi.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f22945a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0334a> f22946b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f22947c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f22948d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f22949e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f22950f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f22951g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<String> f22952h = new HashSet<>();

    /* renamed from: i  reason: collision with root package name */
    private final Map<View, Boolean> f22953i = new WeakHashMap();

    /* renamed from: j  reason: collision with root package name */
    private boolean f22954j;

    /* renamed from: com.iab.omid.library.inmobi.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0334a {

        /* renamed from: a  reason: collision with root package name */
        private final e f22955a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f22956b = new ArrayList<>();

        public C0334a(e eVar, String str) {
            this.f22955a = eVar;
            a(str);
        }

        public e a() {
            return this.f22955a;
        }

        public ArrayList<String> b() {
            return this.f22956b;
        }

        public void a(String str) {
            this.f22956b.add(str);
        }
    }

    public View a(String str) {
        return this.f22947c.get(str);
    }

    public C0334a b(View view) {
        C0334a c0334a = this.f22946b.get(view);
        if (c0334a != null) {
            this.f22946b.remove(view);
        }
        return c0334a;
    }

    public String c(View view) {
        if (this.f22945a.size() == 0) {
            return null;
        }
        String str = this.f22945a.get(view);
        if (str != null) {
            this.f22945a.remove(view);
        }
        return str;
    }

    public c d(View view) {
        return this.f22948d.contains(view) ? c.PARENT_VIEW : this.f22954j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.inmobi.internal.c c10 = com.iab.omid.library.inmobi.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.inmobi.adsession.a aVar : c10.a()) {
                View e10 = aVar.e();
                if (aVar.h()) {
                    String c11 = aVar.c();
                    if (e10 != null) {
                        boolean e11 = h.e(e10);
                        if (e11) {
                            this.f22952h.add(c11);
                        }
                        String a10 = a(e10, e11);
                        if (a10 == null) {
                            this.f22949e.add(c11);
                            this.f22945a.put(e10, c11);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f22950f.add(c11);
                            this.f22947c.put(c11, e10);
                            this.f22951g.put(c11, a10);
                        }
                    } else {
                        this.f22950f.add(c11);
                        this.f22951g.put(c11, "noAdView");
                    }
                }
            }
        }
    }

    private Boolean a(View view) {
        if (view.hasWindowFocus()) {
            this.f22953i.remove(view);
            return Boolean.FALSE;
        } else if (this.f22953i.containsKey(view)) {
            return this.f22953i.get(view);
        } else {
            Map<View, Boolean> map = this.f22953i;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String b(String str) {
        return this.f22951g.get(str);
    }

    public HashSet<String> c() {
        return this.f22949e;
    }

    public void d() {
        this.f22954j = true;
    }

    public boolean e(View view) {
        if (this.f22953i.containsKey(view)) {
            this.f22953i.put(view, Boolean.TRUE);
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
                this.f22948d.addAll(hashSet);
                return null;
            }
            return "noWindowFocus";
        }
        return "notAttached";
    }

    public HashSet<String> b() {
        return this.f22950f;
    }

    public boolean c(String str) {
        return this.f22952h.contains(str);
    }

    public void a() {
        this.f22945a.clear();
        this.f22946b.clear();
        this.f22947c.clear();
        this.f22948d.clear();
        this.f22949e.clear();
        this.f22950f.clear();
        this.f22951g.clear();
        this.f22954j = false;
        this.f22952h.clear();
    }

    private void a(com.iab.omid.library.inmobi.adsession.a aVar) {
        for (e eVar : aVar.f()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.inmobi.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0334a c0334a = this.f22946b.get(view);
        if (c0334a != null) {
            c0334a.a(aVar.c());
        } else {
            this.f22946b.put(view, new C0334a(eVar, aVar.c()));
        }
    }
}
