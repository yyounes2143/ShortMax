package mn;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import ao.p;
import ao.q;
import cn.h0;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import hn.b2;
import io.bidmachine.media3.common.a;
import ip.k0;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import yo.r;
import zm.m;
import zm.t;
import zm.u;
/* compiled from: DefaultHlsExtractorFactory.java */
/* loaded from: classes8.dex */
public final class c implements e {

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f62534g = {8, 13, 11, 2, 0, 1, 7};

    /* renamed from: b  reason: collision with root package name */
    private final int f62535b;

    /* renamed from: c  reason: collision with root package name */
    private r.a f62536c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f62537d;

    /* renamed from: e  reason: collision with root package name */
    private int f62538e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f62539f;

    public c() {
        this(0, true);
    }

    private static void f(int i10, List<Integer> list) {
        if (Ints.i(f62534g, i10) != -1 && !list.contains(Integer.valueOf(i10))) {
            list.add(Integer.valueOf(i10));
        }
    }

    @Nullable
    @SuppressLint({"SwitchIntDef"})
    private p h(int i10, io.bidmachine.media3.common.a aVar, @Nullable List<io.bidmachine.media3.common.a> list, h0 h0Var) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 7) {
                        if (i10 != 8) {
                            if (i10 != 11) {
                                if (i10 != 13) {
                                    return null;
                                }
                                return new j(aVar.f55163d, h0Var, this.f62536c, this.f62537d);
                            }
                            return j(this.f62535b, this.f62539f, aVar, list, h0Var, this.f62536c, this.f62537d);
                        }
                        return i(this.f62536c, this.f62537d, h0Var, aVar, list, this.f62538e);
                    }
                    return new uo.f(0, 0L);
                }
                return new ip.h();
            }
            return new ip.e();
        }
        return new ip.b();
    }

    private static vo.h i(r.a aVar, boolean z10, h0 h0Var, io.bidmachine.media3.common.a aVar2, @Nullable List<io.bidmachine.media3.common.a> list, int i10) {
        int i11;
        if (m(aVar2)) {
            i11 = 4;
        } else {
            i11 = 0;
        }
        if (!z10) {
            aVar = r.a.f71100a;
            i11 |= 32;
        }
        r.a aVar3 = aVar;
        int j10 = i11 | vo.h.j(i10);
        if (list == null) {
            list = ImmutableList.A();
        }
        return new vo.h(aVar3, j10, h0Var, null, list, null);
    }

    private static k0 j(int i10, boolean z10, io.bidmachine.media3.common.a aVar, @Nullable List<io.bidmachine.media3.common.a> list, h0 h0Var, r.a aVar2, boolean z11) {
        int i11;
        int i12 = i10 | 16;
        if (list != null) {
            i12 = i10 | 48;
        } else if (z10) {
            list = Collections.singletonList(new a.b().u0(MimeTypes.APPLICATION_CEA608).N());
        } else {
            list = Collections.emptyList();
        }
        String str = aVar.f55170k;
        if (!TextUtils.isEmpty(str)) {
            if (!u.b(str, MimeTypes.AUDIO_AAC)) {
                i12 |= 2;
            }
            if (!u.b(str, "video/avc")) {
                i12 |= 4;
            }
        }
        if (!z11) {
            aVar2 = r.a.f71100a;
            i11 = 1;
        } else {
            i11 = 0;
        }
        return new k0(2, i11, aVar2, h0Var, new ip.j(i12, list), 112800);
    }

    private static boolean m(io.bidmachine.media3.common.a aVar) {
        t.a d10;
        t tVar = aVar.f55171l;
        if (tVar == null) {
            return false;
        }
        for (int i10 = 0; i10 < tVar.e(); i10++) {
            if (tVar.d(i10) instanceof h) {
                return !((h) d10).f62544c.isEmpty();
            }
        }
        return false;
    }

    private static boolean o(p pVar, q qVar) throws IOException {
        try {
            boolean e10 = pVar.e(qVar);
            qVar.resetPeekPosition();
            return e10;
        } catch (EOFException unused) {
            qVar.resetPeekPosition();
            return false;
        } catch (Throwable th2) {
            qVar.resetPeekPosition();
            throw th2;
        }
    }

    @Override // mn.e
    public io.bidmachine.media3.common.a d(io.bidmachine.media3.common.a aVar) {
        String str;
        if (this.f62537d && this.f62536c.a(aVar)) {
            a.b W = aVar.b().u0("application/x-media3-cues").W(this.f62536c.b(aVar));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aVar.f55174o);
            if (aVar.f55170k != null) {
                str = " " + aVar.f55170k;
            } else {
                str = "";
            }
            sb2.append(str);
            return W.S(sb2.toString()).y0(Long.MAX_VALUE).N();
        }
        return aVar;
    }

    @Override // mn.e
    /* renamed from: g */
    public a e(Uri uri, io.bidmachine.media3.common.a aVar, @Nullable List<io.bidmachine.media3.common.a> list, h0 h0Var, Map<String, List<String>> map, q qVar, b2 b2Var) throws IOException {
        int a10 = m.a(aVar.f55174o);
        int b10 = m.b(map);
        int c10 = m.c(uri);
        int[] iArr = f62534g;
        ArrayList arrayList = new ArrayList(iArr.length);
        f(a10, arrayList);
        f(b10, arrayList);
        f(c10, arrayList);
        for (int i10 : iArr) {
            f(i10, arrayList);
        }
        qVar.resetPeekPosition();
        p pVar = null;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int intValue = ((Integer) arrayList.get(i11)).intValue();
            p pVar2 = (p) cn.a.e(h(intValue, aVar, list, h0Var));
            if (o(pVar2, qVar)) {
                return new a(pVar2, aVar, h0Var, this.f62536c, this.f62537d);
            }
            if (pVar == null && (intValue == a10 || intValue == b10 || intValue == c10 || intValue == 11)) {
                pVar = pVar2;
            }
        }
        return new a((p) cn.a.e(pVar), aVar, h0Var, this.f62536c, this.f62537d);
    }

    @Override // mn.e
    /* renamed from: k */
    public c c(boolean z10) {
        this.f62537d = z10;
        return this;
    }

    @Override // mn.e
    /* renamed from: l */
    public c b(int i10) {
        this.f62538e = i10;
        return this;
    }

    @Override // mn.e
    /* renamed from: n */
    public c a(r.a aVar) {
        this.f62536c = aVar;
        return this;
    }

    public c(int i10, boolean z10) {
        this.f62535b = i10;
        this.f62539f = z10;
        this.f62536c = new yo.h();
    }
}
