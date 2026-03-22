package zl;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.yy.mobile.rollingtextview.strategy.Direction;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextColumn.kt */
@Metadata
/* loaded from: classes7.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final h f71705a;

    /* renamed from: b  reason: collision with root package name */
    private final int f71706b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Paint f71707c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private List<Character> f71708d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private Direction f71709e;

    /* renamed from: f  reason: collision with root package name */
    private float f71710f;

    /* renamed from: g  reason: collision with root package name */
    private float f71711g;

    /* renamed from: h  reason: collision with root package name */
    private char f71712h;

    /* renamed from: i  reason: collision with root package name */
    private double f71713i;

    /* renamed from: j  reason: collision with root package name */
    private double f71714j;

    /* renamed from: k  reason: collision with root package name */
    private int f71715k;

    public g(@NotNull h manager, int i10, @NotNull Paint textPaint, @NotNull List<Character> changeCharList, @NotNull Direction direction) {
        char i11;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(changeCharList, "changeCharList");
        Intrinsics.checkNotNullParameter(direction, "direction");
        this.f71705a = manager;
        this.f71706b = i10;
        this.f71707c = textPaint;
        this.f71708d = changeCharList;
        this.f71709e = direction;
        if (changeCharList.size() < 2) {
            i11 = j();
        } else {
            i11 = i();
        }
        this.f71712h = i11;
        k();
    }

    private static final void b(g gVar, Canvas canvas, int i10, float f10, float f11) {
        if (i10 >= 0 && i10 < gVar.f71708d.size() && gVar.f71708d.get(i10).charValue() != 0) {
            canvas.drawText(c(gVar, i10), 0, 1, f10, f11, gVar.f71707c);
        }
    }

    private static final char[] c(g gVar, int i10) {
        return new char[]{gVar.f71708d.get(i10).charValue()};
    }

    static /* synthetic */ void d(g gVar, Canvas canvas, int i10, float f10, float f11, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            f10 = 0.0f;
        }
        if ((i11 & 16) != 0) {
            f11 = 0.0f;
        }
        b(gVar, canvas, i10, f10, f11);
    }

    public final void a(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.f71709e.getOrientation() == 0) {
            d(this, canvas, this.f71715k + 1, ((float) this.f71714j) - (this.f71710f * this.f71709e.getValue()), 0.0f, 16, null);
            d(this, canvas, this.f71715k, (float) this.f71714j, 0.0f, 16, null);
            d(this, canvas, this.f71715k - 1, ((float) this.f71714j) + (this.f71710f * this.f71709e.getValue()), 0.0f, 16, null);
            return;
        }
        d(this, canvas, this.f71715k + 1, 0.0f, ((float) this.f71714j) - (this.f71705a.g() * this.f71709e.getValue()), 8, null);
        d(this, canvas, this.f71715k, 0.0f, (float) this.f71714j, 8, null);
        d(this, canvas, this.f71715k - 1, 0.0f, ((float) this.f71714j) + (this.f71705a.g() * this.f71709e.getValue()), 8, null);
    }

    @NotNull
    public final List<Character> e() {
        return this.f71708d;
    }

    public final char f() {
        return this.f71712h;
    }

    public final float g() {
        return this.f71710f;
    }

    public final int h() {
        return this.f71715k;
    }

    public final char i() {
        if (this.f71708d.size() < 2) {
            return (char) 0;
        }
        return ((Character) CollectionsKt.r0(this.f71708d)).charValue();
    }

    public final char j() {
        if (this.f71708d.isEmpty()) {
            return (char) 0;
        }
        return ((Character) CollectionsKt.C0(this.f71708d)).charValue();
    }

    public final void k() {
        float a10 = this.f71705a.a(this.f71712h, this.f71707c);
        this.f71710f = a10;
        this.f71711g = a10;
    }

    public final void l() {
        this.f71712h = j();
        this.f71714j = 0.0d;
        this.f71713i = 0.0d;
    }

    @NotNull
    public final c m(int i10, double d10, double d11) {
        double g10;
        int value;
        float a10;
        if (this.f71715k != i10) {
            this.f71711g = this.f71710f;
        }
        this.f71715k = i10;
        this.f71712h = this.f71708d.get(i10).charValue();
        double d12 = this.f71713i * (1.0d - d11);
        if (this.f71709e.getOrientation() == 0) {
            g10 = this.f71710f * d10;
            value = this.f71709e.getValue();
        } else {
            g10 = this.f71705a.g() * d10;
            value = this.f71709e.getValue();
        }
        this.f71714j = (g10 * value) + d12;
        if (d10 <= 0.5d) {
            a10 = this.f71705a.a(this.f71712h, this.f71707c);
        } else {
            List<Character> list = this.f71708d;
            a10 = this.f71705a.a(list.get(Math.min(i10 + 1, CollectionsKt.p(list))).charValue(), this.f71707c);
        }
        if (d10 > 0.0d) {
            float f10 = this.f71711g;
            a10 = (float) (((a10 - f10) * d10) + f10);
        }
        float f11 = a10;
        this.f71710f = f11;
        return new c(this.f71715k, d10, d11, this.f71712h, f11);
    }
}
