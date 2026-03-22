package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import com.google.android.exoplayer2.g;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: AudioAttributes.java */
/* loaded from: classes4.dex */
public final class a implements com.google.android.exoplayer2.g {

    /* renamed from: g  reason: collision with root package name */
    public static final a f17292g = new e().a();

    /* renamed from: h  reason: collision with root package name */
    public static final g.a<a> f17293h = new g.a() { // from class: q5.d
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            com.google.android.exoplayer2.audio.a d10;
            d10 = com.google.android.exoplayer2.audio.a.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f17294a;

    /* renamed from: b  reason: collision with root package name */
    public final int f17295b;

    /* renamed from: c  reason: collision with root package name */
    public final int f17296c;

    /* renamed from: d  reason: collision with root package name */
    public final int f17297d;

    /* renamed from: e  reason: collision with root package name */
    public final int f17298e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f17299f;

    /* compiled from: AudioAttributes.java */
    @RequiresApi(29)
    /* loaded from: classes4.dex */
    private static final class b {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    /* compiled from: AudioAttributes.java */
    @RequiresApi(32)
    /* loaded from: classes4.dex */
    private static final class c {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    /* compiled from: AudioAttributes.java */
    @RequiresApi(21)
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final AudioAttributes f17300a;

        private d(a aVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(aVar.f17294a).setFlags(aVar.f17295b).setUsage(aVar.f17296c);
            int i10 = s0.f2506a;
            if (i10 >= 29) {
                b.a(usage, aVar.f17297d);
            }
            if (i10 >= 32) {
                c.a(usage, aVar.f17298e);
            }
            this.f17300a = usage.build();
        }
    }

    /* compiled from: AudioAttributes.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private int f17301a = 0;

        /* renamed from: b  reason: collision with root package name */
        private int f17302b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f17303c = 1;

        /* renamed from: d  reason: collision with root package name */
        private int f17304d = 1;

        /* renamed from: e  reason: collision with root package name */
        private int f17305e = 0;

        public a a() {
            return new a(this.f17301a, this.f17302b, this.f17303c, this.f17304d, this.f17305e);
        }

        public e b(int i10) {
            this.f17304d = i10;
            return this;
        }

        public e c(int i10) {
            this.f17301a = i10;
            return this;
        }

        public e d(int i10) {
            this.f17302b = i10;
            return this;
        }

        public e e(int i10) {
            this.f17305e = i10;
            return this;
        }

        public e f(int i10) {
            this.f17303c = i10;
            return this;
        }
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a d(Bundle bundle) {
        e eVar = new e();
        if (bundle.containsKey(c(0))) {
            eVar.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            eVar.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            eVar.f(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            eVar.b(bundle.getInt(c(3)));
        }
        if (bundle.containsKey(c(4))) {
            eVar.e(bundle.getInt(c(4)));
        }
        return eVar.a();
    }

    @RequiresApi(21)
    public d b() {
        if (this.f17299f == null) {
            this.f17299f = new d();
        }
        return this.f17299f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f17294a == aVar.f17294a && this.f17295b == aVar.f17295b && this.f17296c == aVar.f17296c && this.f17297d == aVar.f17297d && this.f17298e == aVar.f17298e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f17294a) * 31) + this.f17295b) * 31) + this.f17296c) * 31) + this.f17297d) * 31) + this.f17298e;
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.f17294a);
        bundle.putInt(c(1), this.f17295b);
        bundle.putInt(c(2), this.f17296c);
        bundle.putInt(c(3), this.f17297d);
        bundle.putInt(c(4), this.f17298e);
        return bundle;
    }

    private a(int i10, int i11, int i12, int i13, int i14) {
        this.f17294a = i10;
        this.f17295b = i11;
        this.f17296c = i12;
        this.f17297d = i13;
        this.f17298e = i14;
    }
}
