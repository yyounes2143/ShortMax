package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
/* loaded from: classes5.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_MaterialDivider;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    @ColorInt
    private int color;
    @NonNull
    private Drawable dividerDrawable;
    private int insetEnd;
    private int insetStart;
    private boolean lastItemDecorated;
    private int orientation;
    private final Rect tempRect;
    private int thickness;

    public MaterialDividerItemDecoration(@NonNull Context context, int i10) {
        this(context, null, i10);
    }

    private void drawForHorizontalOrientation(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int height;
        int i10;
        int i11;
        int i12;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i10, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i10 = 0;
        }
        int i13 = i10 + this.insetStart;
        int i14 = height - this.insetEnd;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(recyclerView);
        int childCount = recyclerView.getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = recyclerView.getChildAt(i15);
            if (shouldDrawDivider(recyclerView, childAt)) {
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.tempRect);
                int round = Math.round(childAt.getTranslationX());
                if (isLayoutRtl) {
                    i12 = this.tempRect.left + round;
                    i11 = this.thickness + i12;
                } else {
                    i11 = round + this.tempRect.right;
                    i12 = i11 - this.thickness;
                }
                this.dividerDrawable.setBounds(i12, i13, i11, i14);
                this.dividerDrawable.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                this.dividerDrawable.draw(canvas);
            }
        }
        canvas.restore();
    }

    private void drawForVerticalOrientation(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int width;
        int i10;
        int i11;
        int i12;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i10, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i10 = 0;
        }
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(recyclerView);
        if (isLayoutRtl) {
            i11 = this.insetEnd;
        } else {
            i11 = this.insetStart;
        }
        int i13 = i10 + i11;
        if (isLayoutRtl) {
            i12 = this.insetStart;
        } else {
            i12 = this.insetEnd;
        }
        int i14 = width - i12;
        int childCount = recyclerView.getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = recyclerView.getChildAt(i15);
            if (shouldDrawDivider(recyclerView, childAt)) {
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.tempRect);
                int round = this.tempRect.bottom + Math.round(childAt.getTranslationY());
                this.dividerDrawable.setBounds(i13, round - this.thickness, i14, round);
                this.dividerDrawable.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                this.dividerDrawable.draw(canvas);
            }
        }
        canvas.restore();
    }

    @ColorInt
    public int getDividerColor() {
        return this.color;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.insetEnd;
    }

    @Px
    public int getDividerInsetStart() {
        return this.insetStart;
    }

    @Px
    public int getDividerThickness() {
        return this.thickness;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (shouldDrawDivider(recyclerView, view)) {
            if (this.orientation == 1) {
                rect.bottom = this.thickness;
            } else if (ViewUtils.isLayoutRtl(recyclerView)) {
                rect.left = this.thickness;
            } else {
                rect.right = this.thickness;
            }
        }
    }

    public int getOrientation() {
        return this.orientation;
    }

    public boolean isLastItemDecorated() {
        return this.lastItemDecorated;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.orientation == 1) {
            drawForVerticalOrientation(canvas, recyclerView);
        } else {
            drawForHorizontalOrientation(canvas, recyclerView);
        }
    }

    public void setDividerColor(@ColorInt int i10) {
        this.color = i10;
        Drawable wrap = DrawableCompat.wrap(this.dividerDrawable);
        this.dividerDrawable = wrap;
        DrawableCompat.setTint(wrap, i10);
    }

    public void setDividerColorResource(@NonNull Context context, @ColorRes int i10) {
        setDividerColor(ContextCompat.getColor(context, i10));
    }

    public void setDividerInsetEnd(@Px int i10) {
        this.insetEnd = i10;
    }

    public void setDividerInsetEndResource(@NonNull Context context, @DimenRes int i10) {
        setDividerInsetEnd(context.getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerInsetStart(@Px int i10) {
        this.insetStart = i10;
    }

    public void setDividerInsetStartResource(@NonNull Context context, @DimenRes int i10) {
        setDividerInsetStart(context.getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerThickness(@Px int i10) {
        this.thickness = i10;
    }

    public void setDividerThicknessResource(@NonNull Context context, @DimenRes int i10) {
        setDividerThickness(context.getResources().getDimensionPixelSize(i10));
    }

    public void setLastItemDecorated(boolean z10) {
        this.lastItemDecorated = z10;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("Invalid orientation: " + i10 + ". It should be either HORIZONTAL or VERTICAL");
        }
        this.orientation = i10;
    }

    protected boolean shouldDrawDivider(int i10, @Nullable RecyclerView.Adapter<?> adapter) {
        return true;
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, R.attr.materialDividerStyle, i10);
    }

    private boolean shouldDrawDivider(@NonNull RecyclerView recyclerView, @NonNull View view) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        boolean z10 = adapter != null && childAdapterPosition == adapter.getItemCount() - 1;
        if (childAdapterPosition != -1) {
            return (!z10 || this.lastItemDecorated) && shouldDrawDivider(childAdapterPosition, adapter);
        }
        return false;
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        this.tempRect = new Rect();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.MaterialDivider, i10, DEF_STYLE_RES, new int[0]);
        this.color = MaterialResources.getColorStateList(context, obtainStyledAttributes, R.styleable.MaterialDivider_dividerColor).getDefaultColor();
        this.thickness = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.insetStart = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.insetEnd = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        this.lastItemDecorated = obtainStyledAttributes.getBoolean(R.styleable.MaterialDivider_lastItemDecorated, true);
        obtainStyledAttributes.recycle();
        this.dividerDrawable = new ShapeDrawable();
        setDividerColor(this.color);
        setOrientation(i11);
    }
}
