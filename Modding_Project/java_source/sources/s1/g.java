package s1;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.UiThread;
import com.facebook.FacebookException;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.f0;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s1.b;
import s1.h;
/* compiled from: CodelessMatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCodelessMatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodelessMatcher.kt\ncom/facebook/appevents/codeless/CodelessMatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,459:1\n1#2:460\n*E\n"})
/* loaded from: classes3.dex */
public final class g {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f66215f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final String f66216g = g.class.getCanonicalName();
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static g f66217h;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Handler f66218a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Set<Activity> f66219b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Set<c> f66220c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private HashSet<String> f66221d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final HashMap<Integer, HashSet<String>> f66222e;

    /* compiled from: CodelessMatcher.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final synchronized g a() {
            g b10;
            try {
                if (g.b() == null) {
                    g.d(new g(null));
                }
                b10 = g.b();
                Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher");
            } catch (Throwable th2) {
                throw th2;
            }
            return b10;
        }

        @UiThread
        @NotNull
        public final Bundle b(@Nullable EventBinding eventBinding, @NotNull View rootView, @NotNull View hostView) {
            List<b> a10;
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            Bundle bundle = new Bundle();
            if (eventBinding == null) {
                return bundle;
            }
            List<t1.a> c10 = eventBinding.c();
            if (c10 != null) {
                for (t1.a aVar : c10) {
                    if (aVar.d() != null && aVar.d().length() > 0) {
                        bundle.putString(aVar.a(), aVar.d());
                    } else if (aVar.b().size() > 0) {
                        if (Intrinsics.areEqual(aVar.c(), "relative")) {
                            c.a aVar2 = c.f66225f;
                            List<PathComponent> b10 = aVar.b();
                            String simpleName = hostView.getClass().getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName, "hostView.javaClass.simpleName");
                            a10 = aVar2.a(eventBinding, hostView, b10, 0, -1, simpleName);
                        } else {
                            c.a aVar3 = c.f66225f;
                            List<PathComponent> b11 = aVar.b();
                            String simpleName2 = rootView.getClass().getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName2, "rootView.javaClass.simpleName");
                            a10 = aVar3.a(eventBinding, rootView, b11, 0, -1, simpleName2);
                        }
                        Iterator<b> it = a10.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                b next = it.next();
                                if (next.a() != null) {
                                    String k10 = t1.d.k(next.a());
                                    if (k10.length() > 0) {
                                        bundle.putString(aVar.a(), k10);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        }

        private a() {
        }
    }

    /* compiled from: CodelessMatcher.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<View> f66223a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f66224b;

        public b(@NotNull View view, @NotNull String viewMapKey) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(viewMapKey, "viewMapKey");
            this.f66223a = new WeakReference<>(view);
            this.f66224b = viewMapKey;
        }

        @Nullable
        public final View a() {
            WeakReference<View> weakReference = this.f66223a;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @NotNull
        public final String b() {
            return this.f66224b;
        }
    }

    /* compiled from: CodelessMatcher.kt */
    @Metadata
    @UiThread
    /* loaded from: classes3.dex */
    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final a f66225f = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<View> f66226a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private List<EventBinding> f66227b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Handler f66228c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final HashSet<String> f66229d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f66230e;

