package com.iab.omid.library.appodeal.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.appodeal.internal.e;
import com.iab.omid.library.appodeal.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f22680a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0326a> f22681b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f22682c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f22683d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f22684e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f22685f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f22686g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<String> f22687h = new HashSet<>();

    /* renamed from: i  reason: collision with root package name */
    private final Map<View, Boolean> f22688i = new WeakHashMap();

    /* renamed from: j  reason: collision with root package name */
    private boolean f22689j;

    /* renamed from: com.iab.omid.library.appodeal.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0326a {

        /* renamed from: a  reason: collision with root package name */
        private final e f22690a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f22691b = new ArrayList<>();

        public C0326a(e eVar, String str) {
            this.f22690a = eVar;
            a(str);
        }

        public e a() {
            return this.f22690a;
        }

        public ArrayList<String> b() {
            return this.f22691b;
        }

        public void a(String str) {
            this.f22691b.add(str);
        }
    }

    public View a(String str) {
        return this.f22682c.get(str);
    }

    public C0326a b(View view) {
        C0326a c0326a = this.f22681b.get(view);
        if (c0326a != null) {
            this.f22681b.remove(view);
        }
        return c0326a;
    }

    public String c(View view) {
        if (this.f22680a.size() == 0) {
            return null;
        }
        String str = this.f22680a.get(view);
        if (str != null) {
            this.f22680a.remove(view);
        }
        return str;
    }

    public c d(View view) {
        return this.f22683d.contains(view) ? c.PARENT_VIEW : this.f22689j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.appodeal.internal.c c10 = com.iab.omid.library.appodeal.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.appodeal.adsession.a aVar : c10.a()) {
                View e10 = aVar.e();
                if (aVar.h()) {
                    String c11 = aVar.c();
                    if (e10 != null) {
                        boolean e11 = h.e(e10);
                        if (e11) {
                            this.f22687h.add(c11);
                        }
                        String a10 = a(e10, e11);
                        if (a10 == null) {
                            this.f22684e.add(c11);
                            this.f22680a.put(e10, c11);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f22685f.add(c11);
                            this.f22682c.put(c11, e10);
                            this.f22686g.put(c11, a10);
                        }
                    } else {
                        this.f22685f.add(c11);
                        this.f22686g.put(c11, "noAdView");
                    }
                }
            }
        }
    }

    private Boolean a(View view) {
        if (view.hasWindowFocus()) {
            this.f22688i.remove(view);
            return Boolean.FALSE;
        } else if (this.f22688i.containsKey(view)) {
            return this.f22688i.get(view);
        } else {
            Map<View, Boolean> map = this.f22688i;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String b(String str) {
        return this.f22686g.get(str);
    }

    public HashSet<String> c() {
        return this.f22684e;
    }

    public void d() {
        this.f22689j = true;
    }

    public boolean e(View view) {
        if (this.f22688i.containsKey(view)) {
            this.f22688i.put(view, Boolean.TRUE);
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
                this.f22683d.addAll(hashSet);
                return null;
            }
            return "noWindowFocus";
        }
        return "notAttached";
    }

    public HashSet<String> b() {
        return this.f22685f;
    }

    public boolean c(String str) {
        return this.f22687h.contains(str);
    }

    public void a() {
        this.f22680a.clear();
        this.f22681b.clear();
        this.f22682c.clear();
        this.f22683d.clear();
        this.f22684e.clear();
        this.f22685f.clear();
        this.f22686g.clear();
        this.f22689j = false;
        this.f22687h.clear();
    }

    private void a(com.iab.omid.library.appodeal.adsession.a aVar) {
        for (e eVar : aVar.f()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.appodeal.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0326a c0326a = this.f22681b.get(view);
        if (c0326a != null) {
            c0326a.a(aVar.c());
        } else {
            this.f22681b.put(view, new C0326a(eVar, aVar.c()));
        }
    }
}
