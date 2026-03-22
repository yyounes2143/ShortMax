package io.bidmachine.media3.common;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import h7.e;
import h7.f;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import zm.g;
import zm.p;
import zm.t;
import zm.u;
/* compiled from: Format.java */
/* loaded from: classes8.dex */
public final class a {
    private static final a P = new b().N();
    private static final String Q = m0.C0(0);
    private static final String R = m0.C0(1);
    private static final String S = m0.C0(2);
    private static final String T = m0.C0(3);
    private static final String U = m0.C0(4);
    private static final String V = m0.C0(5);
    private static final String W = m0.C0(6);
    private static final String X = m0.C0(7);
    private static final String Y = m0.C0(8);
    private static final String Z = m0.C0(9);

    /* renamed from: a0  reason: collision with root package name */
    private static final String f55135a0 = m0.C0(10);

    /* renamed from: b0  reason: collision with root package name */
    private static final String f55136b0 = m0.C0(11);

    /* renamed from: c0  reason: collision with root package name */
    private static final String f55137c0 = m0.C0(12);

    /* renamed from: d0  reason: collision with root package name */
    private static final String f55138d0 = m0.C0(13);

    /* renamed from: e0  reason: collision with root package name */
    private static final String f55139e0 = m0.C0(14);

    /* renamed from: f0  reason: collision with root package name */
    private static final String f55140f0 = m0.C0(15);

    /* renamed from: g0  reason: collision with root package name */
    private static final String f55141g0 = m0.C0(16);

    /* renamed from: h0  reason: collision with root package name */
    private static final String f55142h0 = m0.C0(17);

    /* renamed from: i0  reason: collision with root package name */
    private static final String f55143i0 = m0.C0(18);

    /* renamed from: j0  reason: collision with root package name */
    private static final String f55144j0 = m0.C0(19);

    /* renamed from: k0  reason: collision with root package name */
    private static final String f55145k0 = m0.C0(20);

    /* renamed from: l0  reason: collision with root package name */
    private static final String f55146l0 = m0.C0(21);

    /* renamed from: m0  reason: collision with root package name */
    private static final String f55147m0 = m0.C0(22);

    /* renamed from: n0  reason: collision with root package name */
    private static final String f55148n0 = m0.C0(23);

    /* renamed from: o0  reason: collision with root package name */
    private static final String f55149o0 = m0.C0(24);

    /* renamed from: p0  reason: collision with root package name */
    private static final String f55150p0 = m0.C0(25);

    /* renamed from: q0  reason: collision with root package name */
    private static final String f55151q0 = m0.C0(26);

    /* renamed from: r0  reason: collision with root package name */
    private static final String f55152r0 = m0.C0(27);

    /* renamed from: s0  reason: collision with root package name */
    private static final String f55153s0 = m0.C0(28);

    /* renamed from: t0  reason: collision with root package name */
    private static final String f55154t0 = m0.C0(29);

    /* renamed from: u0  reason: collision with root package name */
    private static final String f55155u0 = m0.C0(30);

    /* renamed from: v0  reason: collision with root package name */
    private static final String f55156v0 = m0.C0(31);

    /* renamed from: w0  reason: collision with root package name */
    private static final String f55157w0 = m0.C0(32);

    /* renamed from: x0  reason: collision with root package name */
    private static final String f55158x0 = m0.C0(33);

    /* renamed from: y0  reason: collision with root package name */
    private static final String f55159y0 = m0.C0(34);
    @Nullable
    public final byte[] A;
    public final int B;
    @Nullable
    public final g C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    private int O;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f55160a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f55161b;

    /* renamed from: c  reason: collision with root package name */
    public final List<p> f55162c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f55163d;

    /* renamed from: e  reason: collision with root package name */
    public final int f55164e;

    /* renamed from: f  reason: collision with root package name */
    public final int f55165f;

    /* renamed from: g  reason: collision with root package name */
    public final int f55166g;

    /* renamed from: h  reason: collision with root package name */
    public final int f55167h;

    /* renamed from: i  reason: collision with root package name */
    public final int f55168i;

    /* renamed from: j  reason: collision with root package name */
    public final int f55169j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final String f55170k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final t f55171l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public final Object f55172m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public final String f55173n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public final String f55174o;

