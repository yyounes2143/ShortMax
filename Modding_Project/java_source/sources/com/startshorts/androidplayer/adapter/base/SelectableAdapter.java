package com.startshorts.androidplayer.adapter.base;

import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectableAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public class SelectableAdapter<D extends SelectableItem> extends BaseAdapter<D> {
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    public static final b f37188v = new b(null);

    /* renamed from: o  reason: collision with root package name */
    private int f37189o;

    /* renamed from: p  reason: collision with root package name */
    private int f37190p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private d<D> f37191q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f37192r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37193s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f37194t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f37195u;

    /* compiled from: SelectableAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public class SelectableViewHolder extends BaseAdapter<D>.ViewHolder {

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ SelectableAdapter<D> f37196g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelectableViewHolder(@NotNull SelectableAdapter selectableAdapter, ViewDataBinding binding) {
            super(selectableAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37196g = selectableAdapter;
        }
    }

    /* compiled from: SelectableAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements BaseAdapter.b<D> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SelectableAdapter<D> f37197a;

        a(SelectableAdapter<D> selectableAdapter) {
            this.f37197a = selectableAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, D d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            if (!d10.getClickable()) {
                return;
            }
            this.f37197a.F();
            this.f37197a.G(v10, d10, i10);
        }
    }

    /* compiled from: SelectableAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: SelectableAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface c<D> {
    }

    /* compiled from: SelectableAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface d<D> {
        void a(@NotNull View view, int i10, D d10);
    }

    public SelectableAdapter() {
        this(0, 1, null);
    }

    public final void E() {
        int i10 = this.f37189o;
        if (i10 == -1) {
            return;
        }
        SelectableItem selectableItem = (SelectableItem) getItem(i10);
        if (selectableItem != null) {
            selectableItem.setSelected(false);
        }
        if (this.f37193s) {
            notifyItemChanged(this.f37189o);
        }
        this.f37189o = -1;
        this.f37190p = -1;
    }

    @Nullable
    public final c<D> F() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final void G(@NotNull View v10, @NotNull D d10, int i10) {
        d<D> dVar;
        Intrinsics.checkNotNullParameter(v10, "v");
        Intrinsics.checkNotNullParameter(d10, "d");
        SelectableItem selectableItem = (SelectableItem) getItem(i10);
        if (selectableItem == null) {
            return;
        }
        if (!d10.isSelected()) {
            if (this.f37192r) {
                L(i10);
            }
            d<D> dVar2 = this.f37191q;
            if (dVar2 != 0) {
                dVar2.a(v10, i10, selectableItem);
            }
        } else if (this.f37194t) {
            E();
            d<D> dVar3 = this.f37191q;
            if (dVar3 != 0) {
                dVar3.a(v10, i10, selectableItem);
            }
        } else if (this.f37195u && (dVar = this.f37191q) != 0) {
            dVar.a(v10, i10, selectableItem);
        }
    }

    public final void H(boolean z10) {
        this.f37192r = z10;
    }

    public final void I(int i10) {
        this.f37189o = i10;
    }

    public final void J(@Nullable d<D> dVar) {
        this.f37191q = dVar;
    }

    public final void K(boolean z10) {
        this.f37193s = z10;
    }

    public final void L(int i10) {
        int i11 = this.f37189o;
        if (i10 == i11) {
            return;
        }
        this.f37190p = i11;
        this.f37189o = i10;
        if (i11 == -1) {
            this.f37190p = 0;
        }
        SelectableItem selectableItem = (SelectableItem) getItem(this.f37190p);
        if (selectableItem != null) {
            selectableItem.setSelected(false);
        }
        SelectableItem selectableItem2 = (SelectableItem) getItem(this.f37189o);
        if (selectableItem2 != null) {
            selectableItem2.setSelected(true);
        }
        if (this.f37193s) {
            notifyItemChanged(this.f37190p);
            notifyItemChanged(this.f37189o);
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "SelectableAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<D>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        SelectableViewHolder selectableViewHolder = new SelectableViewHolder(this, s(parent, i11));
        selectableViewHolder.itemView.setImportantForAccessibility(2);
        return selectableViewHolder;
    }

    public SelectableAdapter(int i10) {
        super(i10);
        this.f37189o = -1;
        this.f37190p = -1;
        this.f37192r = true;
        B(new a(this));
    }

    public /* synthetic */ SelectableAdapter(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? -1 : i10);
    }
}
