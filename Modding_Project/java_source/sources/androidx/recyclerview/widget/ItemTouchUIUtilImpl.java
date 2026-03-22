package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ItemTouchUIUtilImpl implements ItemTouchUIUtil {
    static final ItemTouchUIUtil INSTANCE = new ItemTouchUIUtilImpl();

    ItemTouchUIUtilImpl() {
    }

    private static float findMaxElevation(RecyclerView recyclerView, View view) {
        int childCount = recyclerView.getChildCount();
        float f10 = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            if (childAt != view) {
                float elevation = ViewCompat.getElevation(childAt);
                if (elevation > f10) {
                    f10 = elevation;
                }
            }
        }
        return f10;
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void clearView(@NonNull View view) {
        Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
        if (tag instanceof Float) {
            ViewCompat.setElevation(view, ((Float) tag).floatValue());
        }
        view.setTag(R.id.item_touch_helper_previous_elevation, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull View view, float f10, float f11, int i10, boolean z10) {
        if (z10 && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
            Float valueOf = Float.valueOf(ViewCompat.getElevation(view));
            ViewCompat.setElevation(view, findMaxElevation(recyclerView, view) + 1.0f);
            view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
        }
        view.setTranslationX(f10);
        view.setTranslationY(f11);
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onSelected(@NonNull View view) {
    }

    @Override // androidx.recyclerview.widget.ItemTouchUIUtil
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull View view, float f10, float f11, int i10, boolean z10) {
    }
}
