package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.y0;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* compiled from: MediaItem.java */
/* loaded from: classes4.dex */
public final class y0 implements com.google.android.exoplayer2.g {

    /* renamed from: i  reason: collision with root package name */
    public static final y0 f19331i = new c().a();

    /* renamed from: j  reason: collision with root package name */
    public static final g.a<y0> f19332j = new g.a() { // from class: o5.e0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            com.google.android.exoplayer2.y0 c10;
            c10 = com.google.android.exoplayer2.y0.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f19333a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final h f19334b;
    @Nullable
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final i f19335c;

    /* renamed from: d  reason: collision with root package name */
    public final g f19336d;

    /* renamed from: e  reason: collision with root package name */
    public final z0 f19337e;

    /* renamed from: f  reason: collision with root package name */
    public final d f19338f;
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    public final e f19339g;

    /* renamed from: h  reason: collision with root package name */
    public final j f19340h;

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static final class b {
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static final class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f19341a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Uri f19342b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f19343c;

        /* renamed from: d  reason: collision with root package name */
        private d.a f19344d;

        /* renamed from: e  reason: collision with root package name */
        private f.a f19345e;

        /* renamed from: f  reason: collision with root package name */
        private List<StreamKey> f19346f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f19347g;

        /* renamed from: h  reason: collision with root package name */
        private ImmutableList<l> f19348h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Object f19349i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private z0 f19350j;

        /* renamed from: k  reason: collision with root package name */
        private g.a f19351k;

        /* renamed from: l  reason: collision with root package name */
        private j f19352l;

        public y0 a() {
            boolean z10;
            i iVar;
            if (this.f19345e.f19378b != null && this.f19345e.f19377a == null) {
                z10 = false;
            } else {
                z10 = true;
            }
            b7.a.g(z10);
            Uri uri = this.f19342b;
            f fVar = null;
            if (uri != null) {
                String str = this.f19343c;
                if (this.f19345e.f19377a != null) {
                    fVar = this.f19345e.i();
                }
                iVar = new i(uri, str, fVar, null, this.f19346f, this.f19347g, this.f19348h, this.f19349i);
            } else {
                iVar = null;
            }
            String str2 = this.f19341a;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            e g10 = this.f19344d.g();
            g f10 = this.f19351k.f();
            z0 z0Var = this.f19350j;
            if (z0Var == null) {
                z0Var = z0.G;
            }
            return new y0(str3, g10, iVar, f10, z0Var, this.f19352l);
        }

        public c b(@Nullable String str) {
            this.f19347g = str;
            return this;
        }

        public c c(g gVar) {
            this.f19351k = gVar.b();
            return this;
        }

        public c d(String str) {
            this.f19341a = (String) b7.a.e(str);
            return this;
        }

        public c e(List<l> list) {
            this.f19348h = ImmutableList.u(list);
            return this;
        }

        public c f(@Nullable Object obj) {
            this.f19349i = obj;
            return this;
        }

        public c g(@Nullable Uri uri) {
            this.f19342b = uri;
            return this;
        }

        public c h(@Nullable String str) {
            Uri parse;
            if (str == null) {
                parse = null;
            } else {
                parse = Uri.parse(str);
            }
            return g(parse);
        }

        public c() {
            this.f19344d = new d.a();
            this.f19345e = new f.a();
            this.f19346f = Collections.emptyList();
            this.f19348h = ImmutableList.A();
            this.f19351k = new g.a();
            this.f19352l = j.f19405d;
        }

        private c(y0 y0Var) {
            this();
            f.a aVar;
            this.f19344d = y0Var.f19338f.b();
            this.f19341a = y0Var.f19333a;
            this.f19350j = y0Var.f19337e;
            this.f19351k = y0Var.f19336d.b();
            this.f19352l = y0Var.f19340h;
            h hVar = y0Var.f19334b;
            if (hVar != null) {
                this.f19347g = hVar.f19401e;
                this.f19343c = hVar.f19398b;
                this.f19342b = hVar.f19397a;
                this.f19346f = hVar.f19400d;
                this.f19348h = hVar.f19402f;
                this.f19349i = hVar.f19404h;
                f fVar = hVar.f19399c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.f19345e = aVar;
            }
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static class d implements com.google.android.exoplayer2.g {

        /* renamed from: f  reason: collision with root package name */
        public static final d f19353f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        public static final g.a<e> f19354g = new g.a() { // from class: o5.f0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                y0.e d10;
                d10 = y0.d.d(bundle);
                return d10;
            }
        };
        @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

        /* renamed from: a  reason: collision with root package name */
        public final long f19355a;

        /* renamed from: b  reason: collision with root package name */
        public final long f19356b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f19357c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f19358d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f19359e;

        /* compiled from: MediaItem.java */
        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f19360a;

            /* renamed from: b  reason: collision with root package name */
            private long f19361b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f19362c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f19363d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f19364e;

            public d f() {
                return g();
            }

            @Deprecated
            public e g() {
                return new e(this);
            }

            public a h(long j10) {
                boolean z10;
                if (j10 != Long.MIN_VALUE && j10 < 0) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                b7.a.a(z10);
                this.f19361b = j10;
                return this;
            }

            public a i(boolean z10) {
                this.f19363d = z10;
                return this;
            }

            public a j(boolean z10) {
                this.f19362c = z10;
                return this;
            }

            public a k(@IntRange(from = 0) long j10) {
                boolean z10;
                if (j10 >= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                b7.a.a(z10);
                this.f19360a = j10;
                return this;
            }

            public a l(boolean z10) {
                this.f19364e = z10;
                return this;
            }

            public a() {
                this.f19361b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f19360a = dVar.f19355a;
                this.f19361b = dVar.f19356b;
                this.f19362c = dVar.f19357c;
                this.f19363d = dVar.f19358d;
                this.f19364e = dVar.f19359e;
            }
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e d(Bundle bundle) {
            return new a().k(bundle.getLong(c(0), 0L)).h(bundle.getLong(c(1), Long.MIN_VALUE)).j(bundle.getBoolean(c(2), false)).i(bundle.getBoolean(c(3), false)).l(bundle.getBoolean(c(4), false)).g();
        }

        public a b() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f19355a == dVar.f19355a && this.f19356b == dVar.f19356b && this.f19357c == dVar.f19357c && this.f19358d == dVar.f19358d && this.f19359e == dVar.f19359e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f19355a;
            long j11 = this.f19356b;
            return (((((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11))) * 31) + (this.f19357c ? 1 : 0)) * 31) + (this.f19358d ? 1 : 0)) * 31) + (this.f19359e ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.f19355a);
            bundle.putLong(c(1), this.f19356b);
            bundle.putBoolean(c(2), this.f19357c);
            bundle.putBoolean(c(3), this.f19358d);
            bundle.putBoolean(c(4), this.f19359e);
            return bundle;
        }

