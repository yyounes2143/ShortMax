package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.q0;
import d1.p;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import u0.o;
import u0.t;
import y0.k;
import y0.l;
import y0.m;
/* compiled from: TextLayer.java */
/* loaded from: classes2.dex */
public class g extends com.airbnb.lottie.model.layer.a {
    private final StringBuilder E;
    private final StringBuilder F;
    private final StringBuilder G;
    private final StringBuilder H;
    private final RectF I;
    private final Matrix J;
    private final Paint K;
    private final Paint L;
    private final Map<x0.c, List<t0.d>> M;
    private final LongSparseArray<String> N;
    private final List<String> O;
    private final List<d> P;
    private final o Q;
    private final LottieDrawable R;
    private final i S;
    private TextRangeUnits T;
    @Nullable
    private u0.a<Integer, Integer> U;
    @Nullable
    private u0.a<Integer, Integer> V;
    @Nullable
    private u0.a<Integer, Integer> W;
    @Nullable
    private u0.a<Integer, Integer> X;
    @Nullable
    private u0.a<Float, Float> Y;
    @Nullable
    private u0.a<Float, Float> Z;
    @Nullable

    /* renamed from: a0  reason: collision with root package name */
    private u0.a<Float, Float> f4655a0;
    @Nullable

    /* renamed from: b0  reason: collision with root package name */
    private u0.a<Float, Float> f4656b0;
    @Nullable

    /* renamed from: c0  reason: collision with root package name */
    private u0.a<Integer, Integer> f4657c0;
    @Nullable

    /* renamed from: d0  reason: collision with root package name */
    private u0.a<Float, Float> f4658d0;
    @Nullable

    /* renamed from: e0  reason: collision with root package name */
    private u0.a<Typeface, Typeface> f4659e0;
    @Nullable

    /* renamed from: f0  reason: collision with root package name */
    private u0.a<Integer, Integer> f4660f0;
    @Nullable

    /* renamed from: g0  reason: collision with root package name */
    private u0.a<Integer, Integer> f4661g0;
    @Nullable

    /* renamed from: h0  reason: collision with root package name */
    private u0.a<Integer, Integer> f4662h0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextLayer.java */
    /* loaded from: classes2.dex */
    public class a extends Paint {
        a(int i10) {
            super(i10);
            setStyle(Paint.Style.FILL);
        }
    }