        /* compiled from: CodelessMatcher.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final List<View> b(ViewGroup viewGroup) {
                ArrayList arrayList = new ArrayList();
                int childCount = viewGroup.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View child = viewGroup.getChildAt(i10);
                    if (child.getVisibility() == 0) {
                        Intrinsics.checkNotNullExpressionValue(child, "child");
                        arrayList.add(child);
                    }
                }
                return arrayList;
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x0065, code lost:
                if (kotlin.jvm.internal.Intrinsics.areEqual(r10.getClass().getSimpleName(), (java.lang.String) r12.get(r12.size() - 1)) == false) goto L15;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private final boolean c(android.view.View r10, com.facebook.appevents.codeless.internal.PathComponent r11, int r12) {
                /*
                    Method dump skipped, instructions count: 323
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: s1.g.c.a.c(android.view.View, com.facebook.appevents.codeless.internal.PathComponent, int):boolean");
            }

            @NotNull
            public final List<b> a(@Nullable EventBinding eventBinding, @Nullable View view, @NotNull List<PathComponent> path, int i10, int i11, @NotNull String mapKey) {
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(mapKey, "mapKey");
                String str = mapKey + '.' + i11;
                ArrayList arrayList = new ArrayList();
                if (view == null) {
                    return arrayList;
                }
                if (i10 >= path.size()) {
                    arrayList.add(new b(view, str));
                } else {
                    PathComponent pathComponent = path.get(i10);
                    if (Intrinsics.areEqual(pathComponent.a(), "..")) {
                        ViewParent parent = view.getParent();
                        if (parent instanceof ViewGroup) {
                            List<View> b10 = b((ViewGroup) parent);
                            int size = b10.size();
                            for (int i12 = 0; i12 < size; i12++) {
                                arrayList.addAll(a(eventBinding, b10.get(i12), path, i10 + 1, i12, str));
                            }
                        }
                        return arrayList;
                    } else if (Intrinsics.areEqual(pathComponent.a(), ".")) {
                        arrayList.add(new b(view, str));
                        return arrayList;
                    } else if (!c(view, pathComponent, i11)) {
                        return arrayList;
                    } else {
                        if (i10 == path.size() - 1) {
                            arrayList.add(new b(view, str));
                        }
                    }
                }
                if (view instanceof ViewGroup) {
                    List<View> b11 = b((ViewGroup) view);
                    int size2 = b11.size();
                    for (int i13 = 0; i13 < size2; i13++) {
                        arrayList.addAll(a(eventBinding, b11.get(i13), path, i10 + 1, i13, str));
                    }
                }
                return arrayList;
            }

            private a() {
            }
        }

        public c(@Nullable View view, @NotNull Handler handler, @NotNull HashSet<String> listenerSet, @NotNull String activityName) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            Intrinsics.checkNotNullParameter(listenerSet, "listenerSet");
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            this.f66226a = new WeakReference<>(view);
            this.f66228c = handler;
            this.f66229d = listenerSet;
            this.f66230e = activityName;
            handler.postDelayed(this, 200L);
        }

        private final void a(b bVar, View view, EventBinding eventBinding) {
            if (eventBinding == null) {
                return;
            }
            try {
                View a10 = bVar.a();
                if (a10 == null) {
                    return;
                }
                View a11 = t1.d.a(a10);
                if (a11 != null && t1.d.f66812a.p(a10, a11)) {
                    e(bVar, view, eventBinding);
                    return;
                }
                String name = a10.getClass().getName();
                Intrinsics.checkNotNullExpressionValue(name, "view.javaClass.name");
                if (StringsKt.V(name, "com.facebook.react", false, 2, null)) {
                    return;
                }
                if (!(a10 instanceof AdapterView)) {
                    c(bVar, view, eventBinding);
                } else if (a10 instanceof ListView) {
                    d(bVar, view, eventBinding);
                }
            } catch (Exception e10) {
                u0.j0(g.c(), e10);
            }
        }

        private final void c(b bVar, View view, EventBinding eventBinding) {
            boolean z10;
            View a10 = bVar.a();
            if (a10 == null) {
                return;
            }
            String b10 = bVar.b();
            View.OnClickListener g10 = t1.d.g(a10);
            if (g10 instanceof b.a) {
                Intrinsics.checkNotNull(g10, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener");
                if (((b.a) g10).a()) {
                    z10 = true;
                    if (this.f66229d.contains(b10) && !z10) {
                        a10.setOnClickListener(s1.b.b(eventBinding, view, a10));
                        this.f66229d.add(b10);
                        return;
                    }
                }
            }
            z10 = false;
            if (this.f66229d.contains(b10)) {
            }
        }

        private final void d(b bVar, View view, EventBinding eventBinding) {
            boolean z10;
            AdapterView adapterView = (AdapterView) bVar.a();
            if (adapterView == null) {
                return;
            }
            String b10 = bVar.b();
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            if (onItemClickListener instanceof b.C0919b) {
                Intrinsics.checkNotNull(onItemClickListener, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener");
                if (((b.C0919b) onItemClickListener).a()) {
                    z10 = true;
                    if (this.f66229d.contains(b10) && !z10) {
                        adapterView.setOnItemClickListener(s1.b.c(eventBinding, view, adapterView));
                        this.f66229d.add(b10);
                        return;
                    }
                }
            }
            z10 = false;
            if (this.f66229d.contains(b10)) {
            }
        }

        private final void e(b bVar, View view, EventBinding eventBinding) {
            boolean z10;
            View a10 = bVar.a();
            if (a10 == null) {
                return;
            }
            String b10 = bVar.b();
            View.OnTouchListener h10 = t1.d.h(a10);
            if (h10 instanceof h.a) {
                Intrinsics.checkNotNull(h10, "null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener");
                if (((h.a) h10).a()) {
                    z10 = true;
                    if (this.f66229d.contains(b10) && !z10) {
                        a10.setOnTouchListener(h.a(eventBinding, view, a10));
                        this.f66229d.add(b10);
                        return;
                    }
                }
            }
            z10 = false;
            if (this.f66229d.contains(b10)) {
            }
        }

        private final void f(EventBinding eventBinding, View view) {
            if (eventBinding != null && view != null) {
                String a10 = eventBinding.a();
                if (a10 != null && a10.length() != 0 && !Intrinsics.areEqual(eventBinding.a(), this.f66230e)) {
                    return;
                }
                List<PathComponent> d10 = eventBinding.d();
                if (d10.size() > 25) {
                    return;
                }
                for (b bVar : f66225f.a(eventBinding, view, d10, 0, -1, this.f66230e)) {
                    a(bVar, view, eventBinding);
                }
            }
        }

        private final void g() {
            List<EventBinding> list = this.f66227b;
            if (list != null && this.f66226a.get() != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    f(list.get(i10), this.f66226a.get());
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            g();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            g();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (o4.a.d(this)) {
                return;
            }
            try {
                p f10 = FetchedAppSettingsManager.f(v.m());
                if (f10 != null && f10.d()) {
                    List<EventBinding> b10 = EventBinding.f14974j.b(f10.h());
                    this.f66227b = b10;
                    if (b10 == null || (view = this.f66226a.get()) == null) {
                        return;
                    }
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    g();
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final /* synthetic */ g b() {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            return f66217h;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    public static final /* synthetic */ String c() {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            return f66216g;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    public static final /* synthetic */ void d(g gVar) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            f66217h = gVar;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    private final void g() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            for (Activity activity : this.f66219b) {
                if (activity != null) {
                    View d10 = a2.h.d(activity);
                    String activityName = activity.getClass().getSimpleName();
                    Handler handler = this.f66218a;
                    HashSet<String> hashSet = this.f66221d;
                    Intrinsics.checkNotNullExpressionValue(activityName, "activityName");
                    this.f66220c.add(new c(d10, handler, hashSet, activityName));
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void i() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                g();
            } else {
                this.f66218a.post(new Runnable() { // from class: s1.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.j(g.this);
                    }
                });
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(g this$0) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.g();
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    @UiThread
    public final void e(@NotNull Activity activity) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (f0.b()) {
                return;
            }
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.f66219b.add(activity);
                this.f66221d.clear();
                HashSet<String> hashSet = this.f66222e.get(Integer.valueOf(activity.hashCode()));
                if (hashSet != null) {
                    this.f66221d = hashSet;
                }
                i();
                return;
            }
            throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @UiThread
    public final void f(@NotNull Activity activity) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.f66222e.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @UiThread
    public final void h(@NotNull Activity activity) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (f0.b()) {
                return;
            }
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.f66219b.remove(activity);
                this.f66220c.clear();
                HashMap<Integer, HashSet<String>> hashMap = this.f66222e;
                Integer valueOf = Integer.valueOf(activity.hashCode());
                Object clone = this.f66221d.clone();
                Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type java.util.HashSet<kotlin.String>{ kotlin.collections.TypeAliasesKt.HashSet<kotlin.String> }");
                hashMap.put(valueOf, (HashSet) clone);
                this.f66221d.clear();
                return;
            }
            throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private g() {
        this.f66218a = new Handler(Looper.getMainLooper());
        Set<Activity> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        Intrinsics.checkNotNullExpressionValue(newSetFromMap, "newSetFromMap(WeakHashMap())");
        this.f66219b = newSetFromMap;
        this.f66220c = new LinkedHashSet();
        this.f66221d = new HashSet<>();
        this.f66222e = new HashMap<>();
    }
}
