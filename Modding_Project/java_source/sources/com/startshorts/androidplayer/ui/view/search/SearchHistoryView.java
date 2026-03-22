package com.startshorts.androidplayer.ui.view.search;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.MaxLinesFlexboxLayout;
import com.startshorts.androidplayer.ui.view.search.SearchHistoryView;
import com.startshorts.androidplayer.viewmodel.search.SearchHistoryViewModel;
import com.startshorts.androidplayer.viewmodel.search.a;
import com.startshorts.androidplayer.viewmodel.search.b;
import jk.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchHistoryView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSearchHistoryView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHistoryView.kt\ncom/startshorts/androidplayer/ui/view/search/SearchHistoryView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1#2:138\n1863#3,2:139\n1863#3,2:141\n*S KotlinDebug\n*F\n+ 1 SearchHistoryView.kt\ncom/startshorts/androidplayer/ui/view/search/SearchHistoryView\n*L\n67#1:139,2\n82#1:141,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchHistoryView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f47798g = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f47799b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ImageView f47800c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private MaxLinesFlexboxLayout f47801d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private SearchHistoryViewModel f47802e;

    /* renamed from: f  reason: collision with root package name */
    private long f47803f;

    /* compiled from: SearchHistoryView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchHistoryView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f47804a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f47804a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f47804a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f47804a.invoke(obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchHistoryView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        SearchHistoryViewModel searchHistoryViewModel;
        MutableLiveData<com.startshorts.androidplayer.viewmodel.search.b> A;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        AppCompatActivity a10 = d.a(context);
        if (a10 != null) {
            searchHistoryViewModel = (SearchHistoryViewModel) new ViewModelProvider(a10).get(SearchHistoryViewModel.class);
        } else {
            searchHistoryViewModel = null;
        }
        this.f47802e = searchHistoryViewModel;
        if (a10 != null && searchHistoryViewModel != null) {
            if (searchHistoryViewModel != null && (A = searchHistoryViewModel.A()) != null) {
                A.observe(a10, new b(new Function1() { // from class: vj.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit B;
                        B = SearchHistoryView.B(SearchHistoryView.this, (com.startshorts.androidplayer.viewmodel.search.b) obj);
                        return B;
                    }
                }));
                return;
            }
            return;
        }
        r("initView -> activity  ==" + a10 + " || searchHistoryViewModel == " + this.f47802e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(final SearchHistoryView searchHistoryView, com.startshorts.androidplayer.viewmodel.search.b bVar) {
        if (bVar instanceof b.C0686b) {
            b.C0686b c0686b = (b.C0686b) bVar;
            if (!c0686b.a().isEmpty() && Math.abs(SystemClock.elapsedRealtime() - searchHistoryView.f47803f) >= 3000) {
                searchHistoryView.f47803f = SystemClock.elapsedRealtime();
                for (String str : c0686b.a()) {
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("content", str);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "search_history_show", bundle, 0L, 4, null);
                }
            }
            if (searchHistoryView.f47799b) {
                searchHistoryView.f47799b = false;
                searchHistoryView.G();
            }
            MaxLinesFlexboxLayout maxLinesFlexboxLayout = searchHistoryView.f47801d;
            if (maxLinesFlexboxLayout != null) {
                maxLinesFlexboxLayout.removeAllViews();
            }
            for (final String str2 : c0686b.a()) {
                MaxLinesFlexboxLayout maxLinesFlexboxLayout2 = searchHistoryView.f47801d;
                if (maxLinesFlexboxLayout2 != null) {
                    View inflate = LayoutInflater.from(searchHistoryView.getContext()).inflate(R$layout.item_search_history_keyword, (ViewGroup) null, false);
                    TextView textView = (TextView) inflate.findViewById(R$id.title_tv);
                    textView.setText(str2);
                    textView.setContentDescription("history key word:" + str2);
                    inflate.setOnClickListener(new View.OnClickListener() { // from class: vj.d
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SearchHistoryView.C(SearchHistoryView.this, str2, view);
                        }
                    });
                    maxLinesFlexboxLayout2.addView(inflate);
                }
            }
            searchHistoryView.post(new Runnable() { // from class: vj.e
                @Override // java.lang.Runnable
                public final void run() {
                    SearchHistoryView.D(SearchHistoryView.this);
                }
            });
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(SearchHistoryView searchHistoryView, String str, View view) {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.search.b> A;
        SearchHistoryViewModel searchHistoryViewModel = searchHistoryView.f47802e;
        if (searchHistoryViewModel != null && (A = searchHistoryViewModel.A()) != null) {
            A.setValue(new b.d(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(SearchHistoryView searchHistoryView) {
        MaxLinesFlexboxLayout maxLinesFlexboxLayout = searchHistoryView.f47801d;
        if (maxLinesFlexboxLayout != null && maxLinesFlexboxLayout.C()) {
            ImageView imageView = searchHistoryView.f47800c;
            if (imageView != null) {
                imageView.setVisibility(8);
                return;
            }
            return;
        }
        ImageView imageView2 = searchHistoryView.f47800c;
        if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(SearchHistoryView searchHistoryView, View view) {
        searchHistoryView.f47799b = !searchHistoryView.f47799b;
        searchHistoryView.G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(SearchHistoryView searchHistoryView, View view) {
        SearchHistoryViewModel searchHistoryViewModel = searchHistoryView.f47802e;
        if (searchHistoryViewModel != null) {
            searchHistoryViewModel.B(a.d.f49311a);
        }
    }

    private final void G() {
        s("invalidateExpand -> mExpand = " + this.f47799b);
        if (this.f47799b) {
            ImageView imageView = this.f47800c;
            if (imageView != null) {
                imageView.setImageResource(R$drawable.ic_search_history_shrink);
            }
            MaxLinesFlexboxLayout maxLinesFlexboxLayout = this.f47801d;
            if (maxLinesFlexboxLayout != null) {
                maxLinesFlexboxLayout.B(Integer.MAX_VALUE);
                return;
            }
            return;
        }
        ImageView imageView2 = this.f47800c;
        if (imageView2 != null) {
            imageView2.setImageResource(R$drawable.ic_search_history_expand);
        }
        MaxLinesFlexboxLayout maxLinesFlexboxLayout2 = this.f47801d;
        if (maxLinesFlexboxLayout2 != null) {
            maxLinesFlexboxLayout2.B(1);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_search_history;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "SearchHistoryView";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f47799b) {
            this.f47799b = false;
            G();
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47799b = false;
        MaxLinesFlexboxLayout maxLinesFlexboxLayout = (MaxLinesFlexboxLayout) findViewById(R$id.search_history_flexbox_layout);
        this.f47801d = maxLinesFlexboxLayout;
        if (maxLinesFlexboxLayout != null) {
            maxLinesFlexboxLayout.B(1);
        }
        ImageView imageView = (ImageView) findViewById(R$id.search_history_expand_iv);
        this.f47800c = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: vj.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchHistoryView.E(SearchHistoryView.this, view);
                }
            });
        }
        findViewById(R$id.history_clear_iv).setOnClickListener(new View.OnClickListener() { // from class: vj.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchHistoryView.F(SearchHistoryView.this, view);
            }
        });
        A();
    }
}
