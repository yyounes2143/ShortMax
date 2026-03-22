package com.startshorts.androidplayer.ui.view.guide.model;

import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.LayoutRes;
import com.startshorts.androidplayer.ui.view.guide.model.HighLight;
import com.startshorts.androidplayer.ui.view.guide.model.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: GuidePage.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final C0647a f47275h = new C0647a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<HighLight> f47276a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f47277b = true;

    /* renamed from: c  reason: collision with root package name */
    private int f47278c;

    /* renamed from: d  reason: collision with root package name */
    private int f47279d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private int[] f47280e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private int[] f47281f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private d f47282g;

    /* compiled from: GuidePage.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.ui.view.guide.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0647a {
        public /* synthetic */ C0647a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final a a() {
            return new a();
        }

        private C0647a() {
        }
    }

    public static /* synthetic */ a b(a aVar, View view, HighLight.Shape shape, int i10, int i11, kj.a aVar2, View.OnClickListener onClickListener, int i12, Object obj) {
        int i13;
        int i14;
        kj.a aVar3;
        View.OnClickListener onClickListener2;
        if ((i12 & 2) != 0) {
            shape = HighLight.Shape.RECTANGLE;
        }
        HighLight.Shape shape2 = shape;
        if ((i12 & 4) != 0) {
            i13 = 0;
        } else {
            i13 = i10;
        }
        if ((i12 & 8) != 0) {
            i14 = 0;
        } else {
            i14 = i11;
        }
        if ((i12 & 16) != 0) {
            aVar3 = null;
        } else {
            aVar3 = aVar2;
        }
        if ((i12 & 32) != 0) {
            onClickListener2 = null;
        } else {
            onClickListener2 = onClickListener;
        }
        return aVar.a(view, shape2, i13, i14, aVar3, onClickListener2);
    }

    @NotNull
    public final a a(@NotNull View view, @NotNull HighLight.Shape shape, int i10, int i11, @Nullable kj.a aVar, @Nullable View.OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(shape, "shape");
        c cVar = new c(view, shape, i10, i11);
        if (aVar != null) {
            aVar.f(cVar);
            cVar.d(new b.a().c(aVar).b(onClickListener).a());
        }
        this.f47276a.add(cVar);
        return this;
    }

    public final int c() {
        return this.f47278c;
    }

    @Nullable
    public final int[] d() {
        return this.f47281f;
    }

    @Nullable
    public final d e() {
        return this.f47282g;
    }

    @Nullable
    public final int[] f() {
        return this.f47280e;
    }

    @NotNull
    public final List<HighLight> g() {
        return this.f47276a;
    }

    public final int h() {
        return this.f47279d;
    }

    @Nullable
    public final jj.b i() {
        return null;
    }

    @NotNull
    public final List<kj.a> j() {
        kj.a b10;
        ArrayList arrayList = new ArrayList();
        for (HighLight highLight : this.f47276a) {
            b options = highLight.getOptions();
            if (options != null && (b10 = options.b()) != null) {
                arrayList.add(b10);
            }
        }
        return arrayList;
    }

    public final boolean k() {
        return this.f47277b;
    }

    @NotNull
    public final a l(@ColorInt int i10) {
        this.f47278c = i10;
        return this;
    }

    @NotNull
    public final a m(@LayoutRes int i10) {
        this.f47279d = i10;
        return this;
    }
}
