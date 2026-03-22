package com.startshorts.androidplayer.adapter.base;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.log.Logger;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: D
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: BaseAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseAdapter.kt\ncom/startshorts/androidplayer/adapter/base/BaseAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n1#2:233\n*E\n"})
/* loaded from: classes6.dex */
public class BaseAdapter<D> extends RecyclerView.Adapter<BaseAdapter<D>.ViewHolder> {
    @NotNull

    /* renamed from: n */
    public static final a f37172n = new a(null);

    /* renamed from: i */
    private final long f37173i;
    @NotNull

    /* renamed from: j */
    private List<D> f37174j;
    @Nullable

    /* renamed from: k */
    private Integer f37175k;
    @Nullable

    /* renamed from: l */
    private b<D> f37176l;
    @NotNull

    /* renamed from: m */
    private final Object f37177m;

    /* compiled from: BaseAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        @NotNull

        /* renamed from: c */
        private final ViewDataBinding f37178c;

        /* renamed from: d */
        private int f37179d;
        @Nullable

        /* renamed from: e */
        private D f37180e;

        /* renamed from: f */
        final /* synthetic */ BaseAdapter<D> f37181f;

        /* compiled from: BaseAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends d {

            /* renamed from: e */
            final /* synthetic */ BaseAdapter<D> f37182e;

            /* renamed from: f */
            final /* synthetic */ D f37183f;

            /* renamed from: g */
            final /* synthetic */ int f37184g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(BaseAdapter<D> baseAdapter, D d10, int i10, long j10) {
                super(j10);
                this.f37182e = baseAdapter;
                this.f37183f = d10;
                this.f37184g = i10;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                b<D> n10 = this.f37182e.n();
                if (n10 != null) {
                    n10.a(v10, this.f37183f, this.f37184g);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull BaseAdapter baseAdapter, ViewDataBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37181f = baseAdapter;
            this.f37178c = binding;
            this.f37179d = -1;
        }

        @NotNull
        public ViewDataBinding c() {
            return this.f37178c;
        }

        @Nullable
        public final D d() {
            return this.f37180e;
        }

        public final int e() {
            return this.f37179d;
        }

        public void f(int i10, D d10) {
            if (this.f37181f.p()) {
                ViewDataBinding c10 = c();
                c10.setVariable(5, d10);
                c10.setVariable(4, Integer.valueOf(i10));
                c10.executePendingBindings();
            }
            if (this.f37181f.n() != null) {
                c().getRoot().setOnClickListener(new a(this.f37181f, d10, i10, ((BaseAdapter) this.f37181f).f37173i));
            }
            this.f37181f.o();
        }

        public void g(int i10, @Nullable D d10, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            this.f37179d = i10;
            this.f37180e = d10;
            if (payloads.contains("ignore_refresh")) {
                this.f37181f.l("setItem failed -> PAYLOAD_IGNORE_REFRESH");
            } else if (d10 != null) {
                f(i10, d10);
            }
        }

        public final void h(@Nullable D d10) {
            this.f37180e = d10;
        }

        public final void i(int i10) {
            this.f37179d = i10;
        }
    }