    /* compiled from: TextLayer.java */
    /* loaded from: classes2.dex */
    class b extends Paint {
        b(int i10) {
            super(i10);
            setStyle(Paint.Style.STROKE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextLayer.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4665a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f4665a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4665a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4665a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        l lVar;
        l lVar2;
        y0.d dVar;
        l lVar3;
        y0.d dVar2;
        l lVar4;
        y0.d dVar3;
        m mVar;
        y0.d dVar4;
        m mVar2;
        y0.b bVar;
        m mVar3;
        y0.b bVar2;
        m mVar4;
        y0.a aVar;
        m mVar5;
        y0.a aVar2;
        this.E = new StringBuilder(2);
        this.F = new StringBuilder(0);
        this.G = new StringBuilder(0);
        this.H = new StringBuilder(0);
        this.I = new RectF();
        this.J = new Matrix();
        this.K = new a(1);
        this.L = new b(1);
        this.M = new HashMap();
        this.N = new LongSparseArray<>();
        this.O = new ArrayList();
        this.P = new ArrayList();
        this.T = TextRangeUnits.INDEX;
        this.R = lottieDrawable;
        this.S = layer.c();
        o a10 = layer.t().a();
        this.Q = a10;
        a10.a(this);
        j(a10);
        k u10 = layer.u();
        if (u10 != null && (mVar5 = u10.f70535a) != null && (aVar2 = mVar5.f70541a) != null) {
            u0.a<Integer, Integer> a11 = aVar2.a();
            this.U = a11;
            a11.a(this);
            j(this.U);
        }
        if (u10 != null && (mVar4 = u10.f70535a) != null && (aVar = mVar4.f70542b) != null) {
            u0.a<Integer, Integer> a12 = aVar.a();
            this.W = a12;
            a12.a(this);
            j(this.W);
        }
        if (u10 != null && (mVar3 = u10.f70535a) != null && (bVar2 = mVar3.f70543c) != null) {
            u0.d a13 = bVar2.a();
            this.Y = a13;
            a13.a(this);
            j(this.Y);
        }
        if (u10 != null && (mVar2 = u10.f70535a) != null && (bVar = mVar2.f70544d) != null) {
            u0.d a14 = bVar.a();
            this.f4655a0 = a14;
            a14.a(this);
            j(this.f4655a0);
        }
        if (u10 != null && (mVar = u10.f70535a) != null && (dVar4 = mVar.f70545e) != null) {
            u0.a<Integer, Integer> a15 = dVar4.a();
            this.f4657c0 = a15;
            a15.a(this);
            j(this.f4657c0);
        }
        if (u10 != null && (lVar4 = u10.f70536b) != null && (dVar3 = lVar4.f70537a) != null) {
            u0.a<Integer, Integer> a16 = dVar3.a();
            this.f4660f0 = a16;
            a16.a(this);
            j(this.f4660f0);
        }
        if (u10 != null && (lVar3 = u10.f70536b) != null && (dVar2 = lVar3.f70538b) != null) {
            u0.a<Integer, Integer> a17 = dVar2.a();
            this.f4661g0 = a17;
            a17.a(this);
            j(this.f4661g0);
        }
        if (u10 != null && (lVar2 = u10.f70536b) != null && (dVar = lVar2.f70539c) != null) {
            u0.a<Integer, Integer> a18 = dVar.a();
            this.f4662h0 = a18;
            a18.a(this);
            j(this.f4662h0);
        }
        if (u10 != null && (lVar = u10.f70536b) != null) {
            this.T = lVar.f70540d;
        }
    }

    private String Q(String str, int i10) {
        int codePointAt = str.codePointAt(i10);
        int charCount = Character.charCount(codePointAt) + i10;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (!g0(codePointAt2)) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j10 = codePointAt;
        if (this.N.containsKey(j10)) {
            return this.N.get(j10);
        }
        this.E.setLength(0);
        while (i10 < charCount) {
            int codePointAt3 = str.codePointAt(i10);
            this.E.appendCodePoint(codePointAt3);
            i10 += Character.charCount(codePointAt3);
        }
        String sb2 = this.E.toString();
        this.N.put(j10, sb2);
        return sb2;
    }

    private void R(DocumentData documentData, int i10, int i11) {
        int intValue;
        u0.a<Integer, Integer> aVar = this.V;
        if (aVar != null) {
            this.K.setColor(aVar.h().intValue());
        } else if (this.U != null && e0(i11)) {
            this.K.setColor(this.U.h().intValue());
        } else {
            this.K.setColor(documentData.f4545h);
        }
        u0.a<Integer, Integer> aVar2 = this.X;
        if (aVar2 != null) {
            this.L.setColor(aVar2.h().intValue());
        } else if (this.W != null && e0(i11)) {
            this.L.setColor(this.W.h().intValue());
        } else {
            this.L.setColor(documentData.f4546i);
        }
        int i12 = 100;
        if (this.f4649x.k() == null) {
            intValue = 100;
        } else {
            intValue = this.f4649x.k().h().intValue();
        }
        if (this.f4657c0 != null && e0(i11)) {
            i12 = this.f4657c0.h().intValue();
        }
        int round = Math.round(((((intValue * 255.0f) / 100.0f) * (i12 / 100.0f)) * i10) / 255.0f);
        this.K.setAlpha(round);
        this.L.setAlpha(round);
        u0.a<Float, Float> aVar3 = this.Z;
        if (aVar3 != null) {
            this.L.setStrokeWidth(aVar3.h().floatValue());
        } else if (this.Y != null && e0(i11)) {
            this.L.setStrokeWidth(this.Y.h().floatValue());
        } else {
            this.L.setStrokeWidth(documentData.f4547j * p.e());
        }
    }

    private void S(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void T(x0.c cVar, float f10, DocumentData documentData, Canvas canvas, int i10, int i11) {
        R(documentData, i11, i10);
        List<t0.d> b02 = b0(cVar);
        for (int i12 = 0; i12 < b02.size(); i12++) {
            Path path = b02.get(i12).getPath();
            path.computeBounds(this.I, false);
            this.J.reset();
            this.J.preTranslate(0.0f, (-documentData.f4544g) * p.e());
            this.J.preScale(f10, f10);
            path.transform(this.J);
            if (documentData.f4548k) {
                W(path, this.K, canvas);
                W(path, this.L, canvas);
            } else {
                W(path, this.L, canvas);
                W(path, this.K, canvas);
            }
        }
    }

    private void U(String str, DocumentData documentData, Canvas canvas, int i10, int i11) {
        R(documentData, i11, i10);
        if (documentData.f4548k) {
            S(str, this.K, canvas);
            S(str, this.L, canvas);
            return;
        }
        S(str, this.L, canvas);
        S(str, this.K, canvas);
    }

    private void V(String str, DocumentData documentData, Canvas canvas, float f10, int i10, int i11) {
        int i12;
        this.O.clear();
        int i13 = 0;
        while (i13 < str.length()) {
            String Q = Q(str, i13);
            this.O.add(Q);
            i13 += Q.length();
        }
        for (int i14 = 0; i14 < this.O.size(); i14 = i12) {
            this.F.setLength(0);
            this.F.append(this.O.get(i14));
            i12 = i14 + 1;
            while (i12 < this.O.size()) {
                String str2 = this.O.get(i12);
                if (f0(str2)) {
                    this.F.insert(0, str2);
                    i12++;
                }
            }
            String sb2 = this.F.toString();
            U(sb2, documentData, canvas, i10 + i14, i11);
            canvas.translate(this.K.measureText(sb2) + f10, 0.0f);
        }
    }

    private void W(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void X(String str, DocumentData documentData, x0.b bVar, Canvas canvas, float f10, float f11, float f12, int i10) {
        for (int i11 = 0; i11 < str.length(); i11++) {
            x0.c cVar = this.S.c().get(x0.c.c(str.charAt(i11), bVar.a(), bVar.c()));
            if (cVar != null) {
                T(cVar, f11, documentData, canvas, i11, i10);
                canvas.translate((((float) cVar.b()) * f11 * p.e()) + f12, 0.0f);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Y(com.airbnb.lottie.model.DocumentData r21, x0.b r22, android.graphics.Canvas r23, int r24) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.g.Y(com.airbnb.lottie.model.DocumentData, x0.b, android.graphics.Canvas, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Z(com.airbnb.lottie.model.DocumentData r22, android.graphics.Matrix r23, x0.b r24, android.graphics.Canvas r25, int r26) {
        /*
            r21 = this;
            r9 = r21
            r10 = r22
            u0.a<java.lang.Float, java.lang.Float> r0 = r9.f4658d0
            if (r0 == 0) goto L13
            java.lang.Object r0 = r0.h()
            java.lang.Float r0 = (java.lang.Float) r0
            float r0 = r0.floatValue()
            goto L15
        L13:
            float r0 = r10.f4540c
        L15:
            r1 = 1120403456(0x42c80000, float:100.0)
            float r11 = r0 / r1
            float r12 = d1.p.g(r23)
            java.lang.String r0 = r10.f4538a
            java.util.List r13 = r9.c0(r0)
            int r14 = r13.size()
            int r0 = r10.f4542e
            float r0 = (float) r0
            r1 = 1092616192(0x41200000, float:10.0)
            float r0 = r0 / r1
            u0.a<java.lang.Float, java.lang.Float> r1 = r9.f4656b0
            if (r1 == 0) goto L3e
            java.lang.Object r1 = r1.h()
            java.lang.Float r1 = (java.lang.Float) r1
            float r1 = r1.floatValue()
        L3b:
            float r0 = r0 + r1
        L3c:
            r15 = r0
            goto L4d
        L3e:
            u0.a<java.lang.Float, java.lang.Float> r1 = r9.f4655a0
            if (r1 == 0) goto L3c
            java.lang.Object r1 = r1.h()
            java.lang.Float r1 = (java.lang.Float) r1
            float r1 = r1.floatValue()
            goto L3b
        L4d:
            r16 = 0
            r0 = -1
            r7 = r0
            r8 = r16
        L53:
            if (r8 >= r14) goto Lc6
            java.lang.Object r0 = r13.get(r8)
            r1 = r0
            java.lang.String r1 = (java.lang.String) r1
            android.graphics.PointF r0 = r10.f4550m
            if (r0 != 0) goto L63
            r0 = 0
        L61:
            r2 = r0
            goto L66
        L63:
            float r0 = r0.x
            goto L61
        L66:
            r6 = 1
            r0 = r21
            r3 = r24
            r4 = r11
            r5 = r15
            java.util.List r6 = r0.j0(r1, r2, r3, r4, r5, r6)
            r5 = r16
        L73:
            int r0 = r6.size()
            if (r5 >= r0) goto Lc1
            java.lang.Object r0 = r6.get(r5)
            com.airbnb.lottie.model.layer.g$d r0 = (com.airbnb.lottie.model.layer.g.d) r0
            int r7 = r7 + 1
            r25.save()
            float r1 = com.airbnb.lottie.model.layer.g.d.a(r0)
            r4 = r25
            boolean r1 = r9.h0(r4, r10, r7, r1)
            if (r1 == 0) goto Lad
            java.lang.String r1 = com.airbnb.lottie.model.layer.g.d.b(r0)
            r0 = r21
            r2 = r22
            r3 = r24
            r4 = r25
            r17 = r5
            r5 = r12
            r18 = r6
            r6 = r11
            r19 = r7
            r7 = r15
            r20 = r8
            r8 = r26
            r0.X(r1, r2, r3, r4, r5, r6, r7, r8)
            goto Lb5
        Lad:
            r17 = r5
            r18 = r6
            r19 = r7
            r20 = r8
        Lb5:
            r25.restore()
            int r5 = r17 + 1
            r6 = r18
            r7 = r19
            r8 = r20
            goto L73
        Lc1:
            r20 = r8
            int r8 = r20 + 1
            goto L53
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.g.Z(com.airbnb.lottie.model.DocumentData, android.graphics.Matrix, x0.b, android.graphics.Canvas, int):void");
    }

    private d a0(int i10) {
        for (int size = this.P.size(); size < i10; size++) {
            this.P.add(new d(null));
        }
        return this.P.get(i10 - 1);
    }

    private List<t0.d> b0(x0.c cVar) {
        if (this.M.containsKey(cVar)) {
            return this.M.get(cVar);
        }
        List<z0.k> a10 = cVar.a();
        int size = a10.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new t0.d(this.R, this, a10.get(i10), this.S));
        }
        this.M.put(cVar, arrayList);
        return arrayList;
    }

    private List<String> c0(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\u0003", "\r").replaceAll("\n", "\r").split("\r"));
    }

    @Nullable
    private Typeface d0(x0.b bVar) {
        Typeface h10;
        u0.a<Typeface, Typeface> aVar = this.f4659e0;
        if (aVar != null && (h10 = aVar.h()) != null) {
            return h10;
        }
        Typeface c02 = this.R.c0(bVar);
        if (c02 != null) {
            return c02;
        }
        return bVar.d();
    }

    private boolean e0(int i10) {
        int length = this.Q.h().f4538a.length();
        u0.a<Integer, Integer> aVar = this.f4660f0;
        if (aVar == null || this.f4661g0 == null) {
            return true;
        }
        int min = Math.min(aVar.h().intValue(), this.f4661g0.h().intValue());
        int max = Math.max(this.f4660f0.h().intValue(), this.f4661g0.h().intValue());
        u0.a<Integer, Integer> aVar2 = this.f4662h0;
        if (aVar2 != null) {
            int intValue = aVar2.h().intValue();
            min += intValue;
            max += intValue;
        }
        if (this.T == TextRangeUnits.INDEX) {
            if (i10 >= min && i10 < max) {
                return true;
            }
            return false;
        }
        float f10 = (i10 / length) * 100.0f;
        if (f10 >= min && f10 < max) {
            return true;
        }
        return false;
    }

    private boolean f0(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (Character.getDirectionality(str.codePointAt(i10)) == 2) {
                return true;
            }
        }
        return false;
    }

    private boolean g0(int i10) {
        if (Character.getType(i10) != 16 && Character.getType(i10) != 27 && Character.getType(i10) != 6 && Character.getType(i10) != 28 && Character.getType(i10) != 8 && Character.getType(i10) != 19) {
            return false;
        }
        return true;
    }

    private boolean h0(Canvas canvas, DocumentData documentData, int i10, float f10) {
        float f11;
        float f12;
        PointF pointF = documentData.f4549l;
        PointF pointF2 = documentData.f4550m;
        float e10 = p.e();
        float f13 = 0.0f;
        if (pointF == null) {
            f11 = 0.0f;
        } else {
            f11 = (documentData.f4543f * e10) + pointF.y;
        }
        float f14 = (i10 * documentData.f4543f * e10) + f11;
        if (this.R.I() && pointF2 != null && pointF != null && f14 >= pointF.y + pointF2.y + documentData.f4540c) {
            return false;
        }
        if (pointF == null) {
            f12 = 0.0f;
        } else {
            f12 = pointF.x;
        }
        if (pointF2 != null) {
            f13 = pointF2.x;
        }
        int i11 = c.f4665a[documentData.f4541d.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    canvas.translate((f12 + (f13 / 2.0f)) - (f10 / 2.0f), f14);
                }
            } else {
                canvas.translate((f12 + f13) - f10, f14);
            }
        } else {
            canvas.translate(f12, f14);
        }
        return true;
    }

    private String i0(String str) {
        Bidi bidi = new Bidi(str, -2);
        int runCount = bidi.getRunCount();
        byte[] bArr = new byte[runCount];
        Integer[] numArr = new Integer[runCount];
        for (int i10 = 0; i10 < runCount; i10++) {
            bArr[i10] = (byte) bidi.getRunLevel(i10);
            numArr[i10] = Integer.valueOf(i10);
        }
        Bidi.reorderVisually(bArr, 0, numArr, 0, runCount);
        this.G.setLength(0);
        for (int i11 = 0; i11 < runCount; i11++) {
            int intValue = numArr[i11].intValue();
            int runStart = bidi.getRunStart(intValue);
            int runLimit = bidi.getRunLimit(intValue);
            int runLevel = bidi.getRunLevel(intValue);
            String substring = str.substring(runStart, runLimit);
            if ((runLevel & 1) == 0) {
                this.G.append(substring);
            } else {
                this.H.setLength(0);
                int i12 = 0;
                while (i12 < substring.length()) {
                    String Q = Q(substring, i12);
                    this.H.insert(0, Q);
                    i12 += Q.length();
                }
                this.G.append((CharSequence) this.H);
            }
        }
        return this.G.toString();
    }

    private List<d> j0(String str, float f10, x0.b bVar, float f11, float f12, boolean z10) {
        float measureText;
        String substring;
        String trim;
        String substring2;
        String trim2;
        int i10 = 0;
        int i11 = 0;
        boolean z11 = false;
        int i12 = 0;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i13 = 0; i13 < str.length(); i13++) {
            char charAt = str.charAt(i13);
            if (z10) {
                x0.c cVar = this.S.c().get(x0.c.c(charAt, bVar.a(), bVar.c()));
                if (cVar != null) {
                    measureText = ((float) cVar.b()) * f11 * p.e();
                }
            } else {
                measureText = this.K.measureText(str.substring(i13, i13 + 1));
            }
            float f16 = measureText + f12;
            if (charAt == ' ') {
                z11 = true;
                f15 = f16;
            } else if (z11) {
                z11 = false;
                i12 = i13;
                f14 = f16;
            } else {
                f14 += f16;
            }
            f13 += f16;
            if (f10 > 0.0f && f13 >= f10 && charAt != ' ') {
                i10++;
                d a02 = a0(i10);
                if (i12 == i11) {
                    a02.c(str.substring(i11, i13).trim(), (f13 - f16) - ((trim2.length() - substring2.length()) * f15));
                    i11 = i13;
                    i12 = i11;
                    f13 = f16;
                    f14 = f13;
                } else {
                    a02.c(str.substring(i11, i12 - 1).trim(), ((f13 - f14) - ((substring.length() - trim.length()) * f15)) - f15);
                    f13 = f14;
                    i11 = i12;
                }
            }
        }
        if (f13 > 0.0f) {
            i10++;
            a0(i10).c(str.substring(i11), f13);
        }
        return this.P.subList(0, i10);
    }

    @Override // com.airbnb.lottie.model.layer.a, t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.S.b().width(), this.S.b().height());
    }

    @Override // com.airbnb.lottie.model.layer.a, x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == q0.f4696a) {
            u0.a<Integer, Integer> aVar = this.V;
            if (aVar != null) {
                I(aVar);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            t tVar = new t(cVar);
            this.V = tVar;
            tVar.a(this);
            j(this.V);
        } else if (t10 == q0.f4697b) {
            u0.a<Integer, Integer> aVar2 = this.X;
            if (aVar2 != null) {
                I(aVar2);
            }
            if (cVar == null) {
                this.X = null;
                return;
            }
            t tVar2 = new t(cVar);
            this.X = tVar2;
            tVar2.a(this);
            j(this.X);
        } else if (t10 == q0.f4717v) {
            u0.a<Float, Float> aVar3 = this.Z;
            if (aVar3 != null) {
                I(aVar3);
            }
            if (cVar == null) {
                this.Z = null;
                return;
            }
            t tVar3 = new t(cVar);
            this.Z = tVar3;
            tVar3.a(this);
            j(this.Z);
        } else if (t10 == q0.f4718w) {
            u0.a<Float, Float> aVar4 = this.f4656b0;
            if (aVar4 != null) {
                I(aVar4);
            }
            if (cVar == null) {
                this.f4656b0 = null;
                return;
            }
            t tVar4 = new t(cVar);
            this.f4656b0 = tVar4;
            tVar4.a(this);
            j(this.f4656b0);
        } else if (t10 == q0.I) {
            u0.a<Float, Float> aVar5 = this.f4658d0;
            if (aVar5 != null) {
                I(aVar5);
            }
            if (cVar == null) {
                this.f4658d0 = null;
                return;
            }
            t tVar5 = new t(cVar);
            this.f4658d0 = tVar5;
            tVar5.a(this);
            j(this.f4658d0);
        } else if (t10 == q0.P) {
            u0.a<Typeface, Typeface> aVar6 = this.f4659e0;
            if (aVar6 != null) {
                I(aVar6);
            }
            if (cVar == null) {
                this.f4659e0 = null;
                return;
            }
            t tVar6 = new t(cVar);
            this.f4659e0 = tVar6;
            tVar6.a(this);
            j(this.f4659e0);
        } else if (t10 == q0.R) {
            this.Q.s(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void u(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        DocumentData h10 = this.Q.h();
        x0.b bVar = this.S.g().get(h10.f4539b);
        if (bVar == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        R(h10, i10, 0);
        if (this.R.s1()) {
            Z(h10, matrix, bVar, canvas, i10);
        } else {
            Y(h10, bVar, canvas, i10);
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextLayer.java */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private String f4666a;

        /* renamed from: b  reason: collision with root package name */
        private float f4667b;

        private d() {
            this.f4666a = "";
            this.f4667b = 0.0f;
        }

        void c(String str, float f10) {
            this.f4666a = str;
            this.f4667b = f10;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }
}
