package y4;

import com.facebook.soloader.w;
/* compiled from: CompositeRecoveryStrategy.java */
/* loaded from: classes2.dex */
public class e implements h {

    /* renamed from: a  reason: collision with root package name */
    private final h[] f70646a;

    /* renamed from: b  reason: collision with root package name */
    private int f70647b = 0;

    public e(h... hVarArr) {
        this.f70646a = hVarArr;
    }

    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        int i10;
        h[] hVarArr;
        do {
            i10 = this.f70647b;
            hVarArr = this.f70646a;
            if (i10 < hVarArr.length) {
                this.f70647b = i10 + 1;
            } else {
                return false;
            }
        } while (!hVarArr[i10].a(unsatisfiedLinkError, wVarArr));
        return true;
    }
}
