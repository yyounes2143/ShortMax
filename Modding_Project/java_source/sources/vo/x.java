package vo;

import androidx.annotation.Nullable;
import ao.n0;
import com.google.common.primitives.ImmutableIntArray;
/* compiled from: UnsupportedBrandsSniffFailure.java */
/* loaded from: classes8.dex */
public final class x implements n0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f69366a;

    /* renamed from: b  reason: collision with root package name */
    public final ImmutableIntArray f69367b;

    public x(int i10, @Nullable int[] iArr) {
        ImmutableIntArray h10;
        this.f69366a = i10;
        if (iArr != null) {
            h10 = ImmutableIntArray.b(iArr);
        } else {
            h10 = ImmutableIntArray.h();
        }
        this.f69367b = h10;
    }
}
