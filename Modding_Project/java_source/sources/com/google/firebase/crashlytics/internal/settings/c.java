package com.google.firebase.crashlytics.internal.settings;
/* compiled from: Settings.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public final b f20854a;

    /* renamed from: b  reason: collision with root package name */
    public final a f20855b;

    /* renamed from: c  reason: collision with root package name */
    public final long f20856c;

    /* renamed from: d  reason: collision with root package name */
    public final int f20857d;

    /* renamed from: e  reason: collision with root package name */
    public final int f20858e;

    /* renamed from: f  reason: collision with root package name */
    public final double f20859f;

    /* renamed from: g  reason: collision with root package name */
    public final double f20860g;

    /* renamed from: h  reason: collision with root package name */
    public final int f20861h;

    /* compiled from: Settings.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f20862a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f20863b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f20864c;

        public a(boolean z10, boolean z11, boolean z12) {
            this.f20862a = z10;
            this.f20863b = z11;
            this.f20864c = z12;
        }
    }

    /* compiled from: Settings.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f20865a;

        /* renamed from: b  reason: collision with root package name */
        public final int f20866b;

        public b(int i10, int i11) {
            this.f20865a = i10;
            this.f20866b = i11;
        }
    }

    public c(long j10, b bVar, a aVar, int i10, int i11, double d10, double d11, int i12) {
        this.f20856c = j10;
        this.f20854a = bVar;
        this.f20855b = aVar;
        this.f20857d = i10;
        this.f20858e = i11;
        this.f20859f = d10;
        this.f20860g = d11;
        this.f20861h = i12;
    }

    public boolean a(long j10) {
        if (this.f20856c < j10) {
            return true;
        }
        return false;
    }
}
