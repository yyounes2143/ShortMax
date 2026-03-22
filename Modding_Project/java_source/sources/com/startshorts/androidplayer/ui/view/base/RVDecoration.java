package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RVDecoration.kt */
@Metadata
/* loaded from: classes7.dex */
public class RVDecoration extends RecyclerView.ItemDecoration {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47108f = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Orientation f47109a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Drawable f47110b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b f47111c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f47112d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Rect f47113e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: RVDecoration.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Orientation {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Orientation[] $VALUES;
        public static final Orientation HORIZONTAL = new Orientation("HORIZONTAL", 0);
        public static final Orientation VERTICAL = new Orientation("VERTICAL", 1);

        private static final /* synthetic */ Orientation[] $values() {
            return new Orientation[]{HORIZONTAL, VERTICAL};
        }

        static {
            Orientation[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Orientation(String str, int i10) {
        }

        @NotNull
        public static ss.a<Orientation> getEntries() {
            return $ENTRIES;
        }

        public static Orientation valueOf(String str) {
            return (Orientation) Enum.valueOf(Orientation.class, str);
        }

        public static Orientation[] values() {
            return (Orientation[]) $VALUES.clone();
        }
    }

    /* compiled from: RVDecoration.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ RVDecoration b(a aVar, Context context, Orientation orientation, int i10, boolean z10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                orientation = Orientation.HORIZONTAL;
            }
            if ((i11 & 4) != 0) {
                i10 = 0;
            }
            if ((i11 & 8) != 0) {
                z10 = true;
            }
            return aVar.a(context, orientation, i10, z10);
        }

        @NotNull
        public final RVDecoration a(@NotNull Context context, @NotNull Orientation orientation, int i10, boolean z10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            Drawable drawable = ContextCompat.getDrawable(context, R$drawable.shape_rv_divider_line);
            Intrinsics.checkNotNull(drawable);
            return new RVDecoration(orientation, drawable, new b(i10, 0, i10, 0), z10);
        }

        private a() {
        }
    }

    /* compiled from: RVDecoration.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private int f47114a;

        /* renamed from: b  reason: collision with root package name */
        private int f47115b;

        /* renamed from: c  reason: collision with root package name */
        private int f47116c;

        /* renamed from: d  reason: collision with root package name */
        private int f47117d;

        public b(int i10, int i11, int i12, int i13) {
            this.f47114a = i10;
            this.f47115b = i11;
            this.f47116c = i12;
            this.f47117d = i13;
        }

        public final int a() {
            return this.f47117d;
        }

        public final int b() {
            return this.f47114a;
        }

        public final int c() {
            return this.f47116c;
        }

        public final int d() {
            return this.f47115b;
        }
    }

    public /* synthetic */ RVDecoration(Orientation orientation, Drawable drawable, b bVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, drawable, (i10 & 4) != 0 ? new b(0, 0, 0, 0) : bVar, (i10 & 8) != 0 ? true : z10);
    }

    private final void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i10;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = this.f47111c.d();
            height = recyclerView.getHeight() - this.f47111c.a();
            canvas.clipRect(recyclerView.getPaddingLeft(), i10, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i10 = 0;
        }
        int childCount = this.f47112d ? recyclerView.getChildCount() : recyclerView.getChildCount() - 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = recyclerView.getChildAt(i11);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager != null) {
                layoutManager.getDecoratedBoundsWithMargins(childAt, this.f47113e);
            }
            int b10 = this.f47113e.right + jk.h.b(childAt.getTranslationX());
            this.f47110b.setBounds(b10 - this.f47110b.getIntrinsicWidth(), i10, b10, height);
            this.f47110b.draw(canvas);
        }
        canvas.restore();
    }

    private final void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int i10;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = this.f47111c.b();
            width = recyclerView.getWidth() - this.f47111c.c();
            canvas.clipRect(i10, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i10 = 0;
        }
        int childCount = this.f47112d ? recyclerView.getChildCount() : recyclerView.getChildCount() - 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = recyclerView.getChildAt(i11);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.f47113e);
            int b10 = this.f47113e.bottom + jk.h.b(childAt.getTranslationY());
            this.f47110b.setBounds(i10, b10 - this.f47110b.getIntrinsicHeight(), width, b10);
            this.f47110b.draw(canvas);
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.f47109a == Orientation.VERTICAL) {
            outRect.set(0, 0, 0, this.f47110b.getIntrinsicHeight());
        } else {
            outRect.set(0, 0, this.f47110b.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NotNull Canvas c10, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        if (parent.getLayoutManager() == null) {
            return;
        }
        if (this.f47109a == Orientation.HORIZONTAL) {
            drawVertical(c10, parent);
        } else {
            drawHorizontal(c10, parent);
        }
    }

    public RVDecoration(@NotNull Orientation orientation, @NotNull Drawable dividerLine, @NotNull b padding, boolean z10) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(dividerLine, "dividerLine");
        Intrinsics.checkNotNullParameter(padding, "padding");
        this.f47109a = orientation;
        this.f47110b = dividerLine;
        this.f47111c = padding;
        this.f47112d = z10;
        this.f47113e = new Rect();
    }
}
