package io.bidmachine.media3.exoplayer;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.Objects;
/* compiled from: RendererHolder.java */
/* loaded from: classes8.dex */
class j2 {

    /* renamed from: a  reason: collision with root package name */
    private final h2 f56399a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56400b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final h2 f56401c;

    /* renamed from: d  reason: collision with root package name */
    private int f56402d = 0;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56403e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56404f = false;

    public j2(h2 h2Var, @Nullable h2 h2Var2, int i10) {
        this.f56399a = h2Var;
        this.f56400b = i10;
        this.f56401c = h2Var2;
    }

    private boolean A() {
        if (this.f56402d == 3) {
            return true;
        }
        return false;
    }

    private void C(h2 h2Var, sn.s sVar, k kVar, long j10, boolean z10) throws ExoPlaybackException {
        if (y(h2Var)) {
            if (sVar != h2Var.getStream()) {
                d(h2Var, kVar);
            } else if (z10) {
                h2Var.resetPosition(j10);
            }
        }
    }

    private void E(boolean z10) {
        if (z10) {
            if (this.f56403e) {
                this.f56399a.reset();
                this.f56403e = false;
            }
        } else if (this.f56404f) {
            ((h2) cn.a.e(this.f56401c)).reset();
            this.f56404f = false;
        }
    }

    private int K(@Nullable h2 h2Var, l1 l1Var, vn.w wVar, k kVar) throws ExoPlaybackException {
        boolean z10;
        if (h2Var == null || !y(h2Var) || ((h2Var == this.f56399a && v()) || (h2Var == this.f56401c && A()))) {
            return 1;
        }
        sn.s stream = h2Var.getStream();
        sn.s[] sVarArr = l1Var.f56433c;
        int i10 = this.f56400b;
        boolean z11 = false;
        if (stream != sVarArr[i10]) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean c10 = wVar.c(i10);
        if (c10 && !z10) {
            return 1;
        }
        if (!h2Var.isCurrentStreamFinal()) {
            h2Var.t(i(wVar.f69174c[this.f56400b]), (sn.s) cn.a.e(l1Var.f56433c[this.f56400b]), l1Var.n(), l1Var.m(), l1Var.f56438h.f56452a);
            return 3;
        } else if (!h2Var.isEnded()) {
            return 0;
        } else {
            d(h2Var, kVar);
            if (!c10 || u()) {
                if (h2Var == this.f56399a) {
                    z11 = true;
                }
                E(z11);
            }
            return 1;
        }
    }

    private void P(h2 h2Var, long j10) {
        h2Var.setCurrentStreamFinal();
        if (h2Var instanceof un.i) {
            ((un.i) h2Var).r0(j10);
        }
    }

    private void X(boolean z10) throws ExoPlaybackException {
        if (z10) {
            ((h2) cn.a.e(this.f56401c)).handleMessage(17, this.f56399a);
        } else {
            this.f56399a.handleMessage(17, cn.a.e(this.f56401c));
        }
    }

    private void d(h2 h2Var, k kVar) {
        boolean z10;
        if (this.f56399a != h2Var && this.f56401c != h2Var) {
            z10 = false;
        } else {
            z10 = true;
        }
        cn.a.g(z10);
        if (!y(h2Var)) {
            return;
        }
        kVar.a(h2Var);
        g(h2Var);
        h2Var.disable();
    }

    private void g(h2 h2Var) {
        if (h2Var.getState() == 2) {
            h2Var.stop();
        }
    }

