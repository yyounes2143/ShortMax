package dt;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.m0;
/* compiled from: ProgressionIterators.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d extends m0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f50600a;

    /* renamed from: b  reason: collision with root package name */
    private final int f50601b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50602c;

    /* renamed from: d  reason: collision with root package name */
    private int f50603d;

    public d(int i10, int i11, int i12) {
        this.f50600a = i12;
        this.f50601b = i11;
        boolean z10 = false;
        if (i12 <= 0 ? i10 >= i11 : i10 <= i11) {
            z10 = true;
        }
        this.f50602c = z10;
        this.f50603d = z10 ? i10 : i11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f50602c;
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        int i10 = this.f50603d;
        if (i10 == this.f50601b) {
            if (this.f50602c) {
                this.f50602c = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f50603d = this.f50600a + i10;
        }
        return i10;
    }
}
