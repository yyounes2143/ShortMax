package z6;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.v1;
import o5.p0;
/* compiled from: TrackSelectorResult.java */
/* loaded from: classes4.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f71424a;

    /* renamed from: b  reason: collision with root package name */
    public final p0[] f71425b;

    /* renamed from: c  reason: collision with root package name */
    public final y[] f71426c;

    /* renamed from: d  reason: collision with root package name */
    public final v1 f71427d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Object f71428e;

    public i0(p0[] p0VarArr, y[] yVarArr, v1 v1Var, @Nullable Object obj) {
        this.f71425b = p0VarArr;
        this.f71426c = (y[]) yVarArr.clone();
        this.f71427d = v1Var;
        this.f71428e = obj;
        this.f71424a = p0VarArr.length;
    }

    public boolean a(@Nullable i0 i0Var) {
        if (i0Var == null || i0Var.f71426c.length != this.f71426c.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.f71426c.length; i10++) {
            if (!b(i0Var, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(@Nullable i0 i0Var, int i10) {
        if (i0Var == null || !s0.c(this.f71425b[i10], i0Var.f71425b[i10]) || !s0.c(this.f71426c[i10], i0Var.f71426c[i10])) {
            return false;
        }
        return true;
    }

    public boolean c(int i10) {
        if (this.f71425b[i10] != null) {
            return true;
        }
        return false;
    }
}
