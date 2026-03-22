package dt;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.w;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProgressionIterators.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a extends w {

    /* renamed from: a  reason: collision with root package name */
    private final int f50596a;

    /* renamed from: b  reason: collision with root package name */
    private final int f50597b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50598c;

    /* renamed from: d  reason: collision with root package name */
    private int f50599d;

    public a(char c10, char c11, int i10) {
        this.f50596a = i10;
        this.f50597b = c11;
        boolean z10 = false;
        if (i10 <= 0 ? Intrinsics.compare((int) c10, (int) c11) >= 0 : Intrinsics.compare((int) c10, (int) c11) <= 0) {
            z10 = true;
        }
        this.f50598c = z10;
        this.f50599d = z10 ? c10 : c11;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f50598c;
    }

    @Override // kotlin.collections.w
    public char nextChar() {
        int i10 = this.f50599d;
        if (i10 == this.f50597b) {
            if (this.f50598c) {
                this.f50598c = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f50599d = this.f50596a + i10;
        }
        return (char) i10;
    }
}
