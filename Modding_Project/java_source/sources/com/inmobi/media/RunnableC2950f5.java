package com.inmobi.media;

import android.os.SystemClock;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.f5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class RunnableC2950f5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final String f24723a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f24724b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference f24725c;

    public RunnableC2950f5(C2966g5 impressionTracker) {
        Intrinsics.checkNotNullParameter(impressionTracker, "impressionTracker");
        this.f24723a = RunnableC2950f5.class.getSimpleName();
        this.f24724b = new ArrayList();
        this.f24725c = new WeakReference(impressionTracker);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Intrinsics.checkNotNull(this.f24723a);
        C2966g5 c2966g5 = (C2966g5) this.f24725c.get();
        if (c2966g5 != null) {
            for (Map.Entry entry : c2966g5.f24759b.entrySet()) {
                View view = (View) entry.getKey();
                C2934e5 c2934e5 = (C2934e5) entry.getValue();
                Intrinsics.checkNotNull(this.f24723a);
                Objects.toString(c2934e5);
                if (SystemClock.uptimeMillis() - c2934e5.f24633d >= c2934e5.f24632c) {
                    Intrinsics.checkNotNull(this.f24723a);
                    c2966g5.f24765h.a(view, c2934e5.f24630a);
                    this.f24724b.add(view);
                }
            }
            Iterator it = this.f24724b.iterator();
            while (it.hasNext()) {
                c2966g5.a((View) it.next());
            }
            this.f24724b.clear();
            if (!c2966g5.f24759b.isEmpty() && !c2966g5.f24762e.hasMessages(0)) {
                c2966g5.f24762e.postDelayed(c2966g5.f24763f, c2966g5.f24764g);
            }
        }
    }
}
