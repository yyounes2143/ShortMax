package com.drake.brv;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import android.util.NoSuchPropertyException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewUtils;
import androidx.viewbinding.ViewBinding;
import com.drake.brv.BindingAdapter;
import com.drake.brv.listener.DefaultItemTouchCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KType;
import l1.e;
import l1.f;
import l1.g;
import m1.b;
import m1.d;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BindingAdapter.kt */
@Metadata
/* loaded from: classes3.dex */
public class BindingAdapter extends RecyclerView.Adapter<BindingViewHolder> {
    @NotNull
    public static final a K = new a(null);
    @NotNull
    private static final i<Boolean> L = c.b(new Function0<Boolean>() { // from class: com.drake.brv.BindingAdapter$Companion$dataBindingEnable$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Boolean invoke() {
            boolean z10;
            try {
                int i10 = DataBindingUtil.f1422a;
                z10 = true;
            } catch (Throwable unused) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
    });
    private boolean A;
    private boolean B;
    @NotNull
    private List<? extends Object> C;
    @NotNull
    private List<? extends Object> D;
    @Nullable
    private List<Object> E;
    @NotNull
    private m1.a F;
    @NotNull
    private final List<Integer> G;
    private int H;
    private boolean I;
    private boolean J;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private RecyclerView f13438i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private List<b> f13439j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    private int f13440k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Function2<? super BindingViewHolder, ? super Integer, Unit> f13441l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Function1<? super BindingViewHolder, Unit> f13442m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Function2<? super BindingViewHolder, ? super List<Object>, Unit> f13443n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Function2<? super BindingViewHolder, ? super Integer, Unit> f13444o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Function2<? super BindingViewHolder, ? super Integer, Unit> f13445p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Context f13446q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final Map<KType, Function2<Object, Integer, Integer>> f13447r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final Map<KType, Function2<Object, Integer, Integer>> f13448s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final HashMap<Integer, Pair<Function2<BindingViewHolder, Integer, Unit>, Boolean>> f13449t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final HashMap<Integer, Function2<BindingViewHolder, Integer, Unit>> f13450u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private ItemTouchHelper f13451v;

    /* renamed from: w  reason: collision with root package name */
    private long f13452w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private k1.b f13453x;

    /* renamed from: y  reason: collision with root package name */
    private int f13454y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f13455z;

