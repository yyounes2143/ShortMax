package com.startshorts.androidplayer.ui.view.shortsV2.menu;

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
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagClickableBinding;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagNormalBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsTagView;
import fk.v;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ShortsTagView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShortsTagView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsTagView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,184:1\n774#2:185\n865#2,2:186\n1872#2,3:188\n46#3:191\n1328#4,3:192\n*S KotlinDebug\n*F\n+ 1 ShortsTagView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView\n*L\n60#1:185\n60#1:186,2\n72#1:188,3\n90#1:191\n95#1:192,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ShortsTagView extends BaseConstraintLayout implements zj.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f47891b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f47892c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private FlexboxLayout f47893d;

    /* compiled from: ShortsTagView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(@NotNull ShortsLabel shortsLabel);
    }

    /* compiled from: ShortsTagView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ShortsLabel f47895f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ShortsLabel shortsLabel) {
            super(0L, 1, null);
            this.f47895f = shortsLabel;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = ShortsTagView.this.getMListener();
            if (mListener != null) {
                mListener.a(this.f47895f);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsTagView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(FlexboxLayout flexboxLayout, ShortsTagView shortsTagView, boolean z10) {
        boolean z11;
        if (flexboxLayout.getChildCount() == 0) {
            shortsTagView.a(8);
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
            boolean z12 = true;
            if (view2.getTop() > top) {
                z11 = true;
            } else {
                z11 = false;
            }
            z12 = (baseTextView == null || !baseTextView.c()) ? false : false;
            if (!z11 && !z12) {
                b0.l(view2);
            } else if (z10) {
                b0.d(view2);
            } else if (i10 == 0) {
                shortsTagView.a(8);
                return;
            } else {
                b0.d(view2);
            }
            i10 = i11;
        }
    }

    @Override // zj.a
    public void a(int i10) {
        if (ABTestFactory.f42224a.m1().isEnable().invoke().booleanValue()) {
            setVisibility(i10);
        } else {
            setVisibility(8);
        }
    }

    @Override // zj.a
    public void e(@NotNull ShortsEpisode episode) {
        final boolean z10;
        ArrayList arrayList;
        boolean z11;
        Intrinsics.checkNotNullParameter(episode, "episode");
        if (ABTestFactory.f42224a.m1().isEnable().invoke().booleanValue()) {
            Logger.f41511a.h(this.f47891b, "ShortsTagView updateEpisode");
            a(0);
            final FlexboxLayout flexboxLayout = this.f47893d;
            if (flexboxLayout != null) {
                flexboxLayout.removeAllViews();
                LayoutInflater from = LayoutInflater.from(flexboxLayout.getContext());
                String cornerLabelText = episode.getCornerLabelText();
                int cornerLabelStyle = episode.getCornerLabelStyle();
                if (cornerLabelStyle > 0 && cornerLabelText != null && !StringsKt.t0(cornerLabelText)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                List<ShortsLabel> labelList = episode.getLabelList();
                if (labelList != null) {
                    arrayList = new ArrayList();
                    for (Object obj : labelList) {
                        String labelName = ((ShortsLabel) obj).getLabelName();
                        if (labelName != null && !StringsKt.t0(labelName)) {
                            z11 = false;
                        } else {
                            z11 = true;
                        }
                        if (!z11) {
                            arrayList.add(obj);
                        }
                    }
                } else {
                    arrayList = null;
                }
                if (!z10 && (arrayList == null || arrayList.isEmpty())) {
                    a(8);
                    return;
                }
                b0.l(flexboxLayout);
                if (z10) {
                    ViewShortsImmersionTagNormalBinding b10 = ViewShortsImmersionTagNormalBinding.b(from, this.f47893d, true);
                    Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                    BaseTextView tvTag = b10.f41364a;
                    Intrinsics.checkNotNullExpressionValue(tvTag, "tvTag");
                    setTextViewLabelStyle(tvTag, cornerLabelStyle, cornerLabelText);
                }
                if (arrayList != null) {
                    int i10 = 0;
                    for (Object obj2 : arrayList) {
                        int i11 = i10 + 1;
                        if (i10 < 0) {
                            CollectionsKt.y();
                        }
                        ShortsLabel shortsLabel = (ShortsLabel) obj2;
                        ViewShortsImmersionTagClickableBinding b11 = ViewShortsImmersionTagClickableBinding.b(from, this.f47893d, true);
                        Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
                        if (!z10 && i10 == 0) {
                            ViewGroup.LayoutParams layoutParams = b11.f41360a.getLayoutParams();
                            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            marginLayoutParams.setMarginStart(0);
                            b11.f41360a.setLayoutParams(marginLayoutParams);
                        }
                        b11.f41360a.setText(shortsLabel.getLabelName());
                        b11.f41360a.setOnClickListener(new b(shortsLabel));
                        i10 = i11;
                    }
                }
                flexboxLayout.post(new Runnable() { // from class: zj.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShortsTagView.w(FlexboxLayout.this, this, z10);
                    }
                });
                return;
            }
            return;
        }
        a(8);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_shorts_tag;
    }

    @Nullable
    public final a getMListener() {
        return this.f47892c;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47892c = aVar;
    }

    public final void setTextViewLabelStyle(@NotNull TextView view, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 5) {
                    if (i10 == 6) {
                        view.setTextColor(view.getContext().getColor(R$color.drama_member_only_label));
                        view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_shorts_member_only_label), (Drawable) null, (Drawable) null, (Drawable) null);
                        setTextLabelPaddingWithImg(view);
                        view.setBackgroundResource(R$drawable.bg_short_label_style_member_only);
                    }
                } else {
                    view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                    setTextLabelPadding(view);
                    view.setBackgroundResource(R$drawable.bg_shorts_label_style_new);
                }
            } else {
                view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                setTextLabelPadding(view);
                view.setBackgroundResource(R$drawable.bg_shorts_label_style_hot);
            }
        } else {
            view.setTextColor(view.getContext().getColor(R$color.color_common_white));
            view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_shorts_excusive_label), (Drawable) null, (Drawable) null, (Drawable) null);
            setTextLabelPaddingWithImg(view);
            view.setBackgroundResource(R$drawable.bg_shorts_label_style_exclusive);
        }
        view.setText(str);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47893d = (FlexboxLayout) findViewById(R$id.flexboxLayout);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsTagView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsTagView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47891b = "ShortsTagView";
    }
}
