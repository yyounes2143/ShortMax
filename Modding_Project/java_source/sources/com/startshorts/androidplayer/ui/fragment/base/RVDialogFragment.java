package com.startshorts.androidplayer.ui.fragment.base;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.WrapperAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RVDialogFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRVDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RVDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/RVDialogFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1#2:151\n*E\n"})
/* loaded from: classes7.dex */
public class RVDialogFragment<D, VDB extends ViewDataBinding> extends PageStateDialogFragment<VDB> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f45770n = new a(null);
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private RecyclerView f45771k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private RecyclerView.Adapter<?> f45772l;

    /* renamed from: m  reason: collision with root package name */
    private int f45773m = -1;

    /* compiled from: RVDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Nullable
    public final BaseAdapter<D> M() {
        RecyclerView.Adapter<?> adapter = this.f45772l;
        if (adapter instanceof BaseAdapter) {
            return (BaseAdapter) adapter;
        }
        RecyclerView.Adapter adapter2 = null;
        if (!(adapter instanceof WrapperAdapter)) {
            return null;
        }
        WrapperAdapter wrapperAdapter = (WrapperAdapter) adapter;
        if (wrapperAdapter != null) {
            adapter2 = wrapperAdapter.c();
        }
        return (BaseAdapter) adapter2;
    }

    @Nullable
    public final RecyclerView N() {
        return this.f45771k;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.fragment_recycler_view;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "RVDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public void t() {
        super.t();
        BaseAdapter<D> M = M();
        if (M != null) {
            M.z();
        }
    }
}