    /* compiled from: BindingAdapter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b() {
            return ((Boolean) BindingAdapter.L.getValue()).booleanValue();
        }

        private a() {
        }
    }

    public BindingAdapter() {
        o1.a aVar = o1.a.f63070a;
        this.f13440k = aVar.d();
        this.f13447r = new LinkedHashMap();
        this.f13448s = new LinkedHashMap();
        this.f13449t = new HashMap<>();
        this.f13450u = new HashMap<>();
        this.f13451v = new ItemTouchHelper(new DefaultItemTouchCallback());
        this.f13452w = aVar.a();
        this.f13453x = new k1.a(0.0f, 1, null);
        this.f13454y = -1;
        this.f13455z = true;
        this.C = new ArrayList();
        this.D = new ArrayList();
        this.F = m1.a.f62441a;
        this.G = new ArrayList();
        this.H = -1;
        this.I = true;
        this.J = true;
    }

    public static /* synthetic */ void i(BindingAdapter bindingAdapter, Object obj, int i10, boolean z10, int i11, Object obj2) {
        if (obj2 == null) {
            if ((i11 & 2) != 0) {
                i10 = -1;
            }
            if ((i11 & 4) != 0) {
                z10 = false;
            }
            bindingAdapter.h(obj, i10, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addHeader");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.Object> j(java.util.List<java.lang.Object> r9, java.lang.Boolean r10, @androidx.annotation.IntRange(from = -1) int r11) {
        /*
            r8 = this;
            boolean r0 = r9.isEmpty()
            if (r0 == 0) goto L7
            return r9
        L7:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r9
            java.util.Collection r1 = (java.util.Collection) r1
            r0.<init>(r1)
            r9.clear()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = 0
            r3 = r1
        L19:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L91
            java.lang.Object r4 = r0.next()
            if (r3 == 0) goto L47
            r5 = r9
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            boolean r6 = r5 instanceof java.util.Collection
            if (r6 == 0) goto L36
            r6 = r5
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L36
            goto L47
        L36:
            java.util.Iterator r5 = r5.iterator()
        L3a:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L47
            java.lang.Object r6 = r5.next()
            if (r4 != r6) goto L3a
            goto L19
        L47:
            r9.add(r4)
            boolean r3 = r4 instanceof l1.d
            if (r3 == 0) goto L8d
            l1.d r4 = (l1.d) r4
            r4.a(r2)
            if (r10 == 0) goto L63
            if (r11 == 0) goto L63
            boolean r3 = r10.booleanValue()
            r4.d(r3)
            if (r11 <= 0) goto L63
            int r3 = r11 + (-1)
            goto L64
        L63:
            r3 = r11
        L64:
            java.util.List r5 = r4.b()
            if (r5 != 0) goto L6b
            goto L8b
        L6b:
            r6 = r5
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r7 = r6.isEmpty()
            if (r7 != 0) goto L8b
            boolean r4 = r4.c()
            if (r4 != 0) goto L7e
            if (r11 == 0) goto L8b
            if (r10 == 0) goto L8b
        L7e:
            java.util.List r4 = kotlin.collections.CollectionsKt.g1(r6)
            java.util.List r3 = r8.j(r4, r10, r3)
            java.util.Collection r3 = (java.util.Collection) r3
            r9.addAll(r3)
        L8b:
            r3 = r5
            goto L8e
        L8d:
            r3 = r1
        L8e:
            int r2 = r2 + 1
            goto L19
        L91:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.drake.brv.BindingAdapter.j(java.util.List, java.lang.Boolean, int):java.util.List");
    }

    static /* synthetic */ List k(BindingAdapter bindingAdapter, List list, Boolean bool, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                bool = null;
            }
            if ((i11 & 4) != 0) {
                i10 = 0;
            }
            return bindingAdapter.j(list, bool, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flat");
    }

    public final boolean A(@IntRange(from = 0) int i10) {
        if (o() > 0 && i10 < o()) {
            return true;
        }
        return false;
    }

    public final boolean B(int i10) {
        e eVar = null;
        e eVar2 = null;
        e eVar3 = null;
        Object obj = null;
        if (A(i10)) {
            Object obj2 = p().get(i10);
            if (obj2 instanceof e) {
                eVar2 = obj2;
            }
            eVar = eVar2;
        } else if (z(i10)) {
            Object obj3 = n().get((i10 - o()) - s());
            if (obj3 instanceof e) {
                eVar3 = obj3;
            }
            eVar = eVar3;
        } else {
            List<Object> u10 = u();
            if (u10 != null) {
                Object t02 = CollectionsKt.t0(u10, i10 - o());
                if (t02 instanceof e) {
                    obj = t02;
                }
                eVar = (e) obj;
            }
        }
        if (eVar != null && eVar.a() && this.J) {
            return true;
        }
        return false;
    }

    public final boolean C(@IntRange(from = 0) int i10) {
        if (!A(i10) && !z(i10)) {
            return true;
        }
        return false;
    }

    public final void D(@NotNull Function1<? super BindingViewHolder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.f13442m = block;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: E */
    public void onBindViewHolder(@NotNull BindingViewHolder holder, int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.g(r(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: F */
    public void onBindViewHolder(@NotNull BindingViewHolder holder, int i10, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (this.f13443n != null && !payloads.isEmpty()) {
            Function2<? super BindingViewHolder, ? super List<Object>, Unit> function2 = this.f13443n;
            if (function2 != null) {
                function2.invoke(holder, payloads);
                return;
            }
            return;
        }
        super.onBindViewHolder(holder, i10, payloads);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    /* renamed from: G */
    public BindingViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        ViewDataBinding viewDataBinding;
        BindingViewHolder bindingViewHolder;
        Intrinsics.checkNotNullParameter(parent, "parent");
        View itemView = LayoutInflater.from(parent.getContext()).inflate(i10, parent, false);
        if (K.b()) {
            try {
                viewDataBinding = DataBindingUtil.bind(itemView);
            } catch (Throwable unused) {
                viewDataBinding = null;
            }
            if (viewDataBinding == null) {
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                bindingViewHolder = new BindingViewHolder(this, itemView);
            } else {
                bindingViewHolder = new BindingViewHolder(this, viewDataBinding);
            }
        } else {
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            bindingViewHolder = new BindingViewHolder(this, itemView);
        }
        RecyclerViewUtils.setItemViewType(bindingViewHolder, i10);
        Function2<? super BindingViewHolder, ? super Integer, Unit> function2 = this.f13441l;
        if (function2 != null) {
            function2.invoke(bindingViewHolder, Integer.valueOf(i10));
        }
        return bindingViewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: H */
    public void onViewAttachedToWindow(@NotNull BindingViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int layoutPosition = holder.getLayoutPosition();
        if (this.A && (this.B || this.f13454y < layoutPosition)) {
            k1.b bVar = this.f13453x;
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            bVar.a(view);
            this.f13454y = layoutPosition;
        }
        Object m10 = holder.m();
        if (!(m10 instanceof l1.a)) {
            m10 = null;
        }
        l1.a aVar = (l1.a) m10;
        if (aVar != null) {
            aVar.b(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: I */
    public void onViewDetachedFromWindow(@NotNull BindingViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Object m10 = holder.m();
        if (!(m10 instanceof l1.a)) {
            m10 = null;
        }
        l1.a aVar = (l1.a) m10;
        if (aVar != null) {
            aVar.a(holder);
        }
    }

    public final void J(@Nullable Object obj, boolean z10) {
        if (o() != 0 && this.C.contains(obj)) {
            int indexOf = this.C.indexOf(obj);
            TypeIntrinsics.asMutableList(this.C).remove(obj);
            if (z10) {
                notifyItemRemoved(indexOf);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void K(@Nullable List<? extends Object> list) {
        List<Object> list2;
        if (list instanceof ArrayList) {
            list2 = k(this, list, null, 0, 6, null);
        } else if (list != null) {
            list2 = k(this, CollectionsKt.g1(list), null, 0, 6, null);
        } else {
            list2 = null;
        }
        this.E = list2;
        notifyDataSetChanged();
        this.G.clear();
        if (this.f13455z) {
            this.f13454y = -1;
            this.f13455z = false;
            return;
        }
        this.f13454y = getItemCount() - 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return o() + s() + m();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        g gVar = null;
        g gVar2 = null;
        g gVar3 = null;
        Object obj = null;
        if (A(i10)) {
            Object obj2 = p().get(i10);
            if (obj2 instanceof g) {
                gVar2 = obj2;
            }
            gVar = gVar2;
        } else if (z(i10)) {
            Object obj3 = n().get((i10 - o()) - s());
            if (obj3 instanceof g) {
                gVar3 = obj3;
            }
            gVar = gVar3;
        } else {
            List<Object> u10 = u();
            if (u10 != null) {
                Object t02 = CollectionsKt.t0(u10, i10 - o());
                if (t02 instanceof g) {
                    obj = t02;
                }
                gVar = (g) obj;
            }
        }
        if (gVar == null) {
            return -1L;
        }
        return gVar.getItemId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        Integer num;
        Function2<Object, Integer, Integer> function2;
        Integer invoke;
        Function2<Object, Integer, Integer> function22;
        Object r10 = r(i10);
        Iterator<Map.Entry<KType, Function2<Object, Integer, Integer>>> it = this.f13447r.entrySet().iterator();
        while (true) {
            num = null;
            if (it.hasNext()) {
                Map.Entry<KType, Function2<Object, Integer, Integer>> next = it.next();
                if (n1.a.a(next.getKey(), r10)) {
                    function2 = next.getValue();
                    continue;
                } else {
                    function2 = null;
                    continue;
                }
                if (function2 != null) {
                    break;
                }
            } else {
                function2 = null;
                break;
            }
        }
        if (function2 == null) {
            invoke = null;
        } else {
            invoke = function2.invoke(r10, Integer.valueOf(i10));
        }
        if (invoke == null) {
            Iterator<Map.Entry<KType, Function2<Object, Integer, Integer>>> it2 = this.f13448s.entrySet().iterator();
            while (true) {
                if (it2.hasNext()) {
                    Map.Entry<KType, Function2<Object, Integer, Integer>> next2 = it2.next();
                    if (n1.a.b(next2.getKey(), r10)) {
                        function22 = next2.getValue();
                        continue;
                    } else {
                        function22 = null;
                        continue;
                    }
                    if (function22 != null) {
                        break;
                    }
                } else {
                    function22 = null;
                    break;
                }
            }
            if (function22 != null) {
                num = function22.invoke(r10, Integer.valueOf(i10));
            }
            if (num != null) {
                return num.intValue();
            }
            throw new NoSuchPropertyException("Please add item model type : addType<" + ((Object) r10.getClass().getName()) + ">(R.layout.item)");
        }
        return invoke.intValue();
    }

    public final void h(@Nullable Object obj, @IntRange(from = -1) int i10, boolean z10) {
        if (i10 == -1) {
            TypeIntrinsics.asMutableList(this.C).add(0, obj);
            if (z10) {
                notifyItemInserted(0);
            }
        } else if (i10 <= o()) {
            TypeIntrinsics.asMutableList(this.C).add(i10, obj);
            if (z10) {
                notifyItemInserted(i10);
            }
        }
        if (!z10) {
            notifyDataSetChanged();
        }
    }

    public final long l() {
        return this.f13452w;
    }

    public final int m() {
        return this.D.size();
    }

    @NotNull
    public final List<Object> n() {
        return this.D;
    }

    public final int o() {
        return this.C.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f13438i = recyclerView;
        if (this.f13446q == null) {
            this.f13446q = recyclerView.getContext();
        }
        ItemTouchHelper itemTouchHelper = this.f13451v;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(recyclerView);
        }
    }

    @NotNull
    public final List<Object> p() {
        return this.C;
    }

    @NotNull
    public final Map<KType, Function2<Object, Integer, Integer>> q() {
        return this.f13448s;
    }

    public final <M> M r(@IntRange(from = 0) int i10) {
        if (A(i10)) {
            return (M) this.C.get(i10);
        }
        if (z(i10)) {
            return (M) this.D.get((i10 - o()) - s());
        }
        List<Object> u10 = u();
        Intrinsics.checkNotNull(u10);
        return (M) u10.get(i10 - o());
    }

    public final int s() {
        List<Object> u10 = u();
        if (u10 == null) {
            return 0;
        }
        return u10.size();
    }

    public final int t() {
        return this.f13440k;
    }

    @Nullable
    public final List<Object> u() {
        return this.E;
    }

    @NotNull
    public final List<b> v() {
        return this.f13439j;
    }

    @Nullable
    public final m1.e w() {
        return null;
    }

    @Nullable
    public final RecyclerView x() {
        return this.f13438i;
    }

    @NotNull
    public final Map<KType, Function2<Object, Integer, Integer>> y() {
        return this.f13447r;
    }

    public final boolean z(@IntRange(from = 0) int i10) {
        if (m() > 0 && i10 >= o() + s() && i10 < getItemCount()) {
            return true;
        }
        return false;
    }

    /* compiled from: BindingAdapter.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class BindingViewHolder extends RecyclerView.ViewHolder {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private Context f13456c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final BindingAdapter f13457d;

        /* renamed from: e  reason: collision with root package name */
        private Object f13458e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private ViewBinding f13459f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ BindingAdapter f13460g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BindingViewHolder(@NotNull BindingAdapter this$0, View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.f13460g = this$0;
            Context context = this$0.f13446q;
            Intrinsics.checkNotNull(context);
            this.f13456c = context;
            this.f13457d = this$0;
            for (final Map.Entry entry : this$0.f13449t.entrySet()) {
                View findViewById = this.itemView.findViewById(((Number) entry.getKey()).intValue());
                if (findViewById != null) {
                    if (((Boolean) ((Pair) entry.getValue()).f()).booleanValue()) {
                        final BindingAdapter bindingAdapter = this.f13460g;
                        findViewById.setOnClickListener(new View.OnClickListener() { // from class: j1.a
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                BindingAdapter.BindingViewHolder.e(entry, bindingAdapter, this, view);
                            }
                        });
                    } else {
                        long l10 = this.f13460g.l();
                        final BindingAdapter bindingAdapter2 = this.f13460g;
                        d.a(findViewById, l10, new Function1<View, Unit>() { // from class: com.drake.brv.BindingAdapter.BindingViewHolder.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                                invoke2(view);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull View setOnDebounceClickListener) {
                                Intrinsics.checkNotNullParameter(setOnDebounceClickListener, "$this$setOnDebounceClickListener");
                                Function2<BindingViewHolder, Integer, Unit> e10 = entry.getValue().e();
                                if (e10 == null) {
                                    e10 = bindingAdapter2.f13444o;
                                }
                                if (e10 == null) {
                                    return;
                                }
                                e10.invoke(this, Integer.valueOf(setOnDebounceClickListener.getId()));
                            }
                        });
                    }
                }
            }
            for (final Map.Entry entry2 : this.f13460g.f13450u.entrySet()) {
                View findViewById2 = this.itemView.findViewById(((Number) entry2.getKey()).intValue());
                if (findViewById2 != null) {
                    final BindingAdapter bindingAdapter3 = this.f13460g;
                    findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: j1.b
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean f10;
                            f10 = BindingAdapter.BindingViewHolder.f(entry2, bindingAdapter3, this, view);
                            return f10;
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(Map.Entry clickListener, BindingAdapter this$0, BindingViewHolder this$1, View view) {
            Intrinsics.checkNotNullParameter(clickListener, "$clickListener");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Function2 function2 = (Function2) ((Pair) clickListener.getValue()).e();
            if (function2 == null) {
                function2 = this$0.f13444o;
            }
            if (function2 != null) {
                function2.invoke(this$1, Integer.valueOf(view.getId()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean f(Map.Entry longClickListener, BindingAdapter this$0, BindingViewHolder this$1, View view) {
            Intrinsics.checkNotNullParameter(longClickListener, "$longClickListener");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Function2 function2 = (Function2) longClickListener.getValue();
            if (function2 == null) {
                function2 = this$0.f13445p;
            }
            if (function2 != null) {
                function2.invoke(this$1, Integer.valueOf(view.getId()));
                return true;
            }
            return true;
        }

        public final void g(@NotNull Object model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.f13458e = model;
            BindingAdapter bindingAdapter = this.f13460g;
            for (b bVar : this.f13460g.v()) {
                RecyclerView x10 = bindingAdapter.x();
                Intrinsics.checkNotNull(x10);
                bVar.a(x10, h(), this, getAdapterPosition());
            }
            if (model instanceof f) {
                ((f) model).a(k());
            }
            if (model instanceof l1.b) {
                ((l1.b) model).a(this);
            }
            Function1 function1 = this.f13460g.f13442m;
            if (function1 != null) {
                function1.invoke(this);
            }
            ViewBinding viewBinding = this.f13459f;
            if (BindingAdapter.K.b() && (viewBinding instanceof ViewDataBinding)) {
                try {
                    ((ViewDataBinding) viewBinding).setVariable(this.f13460g.t(), model);
                    ((ViewDataBinding) viewBinding).executePendingBindings();
                } catch (Exception e10) {
                    Log.e(BindingViewHolder.class.getSimpleName(), "DataBinding type mismatch (" + ((Object) this.f13456c.getResources().getResourceEntryName(getItemViewType())) + ".xml:1)", e10);
                }
            }
        }

        @NotNull
        public final BindingAdapter h() {
            return this.f13457d;
        }

        @NotNull
        public final Context i() {
            return this.f13456c;
        }

        public final <M> M j() {
            return (M) m();
        }

        public final int k() {
            return getLayoutPosition() - this.f13460g.o();
        }

        @Nullable
        public final ViewBinding l() {
            return this.f13459f;
        }

        @NotNull
        public final Object m() {
            Object obj = this.f13458e;
            if (obj != null) {
                return obj;
            }
            Intrinsics.throwUninitializedPropertyAccessException("_data");
            return Unit.f60915a;
        }

        public final void n(@Nullable ViewBinding viewBinding) {
            this.f13459f = viewBinding;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BindingViewHolder(@NotNull BindingAdapter this$0, ViewDataBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.f13460g = this$0;
            Context context = this$0.f13446q;
            Intrinsics.checkNotNull(context);
            this.f13456c = context;
            this.f13457d = this$0;
            for (final Map.Entry entry : this$0.f13449t.entrySet()) {
                View findViewById = this.itemView.findViewById(((Number) entry.getKey()).intValue());
                if (findViewById != null) {
                    if (((Boolean) ((Pair) entry.getValue()).f()).booleanValue()) {
                        final BindingAdapter bindingAdapter = this.f13460g;
                        findViewById.setOnClickListener(new View.OnClickListener() { // from class: j1.a
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                BindingAdapter.BindingViewHolder.e(entry, bindingAdapter, this, view);
                            }
                        });
                    } else {
                        long l10 = this.f13460g.l();
                        final BindingAdapter bindingAdapter2 = this.f13460g;
                        d.a(findViewById, l10, new Function1<View, Unit>() { // from class: com.drake.brv.BindingAdapter.BindingViewHolder.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                                invoke2(view);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull View setOnDebounceClickListener) {
                                Intrinsics.checkNotNullParameter(setOnDebounceClickListener, "$this$setOnDebounceClickListener");
                                Function2<BindingViewHolder, Integer, Unit> e10 = entry.getValue().e();
                                if (e10 == null) {
                                    e10 = bindingAdapter2.f13444o;
                                }
                                if (e10 == null) {
                                    return;
                                }
                                e10.invoke(this, Integer.valueOf(setOnDebounceClickListener.getId()));
                            }
                        });
                    }
                }
            }
            for (final Map.Entry entry2 : this.f13460g.f13450u.entrySet()) {
                View findViewById2 = this.itemView.findViewById(((Number) entry2.getKey()).intValue());
                if (findViewById2 != null) {
                    final BindingAdapter bindingAdapter3 = this.f13460g;
                    findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: j1.b
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view) {
                            boolean f10;
                            f10 = BindingAdapter.BindingViewHolder.f(entry2, bindingAdapter3, this, view);
                            return f10;
                        }
                    });
                }
            }
            this.f13459f = viewBinding;
        }
    }
}
