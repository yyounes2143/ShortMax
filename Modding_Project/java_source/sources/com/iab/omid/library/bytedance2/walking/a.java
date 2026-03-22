package com.iab.omid.library.bytedance2.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.bytedance2.internal.e;
import com.iab.omid.library.bytedance2.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f22810a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, C0330a> f22811b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, View> f22812c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<View> f22813d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f22814e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashSet<String> f22815f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, String> f22816g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private final Map<View, Boolean> f22817h = new WeakHashMap();

    /* renamed from: i  reason: collision with root package name */
    private boolean f22818i;

    /* renamed from: com.iab.omid.library.bytedance2.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0330a {

        /* renamed from: a  reason: collision with root package name */
        private final e f22819a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<String> f22820b = new ArrayList<>();

        public C0330a(e eVar, String str) {
            this.f22819a = eVar;
            a(str);
        }

        public e a() {
            return this.f22819a;
        }

        public ArrayList<String> b() {
            return this.f22820b;
        }

        public void a(String str) {
            this.f22820b.add(str);
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.f22817h.remove(view);
            return Boolean.FALSE;
        } else if (this.f22817h.containsKey(view)) {
            return this.f22817h.get(view);
        } else {
            Map<View, Boolean> map = this.f22817h;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public View a(String str) {
        return this.f22812c.get(str);
    }

    public C0330a c(View view) {
        C0330a c0330a = this.f22811b.get(view);
        if (c0330a != null) {
            this.f22811b.remove(view);
        }
        return c0330a;
    }

    public String d(View view) {
        if (this.f22810a.size() == 0) {
            return null;
        }
        String str = this.f22810a.get(view);
        if (str != null) {
            this.f22810a.remove(view);
        }
        return str;
    }

    public c e(View view) {
        return this.f22813d.contains(view) ? c.PARENT_VIEW : this.f22818i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public boolean f(View view) {
        if (this.f22817h.containsKey(view)) {
            this.f22817h.put(view, Boolean.TRUE);
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
            this.f22813d.addAll(hashSet);
            return null;
        }
        return "notAttached";
    }

    public String b(String str) {
        return this.f22816g.get(str);
    }

    public HashSet<String> c() {
        return this.f22814e;
    }

    public void d() {
        this.f22818i = true;
    }

    public void e() {
        com.iab.omid.library.bytedance2.internal.c c10 = com.iab.omid.library.bytedance2.internal.c.c();
        if (c10 != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : c10.a()) {
                View c11 = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (c11 != null) {
                        String a10 = a(c11);
                        if (a10 == null) {
                            this.f22814e.add(adSessionId);
                            this.f22810a.put(c11, adSessionId);
                            a(aVar);
                        } else if (a10 != "noWindowFocus") {
                            this.f22815f.add(adSessionId);
                            this.f22812c.put(adSessionId, c11);
                            this.f22816g.put(adSessionId, a10);
                        }
                    } else {
                        this.f22815f.add(adSessionId);
                        this.f22816g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void a() {
        this.f22810a.clear();
        this.f22811b.clear();
        this.f22812c.clear();
        this.f22813d.clear();
        this.f22814e.clear();
        this.f22815f.clear();
        this.f22816g.clear();
        this.f22818i = false;
    }

    public HashSet<String> b() {
        return this.f22815f;
    }

    private void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        for (e eVar : aVar.d()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.bytedance2.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0330a c0330a = this.f22811b.get(view);
        if (c0330a != null) {
            c0330a.a(aVar.getAdSessionId());
        } else {
            this.f22811b.put(view, new C0330a(eVar, aVar.getAdSessionId()));
        }
    }
}
