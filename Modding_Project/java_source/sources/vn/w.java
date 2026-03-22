package vn;

import androidx.annotation.Nullable;
import gn.g0;
import java.util.Objects;
import zm.e0;
/* compiled from: TrackSelectorResult.java */
/* loaded from: classes8.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final int f69172a;

    /* renamed from: b  reason: collision with root package name */
    public final g0[] f69173b;

    /* renamed from: c  reason: collision with root package name */
    public final q[] f69174c;

    /* renamed from: d  reason: collision with root package name */
    public final e0 f69175d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Object f69176e;

    public w(g0[] g0VarArr, q[] qVarArr, e0 e0Var, @Nullable Object obj) {
        boolean z10;
        if (g0VarArr.length == qVarArr.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f69173b = g0VarArr;
        this.f69174c = (q[]) qVarArr.clone();
        this.f69175d = e0Var;
        this.f69176e = obj;
        this.f69172a = g0VarArr.length;
    }

    public boolean a(@Nullable w wVar) {
        if (wVar == null || wVar.f69174c.length != this.f69174c.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.f69174c.length; i10++) {
            if (!b(wVar, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(@Nullable w wVar, int i10) {
        if (wVar == null || !Objects.equals(this.f69173b[i10], wVar.f69173b[i10]) || !Objects.equals(this.f69174c[i10], wVar.f69174c[i10])) {
            return false;
        }
        return true;
    }

    public boolean c(int i10) {
        if (this.f69173b[i10] != null) {
            return true;
        }
        return false;
    }
}
