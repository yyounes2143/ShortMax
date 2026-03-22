package com.startshorts.androidplayer.ui.view.shortsV2.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.R$styleable;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsTextView;
import fk.v;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ShortsTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsTextView extends BaseTextView implements zj.a {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f47896c = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private int f47897b;

    /* compiled from: ShortsTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ShortsTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ShortsTextView g10 = ShortsTextView.this.g(2);
            if (g10 == null) {
                return;
            }
            if (g10.getMaxLines() == 2) {
                g10.setMaxLines(100);
                ShortsTextView shortsTextView = ShortsTextView.this;
                shortsTextView.setText(shortsTextView.getContext().getString(R$string.shorts_fragment_less));
                return;
            }
            g10.setMaxLines(2);
            ShortsTextView shortsTextView2 = ShortsTextView.this;
            shortsTextView2.setText(shortsTextView2.getContext().getString(R$string.shorts_fragment_more));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortsTextView g(int i10) {
        ViewGroup viewGroup;
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt instanceof ShortsTextView) {
                    ShortsTextView shortsTextView = (ShortsTextView) childAt;
                    if (shortsTextView.j() == i10) {
                        return shortsTextView;
                    }
                }
            }
        }
        return null;
    }

    private final void h() {
        ShortsTextView g10 = g(3);
        if (g10 != null) {
            g10.setOnClickListener(null);
            g10.a(8);
        }
    }

    private final void i() {
        ShortsTextView g10 = g(3);
        if (g10 != null) {
            g10.a(0);
            g10.setText(g10.getContext().getString(R$string.shorts_fragment_more));
            g10.setOnClickListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(ShortsTextView shortsTextView) {
        if (shortsTextView.getLineCount() > 1 && shortsTextView.c()) {
            shortsTextView.i();
        } else {
            shortsTextView.h();
        }
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

    @Override // zj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // zj.a
    public void e(@NotNull ShortsEpisode episode) {
        String str;
        Intrinsics.checkNotNullParameter(episode, "episode");
        int i10 = this.f47897b;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 == 5) {
                        if (episode.isTrailer() && Intrinsics.areEqual(episode.isRelease(), Boolean.TRUE)) {
                            a(0);
                            return;
                        } else {
                            a(8);
                            return;
                        }
                    }
                    return;
                }
                ShortsTextView shortsTextView = (ShortsTextView) findViewById(R$id.tvLabelStyle);
                if (shortsTextView != null) {
                    if (!ABTestFactory.f42224a.m1().isEnable().invoke().booleanValue()) {
                        String cornerLabelText = episode.getCornerLabelText();
                        int cornerLabelStyle = episode.getCornerLabelStyle();
                        if (cornerLabelStyle == 6 && !TextUtils.isEmpty(cornerLabelText)) {
                            setTextViewLabelStyle(shortsTextView, cornerLabelStyle, cornerLabelText);
                            b0.l(shortsTextView);
                            return;
                        }
                        b0.d(shortsTextView);
                        return;
                    }
                    b0.d(shortsTextView);
                    return;
                }
                return;
            }
            String summary = episode.getSummary();
            if (summary != null && summary.length() != 0) {
                a(0);
                setMaxLines(2);
                setText(episode.getSummary());
                post(new Runnable() { // from class: zj.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShortsTextView.k(ShortsTextView.this);
                    }
                });
                return;
            }
            a(8);
            h();
            return;
        }
        String shortPlayName = episode.getShortPlayName();
        if (episode.isTrailer()) {
            if (shortPlayName != null) {
                String str2 = shortPlayName + ' ';
                if (str2 != null) {
                    str = str2 + getContext().getString(R$string.shorts_fragment_trailer);
                    shortPlayName = str;
                }
            }
            str = null;
            shortPlayName = str;
        }
        ShortsTextView shortsTextView2 = (ShortsTextView) findViewById(R$id.shorts_name_tv);
        if (shortsTextView2 != null) {
            shortsTextView2.setText(shortPlayName);
        }
    }

    public int j() {
        return this.f47897b;
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47897b = -1;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.ShortsTextView, i10, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47897b = obtainStyledAttributes.getInt(R$styleable.ShortsTextView_tv_type, -1);
        obtainStyledAttributes.recycle();
    }
}
