package com.startshorts.androidplayer.ui.fragment.base;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment$mOnScrollListener$1$1;
import java.util.List;
import kk.f;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BottomSheetListFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class BottomSheetListFragment<D, VDB extends ViewDataBinding> extends BottomSheetRVFragment<D, VDB> {
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final a f45714z = new a(null);

    /* renamed from: x  reason: collision with root package name */
    private boolean f45716x;

    /* renamed from: w  reason: collision with root package name */
    private int f45715w = 1;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final i<BottomSheetListFragment$mOnScrollListener$1$1> f45717y = c.b(new Function0() { // from class: oi.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BottomSheetListFragment$mOnScrollListener$1$1 h02;
            h02 = BottomSheetListFragment.h0(BottomSheetListFragment.this);
            return h02;
        }
    });

    /* compiled from: BottomSheetListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment$mOnScrollListener$1$1] */
    public static final BottomSheetListFragment$mOnScrollListener$1$1 h0(final BottomSheetListFragment bottomSheetListFragment) {
        return new RecyclerView.OnScrollListener(bottomSheetListFragment) { // from class: com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment$mOnScrollListener$1$1

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BottomSheetListFragment<D, VDB> f45718a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45718a = bottomSheetListFragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if ((i10 == 1 || i10 == 2) && !this.f45718a.d0()) {
                    ((BottomSheetListFragment) this.f45718a).f45716x = true;
                    f.f60747a.r();
                    this.f45718a.j0();
                } else if (i10 == 0) {
                    ((BottomSheetListFragment) this.f45718a).f45716x = false;
                    f.f60747a.y();
                    this.f45718a.k0();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                this.f45718a.i0(recyclerView);
            }
        };
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment
    public boolean O(@Nullable List<D> list) {
        boolean O = super.O(list);
        if (O) {
            this.f45715w++;
        }
        return O;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment
    public void V() {
        super.V();
        RecyclerView T = T();
        if (T != null) {
            T.addOnScrollListener(this.f45717y.getValue());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment
    public boolean Z(@Nullable List<D> list) {
        boolean Z = super.Z(list);
        if (Z) {
            this.f45715w = 1;
        }
        return Z;
    }

    public boolean c0() {
        return false;
    }

    public final boolean d0() {
        return this.f45716x;
    }

    public boolean e0() {
        return true;
    }

    public void f0(boolean z10, boolean z11, @Nullable String str) {
        if (z10) {
            if (c0() || W()) {
                if (z11) {
                    M();
                } else {
                    N(str);
                }
            }
        }
    }

    public void g0(boolean z10, @Nullable List<D> list) {
        if (z10) {
            List<D> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                Z(list);
            } else if (U()) {
                Z(list);
            }
            if (e0()) {
                if (list2 != null && !list2.isEmpty()) {
                    C();
                } else {
                    K();
                }
            }
            D();
            E();
            G();
            return;
        }
        O(list);
    }

    public void i0(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.fragment_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "BottomSheetListFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        RecyclerView T;
        super.s();
        if (this.f45717y.isInitialized() && (T = T()) != null) {
            T.removeOnScrollListener(this.f45717y.getValue());
        }
    }

    public void j0() {
    }

    public void k0() {
    }
}