        private d(a aVar) {
            this.f19355a = aVar.f19360a;
            this.f19356b = aVar.f19361b;
            this.f19357c = aVar.f19362c;
            this.f19358d = aVar.f19363d;
            this.f19359e = aVar.f19364e;
        }
    }

    /* compiled from: MediaItem.java */
    @Deprecated
    /* loaded from: classes4.dex */
    public static final class e extends d {

        /* renamed from: h  reason: collision with root package name */
        public static final e f19365h = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f19366a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public final UUID f19367b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Uri f19368c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public final ImmutableMap<String, String> f19369d;

        /* renamed from: e  reason: collision with root package name */
        public final ImmutableMap<String, String> f19370e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f19371f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f19372g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f19373h;
        @Deprecated

        /* renamed from: i  reason: collision with root package name */
        public final ImmutableList<Integer> f19374i;

        /* renamed from: j  reason: collision with root package name */
        public final ImmutableList<Integer> f19375j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final byte[] f19376k;

        public a b() {
            return new a();
        }

        @Nullable
        public byte[] c() {
            byte[] bArr = this.f19376k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f19366a.equals(fVar.f19366a) && b7.s0.c(this.f19368c, fVar.f19368c) && b7.s0.c(this.f19370e, fVar.f19370e) && this.f19371f == fVar.f19371f && this.f19373h == fVar.f19373h && this.f19372g == fVar.f19372g && this.f19375j.equals(fVar.f19375j) && Arrays.equals(this.f19376k, fVar.f19376k)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = this.f19366a.hashCode() * 31;
            Uri uri = this.f19368c;
            if (uri != null) {
                i10 = uri.hashCode();
            } else {
                i10 = 0;
            }
            return ((((((((((((hashCode + i10) * 31) + this.f19370e.hashCode()) * 31) + (this.f19371f ? 1 : 0)) * 31) + (this.f19373h ? 1 : 0)) * 31) + (this.f19372g ? 1 : 0)) * 31) + this.f19375j.hashCode()) * 31) + Arrays.hashCode(this.f19376k);
        }

        /* compiled from: MediaItem.java */
        /* loaded from: classes4.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private UUID f19377a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private Uri f19378b;

            /* renamed from: c  reason: collision with root package name */
            private ImmutableMap<String, String> f19379c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f19380d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f19381e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f19382f;

            /* renamed from: g  reason: collision with root package name */
            private ImmutableList<Integer> f19383g;
            @Nullable

            /* renamed from: h  reason: collision with root package name */
            private byte[] f19384h;

            public f i() {
                return new f(this);
            }

            @Deprecated
            private a() {
                this.f19379c = ImmutableMap.q();
                this.f19383g = ImmutableList.A();
            }

            private a(f fVar) {
                this.f19377a = fVar.f19366a;
                this.f19378b = fVar.f19368c;
                this.f19379c = fVar.f19370e;
                this.f19380d = fVar.f19371f;
                this.f19381e = fVar.f19372g;
                this.f19382f = fVar.f19373h;
                this.f19383g = fVar.f19375j;
                this.f19384h = fVar.f19376k;
            }
        }

        private f(a aVar) {
            b7.a.g((aVar.f19382f && aVar.f19378b == null) ? false : true);
            UUID uuid = (UUID) b7.a.e(aVar.f19377a);
            this.f19366a = uuid;
            this.f19367b = uuid;
            this.f19368c = aVar.f19378b;
            this.f19369d = aVar.f19379c;
            this.f19370e = aVar.f19379c;
            this.f19371f = aVar.f19380d;
            this.f19373h = aVar.f19382f;
            this.f19372g = aVar.f19381e;
            this.f19374i = aVar.f19383g;
            this.f19375j = aVar.f19383g;
            this.f19376k = aVar.f19384h != null ? Arrays.copyOf(aVar.f19384h, aVar.f19384h.length) : null;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static final class g implements com.google.android.exoplayer2.g {

        /* renamed from: f  reason: collision with root package name */
        public static final g f19385f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        public static final g.a<g> f19386g = new g.a() { // from class: o5.g0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                y0.g d10;
                d10 = y0.g.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f19387a;

        /* renamed from: b  reason: collision with root package name */
        public final long f19388b;

        /* renamed from: c  reason: collision with root package name */
        public final long f19389c;

        /* renamed from: d  reason: collision with root package name */
        public final float f19390d;

        /* renamed from: e  reason: collision with root package name */
        public final float f19391e;

        /* compiled from: MediaItem.java */
        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f19392a;

            /* renamed from: b  reason: collision with root package name */
            private long f19393b;

            /* renamed from: c  reason: collision with root package name */
            private long f19394c;

            /* renamed from: d  reason: collision with root package name */
            private float f19395d;

            /* renamed from: e  reason: collision with root package name */
            private float f19396e;

            public g f() {
                return new g(this);
            }

            public a g(long j10) {
                this.f19394c = j10;
                return this;
            }

            public a h(float f10) {
                this.f19396e = f10;
                return this;
            }

            public a i(long j10) {
                this.f19393b = j10;
                return this;
            }

            public a j(float f10) {
                this.f19395d = f10;
                return this;
            }

            public a k(long j10) {
                this.f19392a = j10;
                return this;
            }

            public a() {
                this.f19392a = -9223372036854775807L;
                this.f19393b = -9223372036854775807L;
                this.f19394c = -9223372036854775807L;
                this.f19395d = -3.4028235E38f;
                this.f19396e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f19392a = gVar.f19387a;
                this.f19393b = gVar.f19388b;
                this.f19394c = gVar.f19389c;
                this.f19395d = gVar.f19390d;
                this.f19396e = gVar.f19391e;
            }
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g d(Bundle bundle) {
            return new g(bundle.getLong(c(0), -9223372036854775807L), bundle.getLong(c(1), -9223372036854775807L), bundle.getLong(c(2), -9223372036854775807L), bundle.getFloat(c(3), -3.4028235E38f), bundle.getFloat(c(4), -3.4028235E38f));
        }

        public a b() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f19387a == gVar.f19387a && this.f19388b == gVar.f19388b && this.f19389c == gVar.f19389c && this.f19390d == gVar.f19390d && this.f19391e == gVar.f19391e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            long j10 = this.f19387a;
            long j11 = this.f19388b;
            long j12 = this.f19389c;
            int i11 = ((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) ((j12 >>> 32) ^ j12))) * 31;
            float f10 = this.f19390d;
            int i12 = 0;
            if (f10 != 0.0f) {
                i10 = Float.floatToIntBits(f10);
            } else {
                i10 = 0;
            }
            int i13 = (i11 + i10) * 31;
            float f11 = this.f19391e;
            if (f11 != 0.0f) {
                i12 = Float.floatToIntBits(f11);
            }
            return i13 + i12;
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.f19387a);
            bundle.putLong(c(1), this.f19388b);
            bundle.putLong(c(2), this.f19389c);
            bundle.putFloat(c(3), this.f19390d);
            bundle.putFloat(c(4), this.f19391e);
            return bundle;
        }

        private g(a aVar) {
            this(aVar.f19392a, aVar.f19393b, aVar.f19394c, aVar.f19395d, aVar.f19396e);
        }

        @Deprecated
        public g(long j10, long j11, long j12, float f10, float f11) {
            this.f19387a = j10;
            this.f19388b = j11;
            this.f19389c = j12;
            this.f19390d = f10;
            this.f19391e = f11;
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f19397a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f19398b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final f f19399c;

        /* renamed from: d  reason: collision with root package name */
        public final List<StreamKey> f19400d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f19401e;

        /* renamed from: f  reason: collision with root package name */
        public final ImmutableList<l> f19402f;
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public final List<k> f19403g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final Object f19404h;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (this.f19397a.equals(hVar.f19397a) && b7.s0.c(this.f19398b, hVar.f19398b) && b7.s0.c(this.f19399c, hVar.f19399c) && b7.s0.c(null, null) && this.f19400d.equals(hVar.f19400d) && b7.s0.c(this.f19401e, hVar.f19401e) && this.f19402f.equals(hVar.f19402f) && b7.s0.c(this.f19404h, hVar.f19404h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = this.f19397a.hashCode() * 31;
            String str = this.f19398b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode4 + hashCode) * 31;
            f fVar = this.f19399c;
            if (fVar == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = fVar.hashCode();
            }
            int hashCode5 = (((i11 + hashCode2) * 961) + this.f19400d.hashCode()) * 31;
            String str2 = this.f19401e;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int hashCode6 = (((hashCode5 + hashCode3) * 31) + this.f19402f.hashCode()) * 31;
            Object obj = this.f19404h;
            if (obj != null) {
                i10 = obj.hashCode();
            }
            return hashCode6 + i10;
        }

        private h(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<StreamKey> list, @Nullable String str2, ImmutableList<l> immutableList, @Nullable Object obj) {
            this.f19397a = uri;
            this.f19398b = str;
            this.f19399c = fVar;
            this.f19400d = list;
            this.f19401e = str2;
            this.f19402f = immutableList;
            ImmutableList.a r10 = ImmutableList.r();
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                r10.a(immutableList.get(i10).a().i());
            }
            this.f19403g = r10.k();
            this.f19404h = obj;
        }
    }

    /* compiled from: MediaItem.java */
    @Deprecated
    /* loaded from: classes4.dex */
    public static final class i extends h {
        private i(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<StreamKey> list, @Nullable String str2, ImmutableList<l> immutableList, @Nullable Object obj) {
            super(uri, str, fVar, bVar, list, str2, immutableList, obj);
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static final class j implements com.google.android.exoplayer2.g {

        /* renamed from: d  reason: collision with root package name */
        public static final j f19405d = new a().d();

        /* renamed from: e  reason: collision with root package name */
        public static final g.a<j> f19406e = new g.a() { // from class: o5.h0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                y0.j c10;
                c10 = y0.j.c(bundle);
                return c10;
            }
        };
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Uri f19407a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f19408b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f19409c;

        /* compiled from: MediaItem.java */
        /* loaded from: classes4.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private Uri f19410a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f19411b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private Bundle f19412c;

            public j d() {
                return new j(this);
            }

            public a e(@Nullable Bundle bundle) {
                this.f19412c = bundle;
                return this;
            }

            public a f(@Nullable Uri uri) {
                this.f19410a = uri;
                return this;
            }

            public a g(@Nullable String str) {
                this.f19411b = str;
                return this;
            }
        }

        private static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ j c(Bundle bundle) {
            return new a().f((Uri) bundle.getParcelable(b(0))).g(bundle.getString(b(1))).e(bundle.getBundle(b(2))).d();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            if (b7.s0.c(this.f19407a, jVar.f19407a) && b7.s0.c(this.f19408b, jVar.f19408b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Uri uri = this.f19407a;
            int i10 = 0;
            if (uri == null) {
                hashCode = 0;
            } else {
                hashCode = uri.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.f19408b;
            if (str != null) {
                i10 = str.hashCode();
            }
            return i11 + i10;
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (this.f19407a != null) {
                bundle.putParcelable(b(0), this.f19407a);
            }
            if (this.f19408b != null) {
                bundle.putString(b(1), this.f19408b);
            }
            if (this.f19409c != null) {
                bundle.putBundle(b(2), this.f19409c);
            }
            return bundle;
        }

        private j(a aVar) {
            this.f19407a = aVar.f19410a;
            this.f19408b = aVar.f19411b;
            this.f19409c = aVar.f19412c;
        }
    }

    /* compiled from: MediaItem.java */
    @Deprecated
    /* loaded from: classes4.dex */
    public static final class k extends l {
        private k(l.a aVar) {
            super(aVar);
        }
    }

    /* compiled from: MediaItem.java */
    /* loaded from: classes4.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f19413a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f19414b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f19415c;

        /* renamed from: d  reason: collision with root package name */
        public final int f19416d;

        /* renamed from: e  reason: collision with root package name */
        public final int f19417e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f19418f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f19419g;

        /* compiled from: MediaItem.java */
        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Uri f19420a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f19421b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private String f19422c;

            /* renamed from: d  reason: collision with root package name */
            private int f19423d;

            /* renamed from: e  reason: collision with root package name */
            private int f19424e;
            @Nullable

            /* renamed from: f  reason: collision with root package name */
            private String f19425f;
            @Nullable

            /* renamed from: g  reason: collision with root package name */
            private String f19426g;

            /* JADX INFO: Access modifiers changed from: private */
            public k i() {
                return new k(this);
            }

            private a(l lVar) {
                this.f19420a = lVar.f19413a;
                this.f19421b = lVar.f19414b;
                this.f19422c = lVar.f19415c;
                this.f19423d = lVar.f19416d;
                this.f19424e = lVar.f19417e;
                this.f19425f = lVar.f19418f;
                this.f19426g = lVar.f19419g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            if (this.f19413a.equals(lVar.f19413a) && b7.s0.c(this.f19414b, lVar.f19414b) && b7.s0.c(this.f19415c, lVar.f19415c) && this.f19416d == lVar.f19416d && this.f19417e == lVar.f19417e && b7.s0.c(this.f19418f, lVar.f19418f) && b7.s0.c(this.f19419g, lVar.f19419g)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4 = this.f19413a.hashCode() * 31;
            String str = this.f19414b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode4 + hashCode) * 31;
            String str2 = this.f19415c;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (((((i11 + hashCode2) * 31) + this.f19416d) * 31) + this.f19417e) * 31;
            String str3 = this.f19418f;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str4 = this.f19419g;
            if (str4 != null) {
                i10 = str4.hashCode();
            }
            return i13 + i10;
        }

        private l(a aVar) {
            this.f19413a = aVar.f19420a;
            this.f19414b = aVar.f19421b;
            this.f19415c = aVar.f19422c;
            this.f19416d = aVar.f19423d;
            this.f19417e = aVar.f19424e;
            this.f19418f = aVar.f19425f;
            this.f19419g = aVar.f19426g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static y0 c(Bundle bundle) {
        g fromBundle;
        z0 fromBundle2;
        e fromBundle3;
        j fromBundle4;
        String str = (String) b7.a.e(bundle.getString(e(0), ""));
        Bundle bundle2 = bundle.getBundle(e(1));
        if (bundle2 == null) {
            fromBundle = g.f19385f;
        } else {
            fromBundle = g.f19386g.fromBundle(bundle2);
        }
        g gVar = fromBundle;
        Bundle bundle3 = bundle.getBundle(e(2));
        if (bundle3 == null) {
            fromBundle2 = z0.G;
        } else {
            fromBundle2 = z0.H.fromBundle(bundle3);
        }
        z0 z0Var = fromBundle2;
        Bundle bundle4 = bundle.getBundle(e(3));
        if (bundle4 == null) {
            fromBundle3 = e.f19365h;
        } else {
            fromBundle3 = d.f19354g.fromBundle(bundle4);
        }
        e eVar = fromBundle3;
        Bundle bundle5 = bundle.getBundle(e(4));
        if (bundle5 == null) {
            fromBundle4 = j.f19405d;
        } else {
            fromBundle4 = j.f19406e.fromBundle(bundle5);
        }
        return new y0(str, eVar, null, gVar, z0Var, fromBundle4);
    }

    public static y0 d(String str) {
        return new c().h(str).a();
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    public c b() {
        return new c();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        if (b7.s0.c(this.f19333a, y0Var.f19333a) && this.f19338f.equals(y0Var.f19338f) && b7.s0.c(this.f19334b, y0Var.f19334b) && b7.s0.c(this.f19336d, y0Var.f19336d) && b7.s0.c(this.f19337e, y0Var.f19337e) && b7.s0.c(this.f19340h, y0Var.f19340h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f19333a.hashCode() * 31;
        h hVar = this.f19334b;
        if (hVar != null) {
            i10 = hVar.hashCode();
        } else {
            i10 = 0;
        }
        return ((((((((hashCode + i10) * 31) + this.f19336d.hashCode()) * 31) + this.f19338f.hashCode()) * 31) + this.f19337e.hashCode()) * 31) + this.f19340h.hashCode();
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(e(0), this.f19333a);
        bundle.putBundle(e(1), this.f19336d.toBundle());
        bundle.putBundle(e(2), this.f19337e.toBundle());
        bundle.putBundle(e(3), this.f19338f.toBundle());
        bundle.putBundle(e(4), this.f19340h.toBundle());
        return bundle;
    }

    private y0(String str, e eVar, @Nullable i iVar, g gVar, z0 z0Var, j jVar) {
        this.f19333a = str;
        this.f19334b = iVar;
        this.f19335c = iVar;
        this.f19336d = gVar;
        this.f19337e = z0Var;
        this.f19338f = eVar;
        this.f19339g = eVar;
        this.f19340h = jVar;
    }
}
