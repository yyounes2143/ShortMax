package com.inmobi.media;

import android.os.SystemClock;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.c5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2900c5 implements hf {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2966g5 f24548a;

    public C2900c5(C2966g5 c2966g5) {
        this.f24548a = c2966g5;
    }

    @Override // com.inmobi.media.hf
    public final void a(ArrayList visibleViews, ArrayList invisibleViews) {
        Object obj;
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Intrinsics.checkNotNullExpressionValue(this.f24548a.f24761d, "access$getTAG$p(...)");
        Objects.toString(visibleViews);
        Objects.toString(invisibleViews);
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            C2934e5 c2934e5 = (C2934e5) this.f24548a.f24758a.get(view);
            if (c2934e5 == null) {
                this.f24548a.a(view);
            } else {
                C2934e5 c2934e52 = (C2934e5) this.f24548a.f24759b.get(view);
                Object obj2 = c2934e5.f24630a;
                if (c2934e52 != null) {
                    obj = c2934e52.f24630a;
                } else {
                    obj = null;
                }
                if (!Intrinsics.areEqual(obj2, obj)) {
                    c2934e5.f24633d = SystemClock.uptimeMillis();
                    this.f24548a.f24759b.put(view, c2934e5);
                }
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            this.f24548a.f24759b.remove((View) it2.next());
        }
        C2966g5 c2966g5 = this.f24548a;
        if (!c2966g5.f24762e.hasMessages(0)) {
            c2966g5.f24762e.postDelayed(c2966g5.f24763f, c2966g5.f24764g);
        }
    }
}
