package com.iab.omid.library.unity3d.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.unity3d.internal.e;
import com.iab.omid.library.unity3d.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f23209a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0342a> f23210b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f23211c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f23212d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f23213e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f23214f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f23215g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Map<View, Boolean> f23216h = new WeakHashMap();

    /* renamed from: i  reason: collision with root package name */
    private boolean f23217i;

    /* renamed from: com.iab.omid.library.unity3d.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0342a {

        /* renamed from: a  reason: collision with root package name */
        private final e f23218a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f23219b = new ArrayList<>();

        public C0342a(e eVar, String str) {
            this.f23218a = eVar;
            a(str);
        }

        public e a() {
            return this.f23218a;
        }

        public ArrayList<String> b() {
            return this.f23219b;
        }

        public void a(String str) {
            this.f23219b.add(str);
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f23216h.remove(view);
            return Boolean.FALSE;
        } else if (this.f23216h.containsKey(view)) {
            return this.f23216h.get(view);
        } else {
            Map<View, Boolean> map = this.f23216h;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public View a(String str) {
        return this.f23211c.get(str);
    }

    public C0342a c(View view) {
        C0342a c0342a = this.f23210b.get(view);
        if (c0342a != null) {
            this.f23210b.remove(view);
        }
        return c0342a;
    }

    public String d(View view) {
        if (this.f23209a.size() == 0) {
            return null;
        }
        String str = this.f23209a.get(view);
        if (str != null) {
            this.f23209a.remove(view);
        }
        return str;
    }

    public c e(View view) {
        return this.f23212d.contains(view) ? c.PARENT_VIEW : this.f23217i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public boolean f(View view) {
        if (this.f23216h.containsKey(view)) {
            this.f23216h.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    private String a(View view) {
        if (view.isAttachedToWindow()) {
            if (b(view).booleanValue()) {
                return "noWindowFocus";
            }
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
            this.f23212d.addAll(hashSet);
            return null;
        }
        return "notAttached";
    }

    public String b(String str) {
        return this.f23215g.get(str);
    }

    public HashSet<String> c() {
        return this.f23213e;
    }

    public void d() {
        this.f23217i = true;
    }

    public void e() {
        com.iab.omid.library.unity3d.internal.c c10 = com.iab.omid.library.unity3d.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : c10.a()) {
                View c11 = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (c11 != null) {
                        String a10 = a(c11);
                        if (a10 == null) {
                            this.f23213e.add(adSessionId);
                            this.f23209a.put(c11, adSessionId);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f23214f.add(adSessionId);
                            this.f23211c.put(adSessionId, c11);
                            this.f23215g.put(adSessionId, a10);
                        }
                    } else {
                        this.f23214f.add(adSessionId);
                        this.f23215g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void a() {
        this.f23209a.clear();
        this.f23210b.clear();
        this.f23211c.clear();
        this.f23212d.clear();
        this.f23213e.clear();
        this.f23214f.clear();
        this.f23215g.clear();
        this.f23217i = false;
    }

    public HashSet<String> b() {
        return this.f23214f;
    }

    private void a(com.iab.omid.library.unity3d.adsession.a aVar) {
        for (e eVar : aVar.d()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.unity3d.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0342a c0342a = this.f23210b.get(view);
        if (c0342a != null) {
            c0342a.a(aVar.getAdSessionId());
        } else {
            this.f23210b.put(view, new C0342a(eVar, aVar.getAdSessionId()));
        }
    }
}
