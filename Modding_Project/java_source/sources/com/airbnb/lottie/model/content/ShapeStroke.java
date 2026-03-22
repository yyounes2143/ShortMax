package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import java.util.List;
import t0.t;
import y0.b;
import y0.d;
import z0.c;
/* loaded from: classes2.dex */
public class ShapeStroke implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f4570a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b f4571b;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f4572c;

    /* renamed from: d  reason: collision with root package name */
    private final y0.a f4573d;

    /* renamed from: e  reason: collision with root package name */
    private final d f4574e;

    /* renamed from: f  reason: collision with root package name */
    private final b f4575f;

    /* renamed from: g  reason: collision with root package name */
    private final LineCapType f4576g;

    /* renamed from: h  reason: collision with root package name */
    private final LineJoinType f4577h;

    /* renamed from: i  reason: collision with root package name */
    private final float f4578i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f4579j;

    /* loaded from: classes2.dex */
    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i10 = a.f4580a[ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return Paint.Cap.SQUARE;
                }
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    /* loaded from: classes2.dex */
    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i10 = a.f4581b[ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return Paint.Join.ROUND;
                }
                return Paint.Join.MITER;
            }
            return Paint.Join.BEVEL;
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4580a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f4581b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f4581b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4581b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4581b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f4580a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4580a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4580a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, @Nullable b bVar, List<b> list, y0.a aVar, d dVar, b bVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f10, boolean z10) {
        this.f4570a = str;
        this.f4571b = bVar;
        this.f4572c = list;
        this.f4573d = aVar;
        this.f4574e = dVar;
        this.f4575f = bVar2;
        this.f4576g = lineCapType;
        this.f4577h = lineJoinType;
        this.f4578i = f10;
        this.f4579j = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t(lottieDrawable, aVar, this);
    }

    public LineCapType b() {
        return this.f4576g;
    }

    public y0.a c() {
        return this.f4573d;
    }

    public b d() {
        return this.f4571b;
    }

    public LineJoinType e() {
        return this.f4577h;
    }

    public List<b> f() {
        return this.f4572c;
    }

    public float g() {
        return this.f4578i;
    }

    public String h() {
        return this.f4570a;
    }

    public d i() {
        return this.f4574e;
    }

    public b j() {
        return this.f4575f;
    }

    public boolean k() {
        return this.f4579j;
    }
}
