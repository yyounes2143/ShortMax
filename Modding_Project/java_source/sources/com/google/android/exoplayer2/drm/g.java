package com.google.android.exoplayer2.drm;

import a7.h;
import a7.p;
import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.y0;
import com.google.common.collect.y;
import com.google.common.primitives.Ints;
import java.util.Map;
/* compiled from: DefaultDrmSessionManagerProvider.java */
/* loaded from: classes4.dex */
public final class g implements s5.k {

    /* renamed from: a  reason: collision with root package name */
    private final Object f17575a = new Object();
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private y0.f f17576b;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private i f17577c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private h.a f17578d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f17579e;

    @RequiresApi(18)
    private i b(y0.f fVar) {
        String uri;
        h.a aVar = this.f17578d;
        if (aVar == null) {
            aVar = new p.b().b(this.f17579e);
        }
        Uri uri2 = fVar.f19368c;
        if (uri2 == null) {
            uri = null;
        } else {
            uri = uri2.toString();
        }
        o oVar = new o(uri, fVar.f19373h, aVar);
        y<Map.Entry<String, String>> it = fVar.f19370e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            oVar.e(next.getKey(), next.getValue());
        }
        DefaultDrmSessionManager a10 = new DefaultDrmSessionManager.b().e(fVar.f19366a, n.f17594d).b(fVar.f19371f).c(fVar.f19372g).d(Ints.m(fVar.f19375j)).a(oVar);
        a10.E(0, fVar.c());
        return a10;
    }

    @Override // s5.k
    public i a(y0 y0Var) {
        i iVar;
        b7.a.e(y0Var.f19334b);
        y0.f fVar = y0Var.f19334b.f19399c;
        if (fVar != null && s0.f2506a >= 18) {
            synchronized (this.f17575a) {
                try {
                    if (!s0.c(fVar, this.f17576b)) {
                        this.f17576b = fVar;
                        this.f17577c = b(fVar);
                    }
                    iVar = (i) b7.a.e(this.f17577c);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return iVar;
        }
        return i.f17585a;
    }
}