    /* renamed from: p  reason: collision with root package name */
    public final int f55175p;

    /* renamed from: q  reason: collision with root package name */
    public final int f55176q;

    /* renamed from: r  reason: collision with root package name */
    public final List<byte[]> f55177r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public final DrmInitData f55178s;

    /* renamed from: t  reason: collision with root package name */
    public final long f55179t;

    /* renamed from: u  reason: collision with root package name */
    public final boolean f55180u;

    /* renamed from: v  reason: collision with root package name */
    public final int f55181v;

    /* renamed from: w  reason: collision with root package name */
    public final int f55182w;

    /* renamed from: x  reason: collision with root package name */
    public final float f55183x;

    /* renamed from: y  reason: collision with root package name */
    public final int f55184y;

    /* renamed from: z  reason: collision with root package name */
    public final float f55185z;

    /* compiled from: Format.java */
    /* loaded from: classes8.dex */
    public static final class b {
        private int A;
        @Nullable
        private g B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;
        private int H;
        private int I;
        private int J;
        private int K;
        private int L;
        private int M;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f55186a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f55187b;

        /* renamed from: c  reason: collision with root package name */
        private List<p> f55188c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f55189d;

        /* renamed from: e  reason: collision with root package name */
        private int f55190e;

        /* renamed from: f  reason: collision with root package name */
        private int f55191f;

        /* renamed from: g  reason: collision with root package name */
        private int f55192g;

        /* renamed from: h  reason: collision with root package name */
        private int f55193h;

        /* renamed from: i  reason: collision with root package name */
        private int f55194i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f55195j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private t f55196k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private Object f55197l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private String f55198m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private String f55199n;

        /* renamed from: o  reason: collision with root package name */
        private int f55200o;

        /* renamed from: p  reason: collision with root package name */
        private int f55201p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        private List<byte[]> f55202q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private DrmInitData f55203r;

        /* renamed from: s  reason: collision with root package name */
        private long f55204s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f55205t;

        /* renamed from: u  reason: collision with root package name */
        private int f55206u;

        /* renamed from: v  reason: collision with root package name */
        private int f55207v;

        /* renamed from: w  reason: collision with root package name */
        private float f55208w;

        /* renamed from: x  reason: collision with root package name */
        private int f55209x;

        /* renamed from: y  reason: collision with root package name */
        private float f55210y;
        @Nullable

        /* renamed from: z  reason: collision with root package name */
        private byte[] f55211z;

        public b A0(int i10) {
            this.L = i10;
            return this;
        }

        public b B0(int i10) {
            this.f55206u = i10;
            return this;
        }

        public a N() {
            return new a(this);
        }

        public b O(int i10) {
            this.I = i10;
            return this;
        }

        public b P(int i10) {
            this.f55192g = i10;
            return this;
        }

        public b Q(int i10) {
            this.f55193h = i10;
            return this;
        }

        public b R(int i10) {
            this.D = i10;
            return this;
        }

        public b S(@Nullable String str) {
            this.f55195j = str;
            return this;
        }

        public b T(@Nullable g gVar) {
            this.B = gVar;
            return this;
        }

        public b U(@Nullable String str) {
            this.f55198m = u.u(str);
            return this;
        }

        public b V(int i10) {
            this.M = i10;
            return this;
        }

        public b W(int i10) {
            this.J = i10;
            return this;
        }

        public b X(@Nullable Object obj) {
            this.f55197l = obj;
            return this;
        }

        public b Y(@Nullable DrmInitData drmInitData) {
            this.f55203r = drmInitData;
            return this;
        }

        public b Z(int i10) {
            this.G = i10;
            return this;
        }

        public b a0(int i10) {
            this.H = i10;
            return this;
        }

        public b b0(float f10) {
            this.f55208w = f10;
            return this;
        }

        public b c0(boolean z10) {
            this.f55205t = z10;
            return this;
        }

        public b d0(int i10) {
            this.f55207v = i10;
            return this;
        }

        public b e0(int i10) {
            this.f55186a = Integer.toString(i10);
            return this;
        }

        public b f0(@Nullable String str) {
            this.f55186a = str;
            return this;
        }

        public b g0(@Nullable List<byte[]> list) {
            this.f55202q = list;
            return this;
        }

