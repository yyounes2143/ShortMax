package com.iab.omid.library.vungle.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.vungle.internal.e;
import com.iab.omid.library.vungle.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f23343a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0346a> f23344b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f23345c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f23346d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f23347e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f23348f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f23349g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<String> f23350h = new HashSet<>();

    /* renamed from: i  reason: collision with root package name */
    private final Map<View, Boolean> f23351i = new WeakHashMap();

    /* renamed from: j  reason: collision with root package name */
    private boolean f23352j;

    /* renamed from: com.iab.omid.library.vungle.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0346a {

        /* renamed from: a  reason: collision with root package name */
        private final e f23353a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f23354b = new ArrayList<>();

        public C0346a(e eVar, String str) {
            this.f23353a = eVar;
            a(str);
        }

        public e a() {
            return this.f23353a;
        }

        public ArrayList<String> b() {
            return this.f23354b;
        }

        public void a(String str) {
            this.f23354b.add(str);
        }
    }

    public View a(String str) {
        return this.f23345c.get(str);
    }

    public C0346a b(View view) {
        C0346a c0346a = this.f23344b.get(view);
        if (c0346a != null) {
            this.f23344b.remove(view);
        }
        return c0346a;
    }

    public String c(View view) {
        if (this.f23343a.size() == 0) {
            return null;
        }
        String str = this.f23343a.get(view);
        if (str != null) {
            this.f23343a.remove(view);
        }
        return str;
    }

    public c d(View view) {
        return this.f23346d.contains(view) ? c.PARENT_VIEW : this.f23352j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.vungle.internal.c c10 = com.iab.omid.library.vungle.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.vungle.adsession.a aVar : c10.a()) {
                View e10 = aVar.e();
                if (aVar.h()) {
                    String c11 = aVar.c();
                    if (e10 != null) {
                        boolean e11 = h.e(e10);
                        if (e11) {
                            this.f23350h.add(c11);
                        }
                        String a10 = a(e10, e11);
                        if (a10 == null) {
                            this.f23347e.add(c11);
                            this.f23343a.put(e10, c11);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f23348f.add(c11);
                            this.f23345c.put(c11, e10);
                            this.f23349g.put(c11, a10);
                        }
                    } else {
                        this.f23348f.add(c11);
                        this.f23349g.put(c11, "noAdView");
                    }
                }
            }
        }
    }

    private Boolean a(View view) {
        if (view.hasWindowFocus()) {
            this.f23351i.remove(view);
            return Boolean.FALSE;
        } else if (this.f23351i.containsKey(view)) {
            return this.f23351i.get(view);
        } else {
            Map<View, Boolean> map = this.f23351i;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String b(String str) {
        return this.f23349g.get(str);
    }

    public HashSet<String> c() {
        return this.f23347e;
    }

    public void d() {
        this.f23352j = true;
    }

    public boolean e(View view) {
        if (this.f23351i.containsKey(view)) {
            this.f23351i.put(view, Boolean.TRUE);
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
                this.f23346d.addAll(hashSet);
                return null;
            }
            return "noWindowFocus";
        }
        return "notAttached";
    }

    public HashSet<String> b() {
        return this.f23348f;
    }

    public boolean c(String str) {
        return this.f23350h.contains(str);
    }

    public void a() {
        this.f23343a.clear();
        this.f23344b.clear();
        this.f23345c.clear();
        this.f23346d.clear();
        this.f23347e.clear();
        this.f23348f.clear();
        this.f23349g.clear();
        this.f23352j = false;
        this.f23350h.clear();
    }

    private void a(com.iab.omid.library.vungle.adsession.a aVar) {
        for (e eVar : aVar.f()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.vungle.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0346a c0346a = this.f23344b.get(view);
        if (c0346a != null) {
            c0346a.a(aVar.c());
        } else {
            this.f23344b.put(view, new C0346a(eVar, aVar.c()));
        }
    }
}
