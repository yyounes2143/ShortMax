package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagClickableBinding;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagNormalBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionNameTagView;
import fk.v;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.g;
import jk.y;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImmersionNameTagView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionNameTagView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionNameTagView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n46#2:263\n1328#3,3:264\n774#4:267\n865#4,2:268\n1872#4,3:270\n*S KotlinDebug\n*F\n+ 1 ImmersionNameTagView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView\n*L\n123#1:263\n128#1:264,3\n93#1:267\n93#1:268,2\n105#1:270,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionNameTagView extends BaseConstraintLayout implements nj.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f47349b;

    /* renamed from: c  reason: collision with root package name */
    private final int f47350c;

    /* renamed from: d  reason: collision with root package name */
    private final int f47351d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a f47352e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseTextView f47353f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private FlexboxLayout f47354g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private BaseTextView f47355h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseTextView f47356i;

    /* compiled from: ImmersionNameTagView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(@NotNull ShortsLabel shortsLabel);
    }

    /* compiled from: ImmersionNameTagView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ BaseTextView f47358f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(BaseTextView baseTextView) {
            super(0L, 1, null);
            this.f47358f = baseTextView;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            BaseTextView baseTextView = ImmersionNameTagView.this.f47355h;
            if (baseTextView == null) {
                return;
            }
            if (baseTextView.getMaxLines() == ImmersionNameTagView.this.f47350c) {
                baseTextView.setMaxLines(ImmersionNameTagView.this.f47351d);
                BaseTextView baseTextView2 = this.f47358f;
                baseTextView2.setText(baseTextView2.getContext().getString(R$string.shorts_fragment_less));
                return;
            }
            baseTextView.setMaxLines(ImmersionNameTagView.this.f47350c);
            BaseTextView baseTextView3 = this.f47358f;
            baseTextView3.setText(baseTextView3.getContext().getString(R$string.shorts_fragment_more));
        }
    }

    /* compiled from: ImmersionNameTagView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ShortsLabel f47360f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ShortsLabel shortsLabel) {
            super(0L, 1, null);
            this.f47360f = shortsLabel;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = ImmersionNameTagView.this.getMListener();
            if (mListener != null) {
                mListener.a(this.f47360f);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionNameTagView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void C() {
        BaseTextView baseTextView = this.f47356i;
        if (baseTextView != null) {
            baseTextView.setOnClickListener(null);
            baseTextView.setVisibility(8);
        }
    }

    private final void D() {
        BaseTextView baseTextView = this.f47356i;
        if (baseTextView != null) {
            baseTextView.setVisibility(0);
            baseTextView.setText(baseTextView.getContext().getString(R$string.shorts_fragment_more));
            baseTextView.setOnClickListener(new b(baseTextView));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(final ImmersionNameTagView immersionNameTagView, boolean z10, BaseEpisode baseEpisode) {
        boolean z11;
        boolean z12;
        ArrayList arrayList;
        boolean z13;
        BaseTextView baseTextView;
        String string;
        if (ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue()) {
            immersionNameTagView.a(0);
            Logger logger = Logger.f41511a;
            String str = immersionNameTagView.f47349b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ImmersionShortNameView updateEpisode ");
            sb2.append(!z10);
            logger.h(str, sb2.toString());
            String checkedShortPlayName = baseEpisode.getCheckedShortPlayName();
            if (checkedShortPlayName != null && checkedShortPlayName.length() != 0 && (baseTextView = immersionNameTagView.f47353f) != null) {
                if (baseEpisode.isTrailer()) {
                    string = baseTextView.getContext().getString(R$string.shorts_fragment_trailer);
                } else {
                    string = baseTextView.getContext().getString(R$string.common_current_ep, String.valueOf(baseEpisode.getEpisodeNum()));
                }
                String str2 = string;
                Intrinsics.checkNotNull(str2);
                y.f(baseTextView, checkedShortPlayName, "...", str2, 0, 16, null);
            }
            final FlexboxLayout flexboxLayout = immersionNameTagView.f47354g;
            if (flexboxLayout != null) {
                flexboxLayout.removeAllViews();
                LayoutInflater from = LayoutInflater.from(flexboxLayout.getContext());
                String cornerLabelText = baseEpisode.getCornerLabelText();
                int cornerLabelStyle = baseEpisode.getCornerLabelStyle();
                if (cornerLabelStyle == 6) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                if (z11 && cornerLabelText != null && !StringsKt.t0(cornerLabelText)) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                booleanRef.element = z12;
                List<ShortsLabel> labelList = baseEpisode.getLabelList();
                if (labelList != null) {
                    arrayList = new ArrayList();
                    for (Object obj : labelList) {
                        String labelName = ((ShortsLabel) obj).getLabelName();
                        if (labelName != null && !StringsKt.t0(labelName)) {
                            z13 = false;
                        } else {
                            z13 = true;
                        }
                        if (!z13) {
                            arrayList.add(obj);
                        }
                    }
                } else {
                    arrayList = null;
                }
                if (!booleanRef.element && (arrayList == null || arrayList.isEmpty())) {
                    immersionNameTagView.a(8);
                } else {
                    b0.l(flexboxLayout);
                    if (booleanRef.element) {
                        ViewShortsImmersionTagNormalBinding b10 = ViewShortsImmersionTagNormalBinding.b(from, immersionNameTagView.f47354g, true);
                        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                        BaseTextView tvTag = b10.f41364a;
                        Intrinsics.checkNotNullExpressionValue(tvTag, "tvTag");
                        immersionNameTagView.setTextViewLabelStyle(tvTag, cornerLabelStyle, cornerLabelText);
                    }
                    if (arrayList != null) {
                        int i10 = 0;
                        for (Object obj2 : arrayList) {
                            int i11 = i10 + 1;
                            if (i10 < 0) {
                                CollectionsKt.y();
                            }
                            ShortsLabel shortsLabel = (ShortsLabel) obj2;
                            ViewShortsImmersionTagClickableBinding b11 = ViewShortsImmersionTagClickableBinding.b(from, immersionNameTagView.f47354g, true);
                            Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
                            if (!booleanRef.element && i10 == 0) {
                                ViewGroup.LayoutParams layoutParams = b11.f41360a.getLayoutParams();
                                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                                marginLayoutParams.setMarginStart(0);
                                b11.f41360a.setLayoutParams(marginLayoutParams);
                            }
                            b11.f41360a.setText(shortsLabel.getLabelName());
                            b11.f41360a.setOnClickListener(new c(shortsLabel));
                            i10 = i11;
                        }
                    }
                    flexboxLayout.post(new Runnable() { // from class: nj.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImmersionNameTagView.F(FlexboxLayout.this, immersionNameTagView, booleanRef);
                        }
                    });
                }
            }
            final BaseTextView baseTextView2 = immersionNameTagView.f47355h;
            if (baseTextView2 != null) {
                String summary = baseEpisode.getSummary();
                if (summary != null && summary.length() != 0) {
                    b0.l(baseTextView2);
                    baseTextView2.setMaxLines(immersionNameTagView.f47350c);
                    baseTextView2.setText(baseEpisode.getSummary());
                    baseTextView2.post(new Runnable() { // from class: nj.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImmersionNameTagView.G(BaseTextView.this, immersionNameTagView);
                        }
                    });
                    return;
                }
                b0.d(baseTextView2);
                immersionNameTagView.C();
                return;
            }
            return;
        }
        immersionNameTagView.a(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(FlexboxLayout flexboxLayout, ImmersionNameTagView immersionNameTagView, Ref.BooleanRef booleanRef) {
        boolean z10;
        if (flexboxLayout.getChildCount() == 0) {
            immersionNameTagView.a(8);
            return;
        }
        int top = flexboxLayout.getChildAt(0).getTop();
        int i10 = 0;
        for (View view : ViewGroupKt.getChildren(flexboxLayout)) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            View view2 = view;
            BaseTextView baseTextView = (BaseTextView) view2.findViewById(R$id.tv_tag);
            boolean z11 = true;
            if (view2.getTop() > top) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = (baseTextView == null || !baseTextView.c()) ? false : false;
            if (!z10 && !z11) {
                b0.l(view2);
            } else if (booleanRef.element) {
                b0.d(view2);
            } else if (i10 == 0) {
                immersionNameTagView.a(8);
                return;
            } else {
                b0.d(view2);
            }
            i10 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(BaseTextView baseTextView, ImmersionNameTagView immersionNameTagView) {
        if (baseTextView.getLineCount() > 1 && baseTextView.c()) {
            immersionNameTagView.D();
        } else {
            immersionNameTagView.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(ImmersionNameTagView immersionNameTagView) {
        immersionNameTagView.setVisibility(0);
    }

    private final void setTextLabelPadding(TextView textView) {
        textView.setPadding(g.a(4.0f), 0, g.a(4.0f), 0);
    }

    private final void setTextLabelPaddingWithImg(TextView textView) {
        if (v.f51778a.b()) {
            textView.setPadding(g.a(4.0f), 0, 0, 0);
        } else {
            textView.setPadding(0, 0, g.a(4.0f), 0);
        }
        textView.setCompoundDrawablePadding(g.a(2.0f));
    }

    @Override // nj.a
    public void a(int i10) {
        if (ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue()) {
            if (getVisibility() != i10) {
                if (i10 == 0) {
                    post(new Runnable() { // from class: nj.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImmersionNameTagView.H(ImmersionNameTagView.this);
                        }
                    });
                    return;
                } else {
                    setVisibility(i10);
                    return;
                }
            }
            return;
        }
        setVisibility(8);
    }

    @Override // nj.a
    public boolean f() {
        return ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue();
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        if (ABTestFactory.f42224a.Z0().isEnable().invoke().booleanValue()) {
            if (!z10) {
                a(0);
                return;
            }
            return;
        }
        a(8);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_name_tag;
    }

    @Nullable
    public final a getMListener() {
        return this.f47352e;
    }

    @Override // nj.a
    public void k(@NotNull final BaseEpisode episode, final boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        post(new Runnable() { // from class: nj.h
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionNameTagView.E(ImmersionNameTagView.this, z10, episode);
            }
        });
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47352e = aVar;
    }

    public final void setTextViewLabelStyle(@NotNull TextView view, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        if (i10 == 6) {
            view.setTextColor(view.getContext().getColor(R$color.drama_member_only_label));
            view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_shorts_member_only_label), (Drawable) null, (Drawable) null, (Drawable) null);
            setTextLabelPaddingWithImg(view);
            view.setBackgroundResource(R$drawable.bg_short_label_style_member_only);
        }
        view.setText(str);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47353f = (BaseTextView) findViewById(R$id.shorts_name_tv);
        this.f47354g = (FlexboxLayout) findViewById(R$id.flexboxLayout);
        this.f47355h = (BaseTextView) findViewById(R$id.summary_tv);
        this.f47356i = (BaseTextView) findViewById(R$id.expand_tv);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionNameTagView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionNameTagView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47349b = "ImmersionShortNameView";
        this.f47350c = 2;
        this.f47351d = 100;
    }
}
