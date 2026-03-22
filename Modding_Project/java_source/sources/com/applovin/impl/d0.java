package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.e0;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public class d0 extends c0 {

    /* renamed from: f  reason: collision with root package name */
    private final String f7743f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f7744g;

    /* renamed from: h  reason: collision with root package name */
    private final List f7745h;

    /* renamed from: i  reason: collision with root package name */
    private final c f7746i;

    /* renamed from: j  reason: collision with root package name */
    private StringBuffer f7747j;

    /* renamed from: k  reason: collision with root package name */
    private final Object f7748k;

    /* renamed from: l  reason: collision with root package name */
    private final ExecutorService f7749l;

    /* renamed from: m  reason: collision with root package name */
    private final String f7750m;

    /* renamed from: n  reason: collision with root package name */
    private List f7751n;

    /* renamed from: o  reason: collision with root package name */
    private List f7752o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements e0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f7753a;

        a(String str) {
            this.f7753a = str;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                if (((Boolean) d0.this.f7620a.a(v4.T0)).booleanValue()) {
                    synchronized (d0.this.f7748k) {
                        StringUtils.replaceAll(d0.this.f7747j, this.f7753a, uri.toString());
                    }
                } else {
                    StringUtils.replaceAll(d0.this.f7747j, this.f7753a, uri.toString());
                }
                d0.this.f7744g.a(uri);
                return;
            }
            com.applovin.impl.sdk.o oVar = d0.this.f7622c;
            if (com.applovin.impl.sdk.o.a()) {
                d0 d0Var = d0.this;
                com.applovin.impl.sdk.o oVar2 = d0Var.f7622c;
                String str = d0Var.f7621b;
                oVar2.a(str, "Failed to cache JavaScript resource " + this.f7753a);
            }
            if (d0.this.f7746i != null) {
                d0.this.f7746i.a(d0.this.f7743f, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements e0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f7755a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f7756b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f7757c;

        b(String str, String str2, String str3) {
            this.f7755a = str;
            this.f7756b = str2;
            this.f7757c = str3;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                if (((Boolean) d0.this.f7620a.a(v4.T0)).booleanValue()) {
                    synchronized (d0.this.f7748k) {
                        StringUtils.replaceAll(d0.this.f7747j, this.f7755a, uri.toString());
                    }
                } else {
                    StringUtils.replaceAll(d0.this.f7747j, this.f7755a, uri.toString());
                }
                d0.this.f7744g.a(uri);
                return;
            }
            List a02 = d0.this.f7744g.a0();
            if (a02.contains(this.f7756b + this.f7757c) && d0.this.f7746i != null) {
                d0.this.f7746i.a(d0.this.f7743f, true);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(String str, boolean z10);
    }

    public d0(String str, com.applovin.impl.sdk.ad.b bVar, List list, ExecutorService executorService, String str2, com.applovin.impl.sdk.k kVar, c cVar) {
        super("AsyncTaskCacheHTMLResources", kVar);
        this.f7743f = str;
        this.f7744g = bVar;
        this.f7745h = list;
        this.f7749l = executorService;
        this.f7750m = str2;
        this.f7746i = cVar;
        this.f7747j = new StringBuffer(str);
        this.f7748k = new Object();
    }

    private Collection f() {
        HashSet hashSet = new HashSet();
        for (char c10 : ((String) this.f7620a.a(v4.D0)).toCharArray()) {
            hashSet.add(Character.valueOf(c10));
        }
        hashSet.add('\"');
        return hashSet;
    }

    private void a(List list) {
        ArrayList<Future> arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f7749l.submit((e0) it.next()));
        }
        this.f7752o = arrayList;
        for (Future future : arrayList) {
            try {
                future.get();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0017, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.HashSet d() {
        /*
            r18 = this;
            r0 = r18
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            com.applovin.impl.sdk.ad.b r2 = r0.f7744g
            java.util.List r2 = r2.R()
            java.util.Collection r3 = r18.f()
            java.util.List r4 = r0.f7745h
            java.util.Iterator r4 = r4.iterator()
        L17:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto Ldb
            java.lang.Object r5 = r4.next()
            java.lang.String r5 = (java.lang.String) r5
            r6 = 0
            r7 = r6
        L25:
            java.lang.String r8 = r0.f7743f
            int r8 = r8.length()
            if (r6 >= r8) goto L17
            java.util.concurrent.atomic.AtomicBoolean r6 = r0.f7624e
            boolean r6 = r6.get()
            r8 = 0
            if (r6 == 0) goto L37
            return r8
        L37:
            java.lang.String r6 = r0.f7743f
            int r6 = r6.indexOf(r5, r7)
            r7 = -1
            if (r6 != r7) goto L41
            goto L17
        L41:
            java.lang.String r7 = r0.f7743f
            int r7 = r7.length()
            r9 = r6
        L48:
            java.lang.String r10 = r0.f7743f
            char r10 = r10.charAt(r9)
            java.lang.Character r10 = java.lang.Character.valueOf(r10)
            boolean r10 = r3.contains(r10)
            if (r10 != 0) goto L5d
            if (r9 >= r7) goto L5d
            int r9 = r9 + 1
            goto L48
        L5d:
            if (r9 <= r6) goto Lcb
            if (r9 == r7) goto Lcb
            java.lang.String r7 = r0.f7743f
            int r8 = r5.length()
            int r8 = r8 + r6
            java.lang.String r7 = r7.substring(r8, r9)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r5)
            r8.append(r7)
            java.lang.String r11 = r8.toString()
            boolean r8 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r7)
            if (r8 == 0) goto Laa
            boolean r8 = r2.contains(r11)
            if (r8 != 0) goto Laa
            com.applovin.impl.e0 r8 = new com.applovin.impl.e0
            com.applovin.impl.sdk.ad.b r12 = r0.f7744g
            java.lang.String[] r10 = new java.lang.String[]{r5}
            java.util.List r13 = java.util.Arrays.asList(r10)
            java.lang.String r15 = r0.f7750m
            com.applovin.impl.sdk.k r14 = r0.f7620a
            com.applovin.impl.d0$b r10 = new com.applovin.impl.d0$b
            r10.<init>(r11, r5, r7)
            r7 = 1
            r17 = r10
            r10 = r8
            r16 = r14
            r14 = r7
            r10.<init>(r11, r12, r13, r14, r15, r16, r17)
            r1.add(r8)
            goto Lc8
        Laa:
            boolean r8 = com.applovin.impl.sdk.o.a()
            if (r8 == 0) goto Lc8
            com.applovin.impl.sdk.o r8 = r0.f7622c
            java.lang.String r10 = r0.f7621b
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "Skip caching of optional or non-resource "
            r11.append(r12)
            r11.append(r7)
            java.lang.String r7 = r11.toString()
            r8.a(r10, r7)
        Lc8:
            r7 = r9
            goto L25
        Lcb:
            boolean r1 = com.applovin.impl.sdk.o.a()
            if (r1 == 0) goto Lda
            com.applovin.impl.sdk.o r1 = r0.f7622c
            java.lang.String r2 = r0.f7621b
            java.lang.String r3 = "Unable to cache resource; ad HTML is invalid."
            r1.b(r2, r3)
        Lda:
            return r8
        Ldb:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.d0.d():java.util.HashSet");
    }

    private HashSet e() {
        HashSet hashSet = new HashSet();
        for (String str : StringUtils.getRegexMatches(StringUtils.match(this.f7743f, (String) this.f7620a.a(v4.X4)), 1)) {
            if (this.f7624e.get()) {
                return null;
            }
            if (!StringUtils.isValidString(str)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7622c;
                    String str2 = this.f7621b;
                    oVar.a(str2, "Skip caching of non-resource " + str);
                }
            } else {
                hashSet.add(new e0(str, this.f7744g, Collections.emptyList(), false, this.f7750m, this.f7620a, new a(str)));
            }
        }
        return hashSet;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: b */
    public Boolean call() {
        HashSet e10;
        if (this.f7624e.get()) {
            return Boolean.FALSE;
        }
        if (TextUtils.isEmpty(this.f7743f)) {
            a(this.f7743f);
            return Boolean.FALSE;
        } else if (!((Boolean) this.f7620a.a(v4.E0)).booleanValue()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7622c.a(this.f7621b, "Resource caching is disabled, skipping cache...");
            }
            a(this.f7743f);
            return Boolean.FALSE;
        } else {
            HashSet hashSet = new HashSet();
            HashSet d10 = d();
            if (d10 != null) {
                hashSet.addAll(d10);
            }
            if (((Boolean) this.f7620a.a(v4.W4)).booleanValue() && (e10 = e()) != null) {
                hashSet.addAll(e10);
            }
            this.f7751n = new ArrayList(hashSet);
            if (this.f7624e.get()) {
                return Boolean.FALSE;
            }
            List list = this.f7751n;
            if (list != null && !list.isEmpty()) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7622c;
                    String str = this.f7621b;
                    oVar.a(str, "Executing " + this.f7751n.size() + " caching operations...");
                }
                if (this.f7620a.r0().f()) {
                    a(this.f7751n);
                } else {
                    this.f7749l.invokeAll(this.f7751n);
                }
                if (((Boolean) this.f7620a.a(v4.T0)).booleanValue()) {
                    synchronized (this.f7748k) {
                        a(this.f7747j.toString());
                    }
                } else {
                    a(this.f7747j.toString());
                }
                return Boolean.TRUE;
            }
            a(this.f7743f);
            return Boolean.FALSE;
        }
    }

    public void c() {
        List<e0> list = this.f7751n;
        if (list != null) {
            for (e0 e0Var : list) {
                e0Var.a(true);
            }
        }
        List<Future> list2 = this.f7752o;
        if (list2 != null) {
            for (Future future : list2) {
                if (!future.isDone()) {
                    future.cancel(true);
                }
            }
        }
    }

    private void a(String str) {
        c cVar;
        if (this.f7624e.get() || (cVar = this.f7746i) == null) {
            return;
        }
        cVar.a(str, false);
    }
}
