package q0;

import android.graphics.drawable.Drawable;
import coil.drawable.CrossfadeDrawable;
import coil.size.Scale;
import kotlin.Metadata;
import m0.g;
import m0.m;
import org.jetbrains.annotations.NotNull;
/* compiled from: CrossfadeTransition.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final d f65012a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final g f65013b;

    /* renamed from: c  reason: collision with root package name */
    private final int f65014c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f65015d;

    @Override // q0.c
    public void a() {
        boolean z10;
        Drawable a10 = this.f65012a.a();
        Drawable a11 = this.f65013b.a();
        Scale J = this.f65013b.b().J();
        int i10 = this.f65014c;
        g gVar = this.f65013b;
        if ((gVar instanceof m) && ((m) gVar).d()) {
            z10 = false;
        } else {
            z10 = true;
        }
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(a10, a11, J, i10, z10, this.f65015d);
        g gVar2 = this.f65013b;
        if (gVar2 instanceof m) {
            this.f65012a.b(crossfadeDrawable);
        } else if (gVar2 instanceof m0.d) {
            this.f65012a.d(crossfadeDrawable);
        }
    }

    public final int b() {
        return this.f65014c;
    }

    public final boolean c() {
        return this.f65015d;
    }
}
