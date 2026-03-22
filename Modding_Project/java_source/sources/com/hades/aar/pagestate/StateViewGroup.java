package com.hades.aar.pagestate;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import la.a;
import la.b;
@Metadata
/* loaded from: classes5.dex */
public final class StateViewGroup extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashMap f21744a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashMap f21745b;

    /* renamed from: c  reason: collision with root package name */
    public a f21746c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateViewGroup(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f21744a = new LinkedHashMap();
        this.f21745b = new LinkedHashMap();
    }

    public final synchronized WeakReference<b> a(State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        for (Map.Entry entry : this.f21745b.entrySet()) {
            WeakReference<b> weakReference = (WeakReference) entry.getKey();
            b bVar = weakReference.get();
            if (bVar != null && Intrinsics.areEqual(bVar.m().name(), state.name())) {
                return weakReference;
            }
        }
        return null;
    }

    public final synchronized ViewStub b(State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        for (Map.Entry entry : this.f21744a.entrySet()) {
            ViewStub viewStub = (ViewStub) entry.getValue();
            if (Intrinsics.areEqual(((State) entry.getKey()).name(), state.name())) {
                return viewStub;
            }
        }
        return null;
    }

    public final synchronized void c(State state) {
        try {
            Intrinsics.checkNotNullParameter(state, "state");
            for (Map.Entry entry : this.f21745b.entrySet()) {
                WeakReference weakReference = (WeakReference) entry.getKey();
                boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
                b bVar = (b) weakReference.get();
                if (bVar != null && Intrinsics.areEqual(bVar.m().name(), state.name()) && booleanValue) {
                    b bVar2 = (b) weakReference.get();
                    if (bVar2 != null) {
                        removeView((View) bVar2);
                        bVar2.d();
                    }
                    this.f21745b.put(weakReference, Boolean.FALSE);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void d() {
        for (Map.Entry entry : this.f21745b.entrySet()) {
            b bVar = (b) ((WeakReference) entry.getKey()).get();
            if (bVar != null) {
                Intrinsics.checkNotNull(bVar, "null cannot be cast to non-null type android.view.View");
                if (((View) bVar).getParent() != null) {
                    bVar.onPause();
                }
            }
        }
    }

    public final synchronized void e() {
        for (Map.Entry entry : this.f21745b.entrySet()) {
            b bVar = (b) ((WeakReference) entry.getKey()).get();
            if (bVar != null) {
                Intrinsics.checkNotNull(bVar, "null cannot be cast to non-null type android.view.View");
                if (((View) bVar).getParent() != null) {
                    bVar.onResume();
                }
            }
        }
    }

    public final synchronized void f(int i10, State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.f21744a.put(state, new ViewStub(getContext(), i10));
    }

    public final synchronized void g() {
        try {
            this.f21744a.clear();
            for (Map.Entry entry : this.f21745b.entrySet()) {
                WeakReference weakReference = (WeakReference) entry.getKey();
                if (((Boolean) entry.getValue()).booleanValue()) {
                    b bVar = (b) weakReference.get();
                    if (bVar != null) {
                        removeView((View) bVar);
                        bVar.d();
                    }
                    this.f21745b.put(weakReference, Boolean.FALSE);
                }
                weakReference.clear();
            }
            this.f21745b.clear();
            this.f21746c = null;
            removeAllViews();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final a getMOnInflatedListener() {
        return this.f21746c;
    }

    public final synchronized void h(State state) {
        ViewStub b10;
        try {
            Intrinsics.checkNotNullParameter(state, "state");
            boolean z10 = false;
            for (Map.Entry entry : this.f21745b.entrySet()) {
                WeakReference weakReference = (WeakReference) entry.getKey();
                boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
                b bVar = (b) weakReference.get();
                if (bVar != null) {
                    if (Intrinsics.areEqual(bVar.m().name(), state.name())) {
                        if (!booleanValue) {
                            b bVar2 = (b) weakReference.get();
                            if (bVar2 != null) {
                                View view = (View) bVar2;
                                if (view.getParent() == null) {
                                    addView(view, new FrameLayout.LayoutParams(-1, -1));
                                }
                                bVar2.b();
                            }
                            this.f21745b.put(weakReference, Boolean.TRUE);
                        }
                        z10 = true;
                    } else if (booleanValue) {
                        b bVar3 = (b) weakReference.get();
                        if (bVar3 != null) {
                            removeView((View) bVar3);
                            bVar3.d();
                        }
                        this.f21745b.put(weakReference, Boolean.FALSE);
                    }
                }
            }
            if (!z10 && (b10 = b(state)) != null) {
                addView(b10, new FrameLayout.LayoutParams(-1, -1));
                View inflate = b10.inflate();
                if (inflate instanceof b) {
                    WeakReference weakReference2 = new WeakReference(inflate);
                    b bVar4 = (b) weakReference2.get();
                    if (bVar4 != null) {
                        View view2 = (View) bVar4;
                        if (view2.getParent() == null) {
                            addView(view2, new FrameLayout.LayoutParams(-1, -1));
                        }
                        bVar4.b();
                    }
                    this.f21745b.put(weakReference2, Boolean.TRUE);
                    a aVar = this.f21746c;
                    if (aVar != null) {
                        aVar.a(state);
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void setMOnInflatedListener(a aVar) {
        this.f21746c = aVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f21744a = new LinkedHashMap();
        this.f21745b = new LinkedHashMap();
    }
}