        public b h0(@Nullable String str) {
            this.f55187b = str;
            return this;
        }

        public b i0(List<p> list) {
            this.f55188c = ImmutableList.u(list);
            return this;
        }

        public b j0(@Nullable String str) {
            this.f55189d = str;
            return this;
        }

        public b k0(int i10) {
            this.f55200o = i10;
            return this;
        }

        public b l0(int i10) {
            this.f55201p = i10;
            return this;
        }

        public b m0(int i10) {
            this.C = i10;
            return this;
        }

        public b n0(@Nullable t tVar) {
            this.f55196k = tVar;
            return this;
        }

        public b o0(int i10) {
            this.F = i10;
            return this;
        }

        public b p0(int i10) {
            this.f55194i = i10;
            return this;
        }

        public b q0(float f10) {
            this.f55210y = f10;
            return this;
        }

        public b r0(@Nullable byte[] bArr) {
            this.f55211z = bArr;
            return this;
        }

        public b s0(int i10) {
            this.f55191f = i10;
            return this;
        }

        public b t0(int i10) {
            this.f55209x = i10;
            return this;
        }

        public b u0(@Nullable String str) {
            this.f55199n = u.u(str);
            return this;
        }

        public b v0(int i10) {
            this.E = i10;
            return this;
        }

        public b w0(int i10) {
            this.f55190e = i10;
            return this;
        }

        public b x0(int i10) {
            this.A = i10;
            return this;
        }

        public b y0(long j10) {
            this.f55204s = j10;
            return this;
        }

        public b z0(int i10) {
            this.K = i10;
            return this;
        }

        public b() {
            this.f55188c = ImmutableList.A();
            this.f55193h = -1;
            this.f55194i = -1;
            this.f55200o = -1;
            this.f55201p = -1;
            this.f55204s = Long.MAX_VALUE;
            this.f55206u = -1;
            this.f55207v = -1;
            this.f55208w = -1.0f;
            this.f55210y = 1.0f;
            this.A = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.I = -1;
            this.J = 1;
            this.K = -1;
            this.L = -1;
            this.M = 0;
            this.f55192g = 0;
        }

        private b(a aVar) {
            this.f55186a = aVar.f55160a;
            this.f55187b = aVar.f55161b;
            this.f55188c = aVar.f55162c;
            this.f55189d = aVar.f55163d;
            this.f55190e = aVar.f55164e;
            this.f55191f = aVar.f55165f;
            this.f55193h = aVar.f55167h;
            this.f55194i = aVar.f55168i;
            this.f55195j = aVar.f55170k;
            this.f55196k = aVar.f55171l;
            this.f55197l = aVar.f55172m;
            this.f55198m = aVar.f55173n;
            this.f55199n = aVar.f55174o;
            this.f55200o = aVar.f55175p;
            this.f55201p = aVar.f55176q;
            this.f55202q = aVar.f55177r;
            this.f55203r = aVar.f55178s;
            this.f55204s = aVar.f55179t;
            this.f55205t = aVar.f55180u;
            this.f55206u = aVar.f55181v;
            this.f55207v = aVar.f55182w;
            this.f55208w = aVar.f55183x;
            this.f55209x = aVar.f55184y;
            this.f55210y = aVar.f55185z;
            this.f55211z = aVar.A;
            this.A = aVar.B;
            this.B = aVar.C;
            this.C = aVar.D;
            this.D = aVar.E;
            this.E = aVar.F;
            this.F = aVar.G;
            this.G = aVar.H;
            this.H = aVar.I;
            this.I = aVar.J;
            this.J = aVar.K;
            this.K = aVar.L;
            this.L = aVar.M;
            this.M = aVar.N;
        }
    }

    private static String d(List<p> list, @Nullable String str) {
        for (p pVar : list) {
            if (TextUtils.equals(pVar.f71982a, str)) {
                return pVar.f71983b;
            }
        }
        return list.get(0).f71983b;
    }

