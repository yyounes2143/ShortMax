package com.startshorts.androidplayer.ui.view.guide.core;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.startshorts.androidplayer.ui.view.guide.core.GuideLayout;
import com.startshorts.androidplayer.ui.view.guide.model.HighLight;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: GuideLayout.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGuideLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLayout.kt\ncom/startshorts/androidplayer/ui/view/guide/core/GuideLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,145:1\n1863#2,2:146\n1863#2,2:152\n13423#3,2:148\n13423#3,2:150\n*S KotlinDebug\n*F\n+ 1 GuideLayout.kt\ncom/startshorts/androidplayer/ui/view/guide/core/GuideLayout\n*L\n74#1:146,2\n120#1:152,2\n109#1:148,2\n112#1:150,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GuideLayout extends FrameLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47260f = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private com.startshorts.androidplayer.ui.view.guide.core.a f47261a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Paint f47262b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.startshorts.androidplayer.ui.view.guide.model.a f47263c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f47264d;

    /* renamed from: e  reason: collision with root package name */
    private int f47265e;

    /* compiled from: GuideLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: GuideLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(@Nullable GuideLayout guideLayout);
    }

    /* compiled from: GuideLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HighLight.Shape.values().length];
            try {
                iArr[HighLight.Shape.CIRCLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HighLight.Shape.OVAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HighLight.Shape.ROUND_RECTANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[HighLight.Shape.RECTANGLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GuideLayout(@NotNull Context context, @NotNull com.startshorts.androidplayer.ui.view.guide.model.a page, @Nullable com.startshorts.androidplayer.ui.view.guide.core.a aVar) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(page, "page");
        this.f47262b = new Paint();
        i();
        setGuidePage(page);
        this.f47261a = aVar;
    }

    private final void d(final com.startshorts.androidplayer.ui.view.guide.model.a aVar) {
        removeAllViews();
        int h10 = aVar.h();
        if (h10 != 0) {
            View inflate = LayoutInflater.from(getContext()).inflate(h10, (ViewGroup) this, false);
            if (inflate == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            int[] f10 = aVar.f();
            if (f10 != null) {
                for (int i10 : f10) {
                    inflate.findViewById(i10).setOnClickListener(new View.OnClickListener() { // from class: ij.c
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            GuideLayout.e(GuideLayout.this, view);
                        }
                    });
                }
            }
            int[] d10 = aVar.d();
            if (d10 != null) {
                for (int i11 : d10) {
                    inflate.findViewById(i11).setOnClickListener(new View.OnClickListener() { // from class: ij.d
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            GuideLayout.f(com.startshorts.androidplayer.ui.view.guide.model.a.this, view);
                        }
                    });
                }
            }
            if (this.f47261a != null) {
                aVar.i();
            }
            addView(inflate, layoutParams);
        }
        for (kj.a aVar2 : aVar.j()) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            addView(aVar2.a((ViewGroup) parent, this.f47261a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(GuideLayout guideLayout, View view) {
        guideLayout.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(com.startshorts.androidplayer.ui.view.guide.model.a aVar, View view) {
        d e10;
        if (aVar != null && (e10 = aVar.e()) != null) {
            Intrinsics.checkNotNull(view);
            e10.a(view);
        }
    }

    private final void g() {
        ViewGroup viewGroup;
        if (getParent() != null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
            b bVar = this.f47264d;
            if (bVar != null) {
                bVar.a(this);
            }
        }
    }

    private final void h(Canvas canvas) {
        List<HighLight> g10;
        int i10;
        com.startshorts.androidplayer.ui.view.guide.model.a aVar = this.f47263c;
        if (aVar != null && (g10 = aVar.g()) != null) {
            for (HighLight highLight : g10) {
                ViewParent parent = getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                RectF a10 = highLight.a((ViewGroup) parent);
                if (a10 != null) {
                    HighLight.Shape shape = highLight.getShape();
                    if (shape == null) {
                        i10 = -1;
                    } else {
                        i10 = c.$EnumSwitchMapping$0[shape.ordinal()];
                    }
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    canvas.drawRect(a10, this.f47262b);
                                } else {
                                    canvas.drawRect(a10, this.f47262b);
                                }
                            } else {
                                canvas.drawRoundRect(a10, highLight.b(), highLight.b(), this.f47262b);
                            }
                        } else {
                            canvas.drawOval(a10, this.f47262b);
                        }
                    } else {
                        canvas.drawCircle(a10.centerX(), a10.centerY(), highLight.getRadius(), this.f47262b);
                    }
                    j(canvas, highLight, a10);
                }
            }
        }
    }

    private final void i() {
        Paint paint = this.f47262b;
        paint.setAntiAlias(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        setLayerType(1, null);
        setWillNotDraw(false);
        this.f47265e = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(GuideLayout guideLayout, View view) {
        com.startshorts.androidplayer.ui.view.guide.model.a aVar = guideLayout.f47263c;
        if (aVar != null && aVar.k()) {
            guideLayout.k();
        }
    }

    private final void setGuidePage(com.startshorts.androidplayer.ui.view.guide.model.a aVar) {
        this.f47263c = aVar;
        setOnClickListener(new View.OnClickListener() { // from class: ij.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GuideLayout.l(GuideLayout.this, view);
            }
        });
    }

    public final void k() {
        g();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.startshorts.androidplayer.ui.view.guide.model.a aVar = this.f47263c;
        if (aVar != null) {
            d(aVar);
        }
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Integer num;
        int i10;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        com.startshorts.androidplayer.ui.view.guide.model.a aVar = this.f47263c;
        if (aVar != null) {
            num = Integer.valueOf(aVar.c());
        } else {
            num = null;
        }
        if (num != null && num.intValue() != 0) {
            i10 = num.intValue();
        } else {
            i10 = -1308622848;
        }
        canvas.drawColor(i10);
        h(canvas);
    }

    public final void setOnGuideLayoutDismissListener(@Nullable b bVar) {
        this.f47264d = bVar;
    }

    private final void j(Canvas canvas, HighLight highLight, RectF rectF) {
    }
}
