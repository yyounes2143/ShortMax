package com.mbridge.msdk.tracker;

import android.util.Log;
/* compiled from: TrackConfig.java */
/* loaded from: classes6.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public final int f30440a;

    /* renamed from: b  reason: collision with root package name */
    public final int f30441b;

    /* renamed from: c  reason: collision with root package name */
    public final int f30442c;

    /* renamed from: d  reason: collision with root package name */
    public final int f30443d;

    /* renamed from: e  reason: collision with root package name */
    public final int f30444e;

    /* renamed from: f  reason: collision with root package name */
    public final int f30445f;

    /* renamed from: g  reason: collision with root package name */
    public final p f30446g;

    /* renamed from: h  reason: collision with root package name */
    public final d f30447h;

    /* renamed from: i  reason: collision with root package name */
    public final w f30448i;

    /* renamed from: j  reason: collision with root package name */
    public final f f30449j;

    /* compiled from: TrackConfig.java */
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        private p f30453d;

        /* renamed from: h  reason: collision with root package name */
        private d f30457h;

        /* renamed from: i  reason: collision with root package name */
        private w f30458i;

        /* renamed from: j  reason: collision with root package name */
        private f f30459j;

        /* renamed from: a  reason: collision with root package name */
        private int f30450a = 50;

        /* renamed from: b  reason: collision with root package name */
        private int f30451b = 15000;

        /* renamed from: c  reason: collision with root package name */
        private int f30452c = 1;

        /* renamed from: e  reason: collision with root package name */
        private int f30454e = 2;

        /* renamed from: f  reason: collision with root package name */
        private int f30455f = 50;

        /* renamed from: g  reason: collision with root package name */
        private int f30456g = 604800000;

        public b a(int i10, p pVar) {
            this.f30452c = i10;
            this.f30453d = pVar;
            return this;
        }

        public b b(int i10) {
            if (i10 <= 0) {
                this.f30450a = 50;
            } else {
                this.f30450a = i10;
            }
            return this;
        }

        public b c(int i10) {
            if (i10 < 0) {
                this.f30451b = 15000;
            } else {
                this.f30451b = i10;
            }
            return this;
        }

        public b d(int i10) {
            if (i10 < 0) {
                this.f30455f = 50;
            } else {
                this.f30455f = i10;
            }
            return this;
        }

        public b e(int i10) {
            if (i10 <= 0) {
                this.f30454e = 2;
            } else {
                this.f30454e = i10;
            }
            return this;
        }

        public b a(int i10) {
            if (i10 < 0) {
                this.f30456g = 604800000;
            } else {
                this.f30456g = i10;
            }
            return this;
        }

        public b a(d dVar) {
            this.f30457h = dVar;
            return this;
        }

        public b a(w wVar) {
            this.f30458i = wVar;
            return this;
        }

        public b a(f fVar) {
            this.f30459j = fVar;
            return this;
        }

        public x a() {
            if (y.b(this.f30457h) && com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "decorate can not be null");
            }
            if (y.b(this.f30458i) && com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "responseHandler can not be null");
            }
            if ((y.b(this.f30453d) || y.b(this.f30453d.b())) && com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "networkStackConfig or stack can not be null");
            }
            return new x(this);
        }
    }

    private x(b bVar) {
        this.f30440a = bVar.f30450a;
        this.f30441b = bVar.f30451b;
        this.f30442c = bVar.f30452c;
        this.f30443d = bVar.f30454e;
        this.f30444e = bVar.f30455f;
        this.f30445f = bVar.f30456g;
        this.f30446g = bVar.f30453d;
        this.f30447h = bVar.f30457h;
        this.f30448i = bVar.f30458i;
        this.f30449j = bVar.f30459j;
    }
}
