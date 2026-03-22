package com.startshorts.androidplayer.ui.view.search;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.transition.TransitionManager;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.bean.search.YouMightLikeKey;
import com.startshorts.androidplayer.databinding.ItemYouMightLikeKeywordBinding;
import com.startshorts.androidplayer.databinding.ViewYouMightLikeBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.search.YouMightLikeView;
import com.startshorts.androidplayer.viewmodel.search.SearchHistoryViewModel;
import com.startshorts.androidplayer.viewmodel.search.b;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: YouMightLikeView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nYouMightLikeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1#2:138\n1872#3,3:139\n*S KotlinDebug\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView\n*L\n88#1:139,3\n*E\n"})
/* loaded from: classes7.dex */
public final class YouMightLikeView extends ConstraintLayout {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f47816d = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private SearchHistoryViewModel f47817a;

    /* renamed from: b  reason: collision with root package name */
    public ViewYouMightLikeBinding f47818b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<YouMightLikeKey> f47819c;

    /* compiled from: YouMightLikeView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: YouMightLikeView.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nYouMightLikeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView$addDataToFlexLayout$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1872#2,3:138\n*S KotlinDebug\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView$addDataToFlexLayout$2\n*L\n117#1:138,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<YouMightLikeKey> f47821b;

        b(List<YouMightLikeKey> list) {
            this.f47821b = list;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int b10;
            YouMightLikeView.this.getBinding().f41443b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            List<com.google.android.flexbox.b> flexLines = YouMightLikeView.this.getBinding().f41443b.getFlexLines();
            int i10 = 0;
            if (flexLines.size() >= 2) {
                b10 = flexLines.get(0).b() + flexLines.get(1).b();
            } else {
                b10 = flexLines.get(0).b();
            }
            for (Object obj : this.f47821b) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                YouMightLikeKey youMightLikeKey = (YouMightLikeKey) obj;
                if (i10 < b10) {
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("content", youMightLikeKey.getHotName());
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "search_hot_show", bundle, 0L, 4, null);
                }
                i10 = i11;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public YouMightLikeView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(YouMightLikeView youMightLikeView, YouMightLikeKey youMightLikeKey, View it) {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.search.b> A;
        Intrinsics.checkNotNullParameter(it, "it");
        SearchHistoryViewModel searchHistoryViewModel = youMightLikeView.f47817a;
        if (searchHistoryViewModel != null && (A = searchHistoryViewModel.A()) != null) {
            String hotName = youMightLikeKey.getHotName();
            if (hotName == null) {
                hotName = "";
            }
            A.setValue(new b.c(hotName));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(YouMightLikeView youMightLikeView, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        youMightLikeView.x(it);
        youMightLikeView.w();
        return Unit.f60915a;
    }

    private final void x(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ROTATION, 0.0f, 360.0f);
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.start();
    }

    @NotNull
    public final ViewYouMightLikeBinding getBinding() {
        ViewYouMightLikeBinding viewYouMightLikeBinding = this.f47818b;
        if (viewYouMightLikeBinding != null) {
            return viewYouMightLikeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final List<YouMightLikeKey> getMList() {
        return this.f47819c;
    }

    public final void s() {
        getBinding().f41443b.removeAllViews();
        int i10 = 0;
        for (Object obj : this.f47819c) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            final YouMightLikeKey youMightLikeKey = (YouMightLikeKey) obj;
            FlexboxLayout flexboxLayout = getBinding().f41443b;
            ItemYouMightLikeKeywordBinding b10 = ItemYouMightLikeKeywordBinding.b(LayoutInflater.from(getContext()), null, false);
            b10.f41100c.setText(youMightLikeKey.getHotName());
            if (Intrinsics.areEqual(youMightLikeKey.isHot(), Boolean.TRUE)) {
                b0.l(b10.f41099b);
            } else {
                b0.d(b10.f41099b);
            }
            b10.f41100c.setContentDescription("history key word:" + youMightLikeKey);
            ConstraintLayout clRoot = b10.f41098a;
            Intrinsics.checkNotNullExpressionValue(clRoot, "clRoot");
            b0.c(clRoot, 0L, new Function1() { // from class: vj.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit t10;
                    t10 = YouMightLikeView.t(YouMightLikeView.this, youMightLikeKey, (View) obj2);
                    return t10;
                }
            }, 1, null);
            flexboxLayout.addView(b10.getRoot());
            i10 = i11;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f47819c);
        if (!arrayList.isEmpty()) {
            getBinding().f41443b.getViewTreeObserver().addOnGlobalLayoutListener(new b(arrayList));
        }
    }

    public final void setBinding(@NotNull ViewYouMightLikeBinding viewYouMightLikeBinding) {
        Intrinsics.checkNotNullParameter(viewYouMightLikeBinding, "<set-?>");
        this.f47818b = viewYouMightLikeBinding;
    }

    public final void setHotData(@NotNull List<YouMightLikeKey> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        TransitionManager.beginDelayedTransition(getBinding().f41443b);
        List w10 = CollectionsKt.w(list, Random.f61065a);
        this.f47819c.clear();
        this.f47819c.addAll(w10);
        s();
    }

    public final void u(@NotNull Context context) {
        SearchHistoryViewModel searchHistoryViewModel;
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ViewYouMightLikeBinding.b(LayoutInflater.from(context), this, true));
        AppCompatActivity a10 = d.a(context);
        if (a10 != null) {
            searchHistoryViewModel = (SearchHistoryViewModel) new ViewModelProvider(a10).get(SearchHistoryViewModel.class);
        } else {
            searchHistoryViewModel = null;
        }
        this.f47817a = searchHistoryViewModel;
        if (a10 == null || searchHistoryViewModel == null) {
            Logger logger = Logger.f41511a;
            logger.e("YouMightLikeView", "initView -> activity  ==" + a10 + " || searchHistoryViewModel == " + this.f47817a);
        }
        ImageView ivRefresh = getBinding().f41444c;
        Intrinsics.checkNotNullExpressionValue(ivRefresh, "ivRefresh");
        b0.c(ivRefresh, 0L, new Function1() { // from class: vj.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit v10;
                v10 = YouMightLikeView.v(YouMightLikeView.this, (View) obj);
                return v10;
            }
        }, 1, null);
    }

    public final void w() {
        setHotData(this.f47819c);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public YouMightLikeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouMightLikeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47819c = new ArrayList();
        u(context);
    }
}
