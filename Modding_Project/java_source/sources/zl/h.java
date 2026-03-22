package zl;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class h {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f71716i = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Paint f71717a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final zl.a f71718b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Map<Character, Float> f71719c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<g> f71720d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private List<? extends List<Character>> f71721e;

    /* renamed from: f  reason: collision with root package name */
    private int f71722f;

    /* renamed from: g  reason: collision with root package name */
    private float f71723g;

    /* renamed from: h  reason: collision with root package name */
    private float f71724h;

    /* compiled from: TextManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public h(@NotNull Paint textPaint, @NotNull zl.a charOrderManager) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(charOrderManager, "charOrderManager");
        this.f71717a = textPaint;
        this.f71718b = charOrderManager;
        this.f71719c = new LinkedHashMap(36);
        this.f71720d = new ArrayList();
        List<? extends List<Character>> emptyList = Collections.emptyList();
        Intrinsics.checkNotNullExpressionValue(emptyList, "emptyList()");
        this.f71721e = emptyList;
        l();
    }

    public final float a(char c10, @NotNull Paint textPaint) {
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        if (c10 == 0) {
            return 0.0f;
        }
        Float f10 = this.f71719c.get(Character.valueOf(c10));
        if (f10 == null) {
            float measureText = textPaint.measureText(String.valueOf(c10));
            this.f71719c.put(Character.valueOf(c10), Float.valueOf(measureText));
            return measureText;
        }
        return f10.floatValue();
    }

    public final void b(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        for (g gVar : this.f71720d) {
            gVar.a(canvas);
            canvas.translate(gVar.g() + e(), 0.0f);
        }
    }

    @NotNull
    public final char[] c() {
        int size = this.f71720d.size();
        char[] cArr = new char[size];
        for (int i10 = 0; i10 < size; i10++) {
            cArr[i10] = this.f71720d.get(i10).f();
        }
        return cArr;
    }

    public final float d() {
        int max = this.f71722f * Math.max(0, this.f71720d.size() - 1);
        List<g> list = this.f71720d;
        ArrayList<Number> arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (g gVar : list) {
            arrayList.add(Float.valueOf(gVar.g()));
        }
        float f10 = 0.0f;
        for (Number number : arrayList) {
            f10 += number.floatValue();
        }
        return f10 + max;
    }

    public final int e() {
        return this.f71722f;
    }

    public final float f() {
        return this.f71724h;
    }

    public final float g() {
        return this.f71723g;
    }

    public final void h() {
        for (g gVar : this.f71720d) {
            gVar.l();
        }
        this.f71718b.b();
    }

    public final void i(int i10) {
        this.f71722f = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0067 A[LOOP:1: B:8:0x0061->B:10:0x0067, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(@org.jetbrains.annotations.NotNull java.lang.CharSequence r12) {
        /*
            r11 = this;
            java.lang.String r0 = "targetText"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            char[] r0 = r11.c()
            java.lang.String r1 = new java.lang.String
            r1.<init>(r0)
            int r0 = r1.length()
            int r2 = r12.length()
            int r0 = java.lang.Math.max(r0, r2)
            zl.a r2 = r11.f71718b
            r2.c(r1, r12)
            java.util.List<zl.g> r2 = r11.f71720d
            r2.clear()
            if (r0 <= 0) goto L4e
            r2 = 0
        L27:
            r5 = r2
            int r2 = r5 + 1
            zl.a r3 = r11.f71718b
            kotlin.Pair r3 = r3.d(r1, r12, r5)
            java.lang.Object r4 = r3.b()
            r7 = r4
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r3 = r3.d()
            r8 = r3
            com.yy.mobile.rollingtextview.strategy.Direction r8 = (com.yy.mobile.rollingtextview.strategy.Direction) r8
            java.util.List<zl.g> r9 = r11.f71720d
            zl.g r10 = new zl.g
            android.graphics.Paint r6 = r11.f71717a
            r3 = r10
            r4 = r11
            r3.<init>(r4, r5, r6, r7, r8)
            r9.add(r10)
            if (r2 < r0) goto L27
        L4e:
            java.util.List<zl.g> r12 = r11.f71720d
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 10
            int r1 = kotlin.collections.CollectionsKt.z(r12, r1)
            r0.<init>(r1)
            java.util.Iterator r12 = r12.iterator()
        L61:
            boolean r1 = r12.hasNext()
            if (r1 == 0) goto L75
            java.lang.Object r1 = r12.next()
            zl.g r1 = (zl.g) r1
            java.util.List r1 = r1.e()
            r0.add(r1)
            goto L61
        L75:
            r11.f71721e = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: zl.h.j(java.lang.CharSequence):void");
    }

    public final void k(float f10) {
        c cVar = new c(0, 0.0d, f10, (char) 0, 0.0f, 24, null);
        List<g> list = this.f71720d;
        if (!list.isEmpty()) {
            ListIterator<g> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                int previousIndex = listIterator.previousIndex();
                g previous = listIterator.previous();
                b f11 = this.f71718b.f(cVar, previousIndex, this.f71721e, previous.h());
                cVar = previous.m(f11.a(), f11.b(), f11.c());
            }
        }
    }

    public final void l() {
        this.f71719c.clear();
        Paint.FontMetrics fontMetrics = this.f71717a.getFontMetrics();
        float f10 = fontMetrics.bottom;
        float f11 = fontMetrics.top;
        this.f71723g = f10 - f11;
        this.f71724h = -f11;
        for (g gVar : this.f71720d) {
            gVar.k();
        }
    }
}
