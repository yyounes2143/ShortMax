package com.startshorts.androidplayer.ui.fragment.base;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.fragment.base.ListDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.ListDialogFragment$mOnScrollListener$1$1;
import kk.f;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class ListDialogFragment<D, VDB extends ViewDataBinding> extends RVDialogFragment<D, VDB> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f45733r = new a(null);

    /* renamed from: p  reason: collision with root package name */
    private boolean f45735p;

    /* renamed from: o  reason: collision with root package name */
    private int f45734o = 1;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final i<ListDialogFragment$mOnScrollListener$1$1> f45736q = c.b(new Function0() { // from class: oi.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ListDialogFragment$mOnScrollListener$1$1 R;
            R = ListDialogFragment.R(ListDialogFragment.this);
            return R;
        }
    });

    /* compiled from: ListDialogFragment.kt */
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
    /* JADX WARN: Type inference failed for: r0v0, types: [com.startshorts.androidplayer.ui.fragment.base.ListDialogFragment$mOnScrollListener$1$1] */
    public static final ListDialogFragment$mOnScrollListener$1$1 R(final ListDialogFragment listDialogFragment) {
        return new RecyclerView.OnScrollListener(listDialogFragment) { // from class: com.startshorts.androidplayer.ui.fragment.base.ListDialogFragment$mOnScrollListener$1$1

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ListDialogFragment<D, VDB> f45737a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45737a = listDialogFragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if ((i10 == 1 || i10 == 2) && !this.f45737a.Q()) {
                    ((ListDialogFragment) this.f45737a).f45735p = true;
                    f.f60747a.r();
                    this.f45737a.T();
                } else if (i10 == 0) {
                    ((ListDialogFragment) this.f45737a).f45735p = false;
                    f.f60747a.y();
                    this.f45737a.U();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                this.f45737a.S(recyclerView);
            }
        };
    }

    public final boolean Q() {
        return this.f45735p;
    }

    public void S(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RVDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.fragment_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RVDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "ListDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RVDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public void t() {
        RecyclerView N;
        super.t();
        if (this.f45736q.isInitialized() && (N = N()) != null) {
            N.removeOnScrollListener(this.f45736q.getValue());
        }
    }

    public void T() {
    }

    public void U() {
    }
}