    private static boolean g(b bVar) {
        if (bVar.f55188c.isEmpty() && bVar.f55187b == null) {
            return true;
        }
        for (int i10 = 0; i10 < bVar.f55188c.size(); i10++) {
            if (((p) bVar.f55188c.get(i10)).f71983b.equals(bVar.f55187b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(p pVar) {
        return pVar.f71982a + ": " + pVar.f71983b;
    }

    public static String i(@Nullable a aVar) {
        if (aVar == null) {
            return "null";
        }
        f f10 = f.f(',');
        StringBuilder sb2 = new StringBuilder();
        sb2.append("id=");
        sb2.append(aVar.f55160a);
        sb2.append(", mimeType=");
        sb2.append(aVar.f55174o);
        if (aVar.f55173n != null) {
            sb2.append(", container=");
            sb2.append(aVar.f55173n);
        }
        if (aVar.f55169j != -1) {
            sb2.append(", bitrate=");
            sb2.append(aVar.f55169j);
        }
        if (aVar.f55170k != null) {
            sb2.append(", codecs=");
            sb2.append(aVar.f55170k);
        }
        if (aVar.f55178s != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i10 = 0;
            while (true) {
                DrmInitData drmInitData = aVar.f55178s;
                if (i10 >= drmInitData.f55105d) {
                    break;
                }
                UUID uuid = drmInitData.e(i10).f55107b;
                if (uuid.equals(zm.f.f71929b)) {
                    linkedHashSet.add(C.CENC_TYPE_cenc);
                } else if (uuid.equals(zm.f.f71930c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(zm.f.f71932e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(zm.f.f71931d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(zm.f.f71928a)) {
                    linkedHashSet.add(GatewayException.GATEWAY_RESPONSE_DEPTH_UNIVERSAL);
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
                i10++;
            }
            sb2.append(", drm=[");
            f10.b(sb2, linkedHashSet);
            sb2.append(']');
        }
        if (aVar.f55181v != -1 && aVar.f55182w != -1) {
            sb2.append(", res=");
            sb2.append(aVar.f55181v);
            sb2.append(TextureRenderKeys.KEY_IS_X);
            sb2.append(aVar.f55182w);
        }
        if (!j7.b.a(aVar.f55185z, 1.0d, 0.001d)) {
            sb2.append(", par=");
            sb2.append(m0.G("%.3f", Float.valueOf(aVar.f55185z)));
        }
        g gVar = aVar.C;
        if (gVar != null && gVar.i()) {
            sb2.append(", color=");
            sb2.append(aVar.C.m());
        }
        if (aVar.f55183x != -1.0f) {
            sb2.append(", fps=");
            sb2.append(aVar.f55183x);
        }
        if (aVar.D != -1) {
            sb2.append(", maxSubLayers=");
            sb2.append(aVar.D);
        }
        if (aVar.E != -1) {
            sb2.append(", channels=");
            sb2.append(aVar.E);
        }
        if (aVar.F != -1) {
            sb2.append(", sample_rate=");
            sb2.append(aVar.F);
        }
        if (aVar.f55163d != null) {
            sb2.append(", language=");
            sb2.append(aVar.f55163d);
        }
        if (!aVar.f55162c.isEmpty()) {
            sb2.append(", labels=[");
            f10.b(sb2, Lists.l(aVar.f55162c, new e() { // from class: zm.o
                @Override // h7.e
                public final Object apply(Object obj) {
                    String h10;
                    h10 = io.bidmachine.media3.common.a.h((p) obj);
                    return h10;
                }
            }));
            sb2.append("]");
        }
        if (aVar.f55164e != 0) {
            sb2.append(", selectionFlags=[");
            f10.b(sb2, m0.n0(aVar.f55164e));
            sb2.append("]");
        }
        if (aVar.f55165f != 0) {
            sb2.append(", roleFlags=[");
            f10.b(sb2, m0.m0(aVar.f55165f));
            sb2.append("]");
        }
        if (aVar.f55172m != null) {
            sb2.append(", customData=");
            sb2.append(aVar.f55172m);
        }
        if ((aVar.f55165f & 32768) != 0) {
            sb2.append(", auxiliaryTrackType=");
            sb2.append(m0.N(aVar.f55166g));
        }
        return sb2.toString();
    }

    public b b() {
        return new b();
    }

    public a c(int i10) {
        return b().V(i10).N();
    }

    public int e() {
        int i10;
        int i11 = this.f55181v;
        if (i11 == -1 || (i10 = this.f55182w) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public boolean equals(@Nullable Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        int i11 = this.O;
        if (i11 != 0 && (i10 = aVar.O) != 0 && i11 != i10) {
            return false;
        }
        if (this.f55164e == aVar.f55164e && this.f55165f == aVar.f55165f && this.f55166g == aVar.f55166g && this.f55167h == aVar.f55167h && this.f55168i == aVar.f55168i && this.f55175p == aVar.f55175p && this.f55179t == aVar.f55179t && this.f55181v == aVar.f55181v && this.f55182w == aVar.f55182w && this.f55184y == aVar.f55184y && this.B == aVar.B && this.D == aVar.D && this.E == aVar.E && this.F == aVar.F && this.G == aVar.G && this.H == aVar.H && this.I == aVar.I && this.J == aVar.J && this.L == aVar.L && this.M == aVar.M && this.N == aVar.N && Float.compare(this.f55183x, aVar.f55183x) == 0 && Float.compare(this.f55185z, aVar.f55185z) == 0 && Objects.equals(this.f55160a, aVar.f55160a) && Objects.equals(this.f55161b, aVar.f55161b) && this.f55162c.equals(aVar.f55162c) && Objects.equals(this.f55170k, aVar.f55170k) && Objects.equals(this.f55173n, aVar.f55173n) && Objects.equals(this.f55174o, aVar.f55174o) && Objects.equals(this.f55163d, aVar.f55163d) && Arrays.equals(this.A, aVar.A) && Objects.equals(this.f55171l, aVar.f55171l) && Objects.equals(this.C, aVar.C) && Objects.equals(this.f55178s, aVar.f55178s) && f(aVar) && Objects.equals(this.f55172m, aVar.f55172m)) {
            return true;
        }
        return false;
    }

    public boolean f(a aVar) {
        if (this.f55177r.size() != aVar.f55177r.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f55177r.size(); i10++) {
            if (!Arrays.equals(this.f55177r.get(i10), aVar.f55177r.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        if (this.O == 0) {
            String str = this.f55160a;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + hashCode) * 31;
            String str2 = this.f55161b;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int hashCode8 = (((i11 + hashCode2) * 31) + this.f55162c.hashCode()) * 31;
            String str3 = this.f55163d;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i12 = (((((((((((hashCode8 + hashCode3) * 31) + this.f55164e) * 31) + this.f55165f) * 31) + this.f55166g) * 31) + this.f55167h) * 31) + this.f55168i) * 31;
            String str4 = this.f55170k;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i13 = (i12 + hashCode4) * 31;
            t tVar = this.f55171l;
            if (tVar == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = tVar.hashCode();
            }
            int i14 = (i13 + hashCode5) * 31;
            Object obj = this.f55172m;
            if (obj == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = obj.hashCode();
            }
            int i15 = (i14 + hashCode6) * 31;
            String str5 = this.f55173n;
            if (str5 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = str5.hashCode();
            }
            int i16 = (i15 + hashCode7) * 31;
            String str6 = this.f55174o;
            if (str6 != null) {
                i10 = str6.hashCode();
            }
            this.O = ((((((((((((((((((((((((((((((((((((i16 + i10) * 31) + this.f55175p) * 31) + ((int) this.f55179t)) * 31) + this.f55181v) * 31) + this.f55182w) * 31) + Float.floatToIntBits(this.f55183x)) * 31) + this.f55184y) * 31) + Float.floatToIntBits(this.f55185z)) * 31) + this.B) * 31) + this.D) * 31) + this.E) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.L) * 31) + this.M) * 31) + this.N;
        }
        return this.O;
    }

    public a j(a aVar) {
        List<p> list;
        String str;
        t b10;
        if (this == aVar) {
            return this;
        }
        int k10 = u.k(this.f55174o);
        String str2 = aVar.f55160a;
        int i10 = aVar.L;
        int i11 = aVar.M;
        String str3 = aVar.f55161b;
        if (str3 == null) {
            str3 = this.f55161b;
        }
        if (!aVar.f55162c.isEmpty()) {
            list = aVar.f55162c;
        } else {
            list = this.f55162c;
        }
        String str4 = this.f55163d;
        if ((k10 == 3 || k10 == 1) && (str = aVar.f55163d) != null) {
            str4 = str;
        }
        int i12 = this.f55167h;
        if (i12 == -1) {
            i12 = aVar.f55167h;
        }
        int i13 = this.f55168i;
        if (i13 == -1) {
            i13 = aVar.f55168i;
        }
        String str5 = this.f55170k;
        if (str5 == null) {
            String S2 = m0.S(aVar.f55170k, k10);
            if (m0.o1(S2).length == 1) {
                str5 = S2;
            }
        }
        t tVar = this.f55171l;
        if (tVar == null) {
            b10 = aVar.f55171l;
        } else {
            b10 = tVar.b(aVar.f55171l);
        }
        float f10 = this.f55183x;
        if (f10 == -1.0f && k10 == 2) {
            f10 = aVar.f55183x;
        }
        int i14 = this.f55164e | aVar.f55164e;
        return b().f0(str2).h0(str3).i0(list).j0(str4).w0(i14).s0(this.f55165f | aVar.f55165f).Q(i12).p0(i13).S(str5).n0(b10).Y(DrmInitData.d(aVar.f55178s, this.f55178s)).b0(f10).z0(i10).A0(i11).N();
    }

    public String toString() {
        return "Format(" + this.f55160a + ", " + this.f55161b + ", " + this.f55173n + ", " + this.f55174o + ", " + this.f55170k + ", " + this.f55169j + ", " + this.f55163d + ", [" + this.f55181v + ", " + this.f55182w + ", " + this.f55183x + ", " + this.C + "], [" + this.E + ", " + this.F + "])";
    }

    private a(b bVar) {
        this.f55160a = bVar.f55186a;
        String V0 = m0.V0(bVar.f55189d);
        this.f55163d = V0;
        if (!bVar.f55188c.isEmpty() || bVar.f55187b == null) {
            if (!bVar.f55188c.isEmpty() && bVar.f55187b == null) {
                this.f55162c = bVar.f55188c;
                this.f55161b = d(bVar.f55188c, V0);
            } else {
                cn.a.g(g(bVar));
                this.f55162c = bVar.f55188c;
                this.f55161b = bVar.f55187b;
            }
        } else {
            this.f55162c = ImmutableList.B(new p(V0, bVar.f55187b));
            this.f55161b = bVar.f55187b;
        }
        this.f55164e = bVar.f55190e;
        cn.a.h(bVar.f55192g == 0 || (bVar.f55191f & 32768) != 0, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set");
        this.f55165f = bVar.f55191f;
        this.f55166g = bVar.f55192g;
        int i10 = bVar.f55193h;
        this.f55167h = i10;
        int i11 = bVar.f55194i;
        this.f55168i = i11;
        this.f55169j = i11 != -1 ? i11 : i10;
        this.f55170k = bVar.f55195j;
        this.f55171l = bVar.f55196k;
        this.f55172m = bVar.f55197l;
        this.f55173n = bVar.f55198m;
        this.f55174o = bVar.f55199n;
        this.f55175p = bVar.f55200o;
        this.f55176q = bVar.f55201p;
        this.f55177r = bVar.f55202q == null ? Collections.emptyList() : bVar.f55202q;
        DrmInitData drmInitData = bVar.f55203r;
        this.f55178s = drmInitData;
        this.f55179t = bVar.f55204s;
        this.f55180u = bVar.f55205t;
        this.f55181v = bVar.f55206u;
        this.f55182w = bVar.f55207v;
        this.f55183x = bVar.f55208w;
        this.f55184y = bVar.f55209x == -1 ? 0 : bVar.f55209x;
        this.f55185z = bVar.f55210y == -1.0f ? 1.0f : bVar.f55210y;
        this.A = bVar.f55211z;
        this.B = bVar.A;
        this.C = bVar.B;
        this.D = bVar.C;
        this.E = bVar.D;
        this.F = bVar.E;
        this.G = bVar.F;
        this.H = bVar.G == -1 ? 0 : bVar.G;
        this.I = bVar.H != -1 ? bVar.H : 0;
        this.J = bVar.I;
        this.K = bVar.J;
        this.L = bVar.K;
        this.M = bVar.L;
        if (bVar.M != 0 || drmInitData == null) {
            this.N = bVar.M;
        } else {
            this.N = 1;
        }
    }
}
