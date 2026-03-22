package com.google.common.base;

import h7.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* compiled from: Splitter.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final h7.b f20054a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f20055b;

    /* renamed from: c  reason: collision with root package name */
    private final c f20056c;

    /* renamed from: d  reason: collision with root package name */
    private final int f20057d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Splitter.java */
    /* loaded from: classes5.dex */
    public class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h7.b f20058a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Splitter.java */
        /* renamed from: com.google.common.base.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0300a extends AbstractC0301b {
            C0300a(b bVar, CharSequence charSequence) {
                super(bVar, charSequence);
            }

            @Override // com.google.common.base.b.AbstractC0301b
            int e(int i10) {
                return i10 + 1;
            }

            @Override // com.google.common.base.b.AbstractC0301b
            int f(int i10) {
                return a.this.f20058a.c(this.f20060c, i10);
            }
        }

        a(h7.b bVar) {
            this.f20058a = bVar;
        }

        @Override // com.google.common.base.b.c
        /* renamed from: b */
        public AbstractC0301b a(b bVar, CharSequence charSequence) {
            return new C0300a(bVar, charSequence);
        }
    }

    /* compiled from: Splitter.java */
    /* renamed from: com.google.common.base.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static abstract class AbstractC0301b extends AbstractIterator<String> {

        /* renamed from: c  reason: collision with root package name */
        final CharSequence f20060c;

        /* renamed from: d  reason: collision with root package name */
        final h7.b f20061d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f20062e;

        /* renamed from: f  reason: collision with root package name */
        int f20063f = 0;

        /* renamed from: g  reason: collision with root package name */
        int f20064g;

        protected AbstractC0301b(b bVar, CharSequence charSequence) {
            this.f20061d = bVar.f20054a;
            this.f20062e = bVar.f20055b;
            this.f20064g = bVar.f20057d;
            this.f20060c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.AbstractIterator
        /* renamed from: d */
        public String a() {
            int f10;
            int i10 = this.f20063f;
            while (true) {
                int i11 = this.f20063f;
                if (i11 != -1) {
                    f10 = f(i11);
                    if (f10 == -1) {
                        f10 = this.f20060c.length();
                        this.f20063f = -1;
                    } else {
                        this.f20063f = e(f10);
                    }
                    int i12 = this.f20063f;
                    if (i12 == i10) {
                        int i13 = i12 + 1;
                        this.f20063f = i13;
                        if (i13 > this.f20060c.length()) {
                            this.f20063f = -1;
                        }
                    } else {
                        while (i10 < f10 && this.f20061d.e(this.f20060c.charAt(i10))) {
                            i10++;
                        }
                        while (f10 > i10 && this.f20061d.e(this.f20060c.charAt(f10 - 1))) {
                            f10--;
                        }
                        if (!this.f20062e || i10 != f10) {
                            break;
                        }
                        i10 = this.f20063f;
                    }
                } else {
                    return b();
                }
            }
            int i14 = this.f20064g;
            if (i14 == 1) {
                f10 = this.f20060c.length();
                this.f20063f = -1;
                while (f10 > i10 && this.f20061d.e(this.f20060c.charAt(f10 - 1))) {
                    f10--;
                }
            } else {
                this.f20064g = i14 - 1;
            }
            return this.f20060c.subSequence(i10, f10).toString();
        }

        abstract int e(int i10);

        abstract int f(int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Splitter.java */
    /* loaded from: classes5.dex */
    public interface c {
        Iterator<String> a(b bVar, CharSequence charSequence);
    }

    private b(c cVar) {
        this(cVar, false, h7.b.f(), Integer.MAX_VALUE);
    }

    public static b d(char c10) {
        return e(h7.b.d(c10));
    }

    public static b e(h7.b bVar) {
        k.j(bVar);
        return new b(new a(bVar));
    }

    private Iterator<String> g(CharSequence charSequence) {
        return this.f20056c.a(this, charSequence);
    }

    public List<String> f(CharSequence charSequence) {
        k.j(charSequence);
        Iterator<String> g10 = g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (g10.hasNext()) {
            arrayList.add(g10.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    private b(c cVar, boolean z10, h7.b bVar, int i10) {
        this.f20056c = cVar;
        this.f20055b = z10;
        this.f20054a = bVar;
        this.f20057d = i10;
    }
}