    private static io.bidmachine.media3.common.a[] i(@Nullable vn.q qVar) {
        int i10;
        if (qVar != null) {
            i10 = qVar.length();
        } else {
            i10 = 0;
        }
        io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            aVarArr[i11] = ((vn.q) cn.a.e(qVar)).getFormat(i11);
        }
        return aVarArr;
    }

    @Nullable
    private h2 l(@Nullable l1 l1Var) {
        if (l1Var != null && l1Var.f56433c[this.f56400b] != null) {
            if (this.f56399a.getStream() == l1Var.f56433c[this.f56400b]) {
                return this.f56399a;
            }
            h2 h2Var = this.f56401c;
            if (h2Var != null && h2Var.getStream() == l1Var.f56433c[this.f56400b]) {
                return this.f56401c;
            }
        }
        return null;
    }

    private boolean p(l1 l1Var, @Nullable h2 h2Var) {
        if (h2Var == null) {
            return true;
        }
        sn.s sVar = l1Var.f56433c[this.f56400b];
        if (h2Var.getStream() == null) {
            return true;
        }
        if (h2Var.getStream() == sVar && (sVar == null || h2Var.hasReadStreamToEnd() || q(h2Var, l1Var))) {
            return true;
        }
        l1 k10 = l1Var.k();
        if (k10 != null && k10.f56433c[this.f56400b] == h2Var.getStream()) {
            return true;
        }
        return false;
    }

    private boolean q(h2 h2Var, l1 l1Var) {
        l1 k10 = l1Var.k();
        if (l1Var.f56438h.f56458g && k10 != null && k10.f56436f && ((h2Var instanceof un.i) || (h2Var instanceof qn.c) || h2Var.e() >= k10.n())) {
            return true;
        }
        return false;
    }

    private boolean v() {
        int i10 = this.f56402d;
        if (i10 != 2 && i10 != 4) {
            return false;
        }
        return true;
    }

    private static boolean y(h2 h2Var) {
        if (h2Var.getState() != 0) {
            return true;
        }
        return false;
    }

    public void B(sn.s sVar, k kVar, long j10, boolean z10) throws ExoPlaybackException {
        C(this.f56399a, sVar, kVar, j10, z10);
        h2 h2Var = this.f56401c;
        if (h2Var != null) {
            C(h2Var, sVar, kVar, j10, z10);
        }
    }

    public void D() throws ExoPlaybackException {
        boolean z10;
        int i10 = this.f56402d;
        int i11 = 0;
        if (i10 != 3 && i10 != 4) {
            if (i10 == 2) {
                this.f56402d = 0;
                return;
            }
            return;
        }
        if (i10 == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        X(z10);
        if (this.f56402d != 4) {
            i11 = 1;
        }
        this.f56402d = i11;
    }

    public void F(vn.w wVar, vn.w wVar2, long j10) {
        h2 h2Var;
        boolean z10;
        int i10;
        boolean c10 = wVar.c(this.f56400b);
        boolean c11 = wVar2.c(this.f56400b);
        if (this.f56401c != null && (i10 = this.f56402d) != 3 && (i10 != 0 || !y(this.f56399a))) {
            h2Var = (h2) cn.a.e(this.f56401c);
        } else {
            h2Var = this.f56399a;
        }
        if (c10 && !h2Var.isCurrentStreamFinal()) {
            if (m() == -2) {
                z10 = true;
            } else {
                z10 = false;
            }
            gn.g0[] g0VarArr = wVar.f69173b;
            int i11 = this.f56400b;
            gn.g0 g0Var = g0VarArr[i11];
            gn.g0 g0Var2 = wVar2.f69173b[i11];
            if (!c11 || !Objects.equals(g0Var2, g0Var) || z10 || u()) {
                P(h2Var, j10);
            }
        }
    }

    public void G(l1 l1Var) throws IOException {
        ((h2) cn.a.e(l(l1Var))).maybeThrowStreamError();
    }

    public void H() {
        this.f56399a.release();
        this.f56403e = false;
        h2 h2Var = this.f56401c;
        if (h2Var != null) {
            h2Var.release();
            this.f56404f = false;
        }
    }

    public void I(long j10, long j11) throws ExoPlaybackException {
        if (y(this.f56399a)) {
            this.f56399a.render(j10, j11);
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var)) {
            this.f56401c.render(j10, j11);
        }
    }

    public int J(l1 l1Var, vn.w wVar, k kVar) throws ExoPlaybackException {
        int K = K(this.f56399a, l1Var, wVar, kVar);
        int K2 = K(this.f56401c, l1Var, wVar, kVar);
        if (K == 1) {
            return K2;
        }
        return K;
    }

    public void L() {
        if (!y(this.f56399a)) {
            E(true);
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && !y(h2Var)) {
            E(false);
        }
    }

    public void M(l1 l1Var, long j10) throws ExoPlaybackException {
        h2 l10 = l(l1Var);
        if (l10 != null) {
            l10.resetPosition(j10);
        }
    }

    public void N(long j10) {
        int i10;
        if (y(this.f56399a) && (i10 = this.f56402d) != 4 && i10 != 2) {
            P(this.f56399a, j10);
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var) && this.f56402d != 3) {
            P(this.f56401c, j10);
        }
    }

    public void O(l1 l1Var, long j10) {
        P((h2) cn.a.e(l(l1Var)), j10);
    }

    public void Q(float f10, float f11) throws ExoPlaybackException {
        this.f56399a.l(f10, f11);
        h2 h2Var = this.f56401c;
        if (h2Var != null) {
            h2Var.l(f10, f11);
        }
    }

    public void R(zm.a0 a0Var) {
        this.f56399a.r(a0Var);
        h2 h2Var = this.f56401c;
        if (h2Var != null) {
            h2Var.r(a0Var);
        }
    }

    public void S(@Nullable Object obj) throws ExoPlaybackException {
        if (m() != 2) {
            return;
        }
        int i10 = this.f56402d;
        if (i10 != 4 && i10 != 1) {
            this.f56399a.handleMessage(1, obj);
        } else {
            ((h2) cn.a.e(this.f56401c)).handleMessage(1, obj);
        }
    }

    public void T(float f10) throws ExoPlaybackException {
        if (m() != 1) {
            return;
        }
        this.f56399a.handleMessage(2, Float.valueOf(f10));
        h2 h2Var = this.f56401c;
        if (h2Var != null) {
            h2Var.handleMessage(2, Float.valueOf(f10));
        }
    }

    public void U() throws ExoPlaybackException {
        if (this.f56399a.getState() == 1 && this.f56402d != 4) {
            this.f56399a.start();
            return;
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && h2Var.getState() == 1 && this.f56402d != 3) {
            this.f56401c.start();
        }
    }

    public void V() {
        int i10;
        cn.a.g(!u());
        if (y(this.f56399a)) {
            i10 = 3;
        } else {
            h2 h2Var = this.f56401c;
            if (h2Var != null && y(h2Var)) {
                i10 = 4;
            } else {
                i10 = 2;
            }
        }
        this.f56402d = i10;
    }

    public void W() {
        if (y(this.f56399a)) {
            g(this.f56399a);
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var)) {
            g(this.f56401c);
        }
    }

    public boolean a(l1 l1Var) {
        h2 l10 = l(l1Var);
        if (l10 != null && !l10.hasReadStreamToEnd() && !l10.isReady() && !l10.isEnded()) {
            return false;
        }
        return true;
    }

    public void b(k kVar) throws ExoPlaybackException {
        boolean z10;
        d(this.f56399a, kVar);
        h2 h2Var = this.f56401c;
        if (h2Var != null) {
            if (y(h2Var) && this.f56402d != 3) {
                z10 = true;
            } else {
                z10 = false;
            }
            d(this.f56401c, kVar);
            E(false);
            if (z10) {
                X(true);
            }
        }
        this.f56402d = 0;
    }

    public void c(k kVar) {
        boolean z10;
        h2 h2Var;
        if (!u()) {
            return;
        }
        int i10 = this.f56402d;
        int i11 = 1;
        if (i10 != 4 && i10 != 2) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (i10 != 4) {
            i11 = 0;
        }
        if (z10) {
            h2Var = this.f56399a;
        } else {
            h2Var = (h2) cn.a.e(this.f56401c);
        }
        d(h2Var, kVar);
        E(z10);
        this.f56402d = i11;
    }

    public void e(gn.g0 g0Var, vn.q qVar, sn.s sVar, long j10, boolean z10, boolean z11, long j11, long j12, r.b bVar, k kVar) throws ExoPlaybackException {
        io.bidmachine.media3.common.a[] i10 = i(qVar);
        int i11 = this.f56402d;
        if (i11 != 0 && i11 != 2 && i11 != 4) {
            this.f56404f = true;
            ((h2) cn.a.e(this.f56401c)).w(g0Var, i10, sVar, j10, z10, z11, j11, j12, bVar);
            kVar.c(this.f56401c);
            return;
        }
        this.f56403e = true;
        this.f56399a.w(g0Var, i10, sVar, j10, z10, z11, j11, j12, bVar);
        kVar.c(this.f56399a);
    }

    public void f() {
        if (y(this.f56399a)) {
            this.f56399a.h();
            return;
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var)) {
            this.f56401c.h();
        }
    }

    public int h() {
        int i10;
        boolean y10 = y(this.f56399a);
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var)) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        return (y10 ? 1 : 0) + i10;
    }

    public long j(long j10, long j11) {
        long j12;
        if (y(this.f56399a)) {
            j12 = this.f56399a.z(j10, j11);
        } else {
            j12 = Long.MAX_VALUE;
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var)) {
            return Math.min(j12, this.f56401c.z(j10, j11));
        }
        return j12;
    }

    public long k(@Nullable l1 l1Var) {
        h2 l10 = l(l1Var);
        Objects.requireNonNull(l10);
        return l10.e();
    }

    public int m() {
        return this.f56399a.getTrackType();
    }

    public void n(int i10, @Nullable Object obj, l1 l1Var) throws ExoPlaybackException {
        ((h2) cn.a.e(l(l1Var))).handleMessage(i10, obj);
    }

    public boolean o(l1 l1Var) {
        if (p(l1Var, this.f56399a) && p(l1Var, this.f56401c)) {
            return true;
        }
        return false;
    }

    public boolean r(l1 l1Var) {
        return ((h2) cn.a.e(l(l1Var))).hasReadStreamToEnd();
    }

    public boolean s() {
        if (this.f56401c != null) {
            return true;
        }
        return false;
    }

    public boolean t() {
        boolean z10;
        if (y(this.f56399a)) {
            z10 = this.f56399a.isEnded();
        } else {
            z10 = true;
        }
        h2 h2Var = this.f56401c;
        if (h2Var != null && y(h2Var)) {
            return z10 & this.f56401c.isEnded();
        }
        return z10;
    }

    public boolean u() {
        if (!v() && !A()) {
            return false;
        }
        return true;
    }

    public boolean w(@Nullable l1 l1Var) {
        if (l(l1Var) != null) {
            return true;
        }
        return false;
    }

    public boolean x() {
        int i10 = this.f56402d;
        if (i10 != 0 && i10 != 2 && i10 != 4) {
            return y((h2) cn.a.e(this.f56401c));
        }
        return y(this.f56399a);
    }

    public boolean z(int i10) {
        boolean z10;
        boolean z11;
        if (v() && i10 == this.f56400b) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (A() && i10 != this.f56400b) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z10 && !z11) {
            return false;
        }
        return true;
    }
}
