package fk;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: PageUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    private final int f51781a;

    /* renamed from: b  reason: collision with root package name */
    private int f51782b = 1;

    /* renamed from: c  reason: collision with root package name */
    private int f51783c = -1;

    /* renamed from: d  reason: collision with root package name */
    private boolean f51784d;

    public x(int i10) {
        this.f51781a = i10;
    }

    public final boolean a(int i10, boolean z10) {
        if ((i10 == 2 && this.f51784d) || !e(i10, this.f51783c, this.f51784d, z10)) {
            return false;
        }
        if (i10 == 0 || i10 == 1) {
            this.f51784d = false;
        }
        this.f51783c = i10;
        return true;
    }

    public final int b() {
        return this.f51782b;
    }

    public final int c() {
        return this.f51781a;
    }

    public final boolean d() {
        return this.f51784d;
    }

    public final boolean e(int i10, int i11, boolean z10, boolean z11) {
        if (i10 == -1) {
            return false;
        }
        if (i10 == 2 && z10) {
            return false;
        }
        if (i11 == 2 && i10 == 2) {
            return false;
        }
        if ((i11 != 0 && i11 != 1) || (i10 != 0 && i10 != 1)) {
            if ((i11 == 0 || i11 == 1) && i10 == 2) {
                return false;
            }
            return true;
        }
        return z11;
    }

    public final void f() {
        this.f51783c = -1;
    }

    public final <T> void g(@Nullable List<? extends T> list, int i10) {
        int i11;
        boolean z10 = false;
        if (list != null) {
            i11 = list.size();
        } else {
            i11 = 0;
        }
        if (i11 < this.f51781a) {
            z10 = true;
        }
        this.f51784d = z10;
        if (!z10) {
            this.f51782b = i10;
        }
    }

    public final void h(boolean z10, int i10) {
        this.f51784d = z10;
        if (!z10) {
            this.f51782b = i10;
        }
    }
}