    /* compiled from: BaseAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BaseAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b<D> {
        void a(@NotNull View view, D d10, int i10);
    }

    /* compiled from: BaseAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface c<D> {
    }

    static {
    }

    public BaseAdapter() {
        this(0L, 1, null);
    }

    public static /* synthetic */ void D(BaseAdapter baseAdapter, List list, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            baseAdapter.C(list, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateList");
    }

    public static /* synthetic */ boolean i(BaseAdapter baseAdapter, int i10, Object obj, int i11, Object obj2) {
        if (obj2 == null) {
            if ((i11 & 2) != 0) {
                obj = null;
            }
            return baseAdapter.g(i10, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteItem");
    }

    public static /* synthetic */ boolean j(BaseAdapter baseAdapter, Object obj, Object obj2, int i10, Object obj3) {
        if (obj3 == null) {
            if ((i10 & 2) != 0) {
                obj2 = null;
            }
            return baseAdapter.h(obj, obj2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteItem");
    }

    private final void u(int i10, Object obj) {
        notifyItemRemoved(i10);
        notifyItemRangeChanged(i10, this.f37174j.size() - i10, obj);
    }

    public final void A(int i10, D d10) {
        synchronized (this.f37177m) {
            this.f37174j.set(i10, d10);
            notifyItemChanged(i10);
            Unit unit = Unit.f60915a;
        }
    }

    public final void B(@Nullable b<D> bVar) {
        this.f37176l = bVar;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void C(@Nullable List<D> list, boolean z10) {
        synchronized (this.f37177m) {
            if (list == null) {
                return;
            }
            try {
                this.f37174j = list;
                if (z10) {
                    notifyDataSetChanged();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b(int i10, D d10) {
        synchronized (this.f37177m) {
            this.f37174j.add(i10, d10);
            notifyItemInserted(i10);
            Unit unit = Unit.f60915a;
        }
    }

    public final void c(D d10) {
        synchronized (this.f37177m) {
            this.f37174j.add(d10);
            notifyItemInserted(this.f37174j.size());
            Unit unit = Unit.f60915a;
        }
    }

    public final void d(int i10, @NotNull List<? extends D> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        synchronized (this.f37177m) {
            this.f37174j.addAll(i10, list);
            notifyItemRangeInserted(i10, list.size());
            Unit unit = Unit.f60915a;
        }
    }

    public final void e(@NotNull List<? extends D> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        synchronized (this.f37177m) {
            int size = this.f37174j.size();
            this.f37174j.addAll(list);
            notifyItemRangeInserted(size, list.size());
            Unit unit = Unit.f60915a;
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void f() {
        synchronized (this.f37177m) {
            this.f37174j.clear();
            notifyDataSetChanged();
            Unit unit = Unit.f60915a;
        }
    }

    public final boolean g(int i10, @Nullable Object obj) {
        synchronized (this.f37177m) {
            if (i10 >= 0) {
                if (i10 < this.f37174j.size()) {
                    this.f37174j.remove(i10);
                    u(i10, obj);
                    return true;
                }
            }
            return false;
        }
    }

    @Nullable
    public D getItem(int i10) {
        D d10;
        synchronized (this.f37177m) {
            d10 = (D) CollectionsKt.t0(this.f37174j, i10);
        }
        return d10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size;
        synchronized (this.f37177m) {
            size = this.f37174j.size();
        }
        return size;
    }

    public final boolean h(D d10, @Nullable Object obj) {
        synchronized (this.f37177m) {
            int indexOf = this.f37174j.indexOf(d10);
            if (indexOf != -1) {
                this.f37174j.remove(indexOf);
                u(indexOf, obj);
                return true;
            }
            return false;
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final boolean k(int i10) {
        synchronized (this.f37177m) {
            if (i10 >= 0) {
                if (i10 < m().size()) {
                    this.f37174j.removeAll(m().subList(i10, m().size()));
                    notifyDataSetChanged();
                    return true;
                }
            }
            return false;
        }
    }

    public final void l(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(q(), error);
    }

    @NotNull
    public final List<D> m() {
        List<D> list;
        synchronized (this.f37177m) {
            list = this.f37174j;
        }
        return list;
    }

    @Nullable
    public final b<D> n() {
        return this.f37176l;
    }

    @Nullable
    public final c<D> o() {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        v((ViewHolder) viewHolder, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return y(viewGroup, i10);
    }

    public boolean p() {
        return true;
    }

    @NotNull
    public String q() {
        return "BaseAdapter";
    }

    public final void r(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(q(), info);
    }

    @NotNull
    public final <T extends ViewDataBinding> T s(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        T t10 = (T) DataBindingUtil.inflate(LayoutInflater.from(parent.getContext()), i10, parent, false);
        Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of com.startshorts.androidplayer.adapter.base.BaseAdapter.inflate");
        return t10;
    }

    public final boolean t() {
        if (getItemCount() == 0) {
            return true;
        }
        return false;
    }

    public void v(@NotNull BaseAdapter<D>.ViewHolder holder, int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }

    public void w(@NotNull BaseAdapter<D>.ViewHolder holder, int i10, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        holder.g(i10, getItem(i10), payloads);
    }

    @NotNull
    public BaseAdapter<D>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Integer num = this.f37175k;
        if (num != null) {
            i12 = num.intValue();
        } else {
            i12 = 0;
        }
        return new ViewHolder(this, s(parent, i12));
    }

    @NotNull
    public BaseAdapter<D>.ViewHolder y(@NotNull ViewGroup parent, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Integer num = this.f37175k;
        if (num != null) {
            i11 = num.intValue();
        } else {
            i11 = 0;
        }
        return x(parent, i10, i11);
    }

    public void z() {
        this.f37176l = null;
    }

    public BaseAdapter(long j10) {
        this.f37173i = j10;
        this.f37174j = new ArrayList();
        this.f37177m = new Object();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10, List list) {
        w((ViewHolder) viewHolder, i10, list);
    }

    public /* synthetic */ BaseAdapter(long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 250L : j10);
    }

    public BaseAdapter(int i10) {
        this(0L, 1, null);
        this.f37175k = Integer.valueOf(i10);
    }
}
