package fk;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewPager2Util.kt */
@Metadata
/* loaded from: classes7.dex */
public final class i0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i0 f51738a = new i0();

    private i0() {
    }

    @Nullable
    public final View a(@NotNull ViewPager2 viewPager, int i10) {
        LinearLayoutManager linearLayoutManager;
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        RecyclerView b10 = b(viewPager);
        if (b10 == null || (linearLayoutManager = (LinearLayoutManager) b10.getLayoutManager()) == null) {
            return null;
        }
        return linearLayoutManager.findViewByPosition(i10);
    }

    @Nullable
    public final RecyclerView b(@Nullable ViewPager2 viewPager2) {
        View view;
        if (viewPager2 != null) {
            view = viewPager2.getChildAt(0);
        } else {
            view = null;
        }
        if (!(view instanceof RecyclerView)) {
            return null;
        }
        return (RecyclerView) view;
    }
}
