package kd;

import androidx.databinding.BindingAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import fk.i0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewPager2BindingAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f60714a = new d();

    private d() {
    }

    @BindingAdapter({"itemPrefetchEnable"})
    public static final void a(@NotNull ViewPager2 viewPager, boolean z10) {
        RecyclerView.LayoutManager layoutManager;
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        RecyclerView b10 = i0.f51738a.b(viewPager);
        if (b10 != null && (layoutManager = b10.getLayoutManager()) != null) {
            layoutManager.setItemPrefetchEnabled(z10);
        }
    }

    @BindingAdapter({"customOverScrollMode"})
    public static final void b(@NotNull ViewPager2 viewPager, int i10) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        RecyclerView b10 = i0.f51738a.b(viewPager);
        if (b10 != null) {
            b10.setOverScrollMode(i10);
        }
    }
}
