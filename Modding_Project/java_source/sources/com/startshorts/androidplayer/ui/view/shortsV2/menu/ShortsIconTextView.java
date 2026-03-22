package com.startshorts.androidplayer.ui.view.shortsV2.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.R$styleable;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsIconTextView;
import fk.w;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zj.a;
/* compiled from: ShortsIconTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsIconTextView extends BaseConstraintLayout implements a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47887b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47888c;

    /* renamed from: d  reason: collision with root package name */
    private int f47889d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ShortsEpisode f47890e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsIconTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ShortsIconTextView shortsIconTextView, String str) {
        BaseTextView baseTextView = shortsIconTextView.f47888c;
        if (baseTextView != null) {
            baseTextView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ShortsIconTextView shortsIconTextView, int i10) {
        ImageView imageView = shortsIconTextView.f47887b;
        if (imageView != null) {
            imageView.setImageResource(i10);
        }
    }

    public void A(@NotNull final String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        post(new Runnable() { // from class: zj.b
            @Override // java.lang.Runnable
            public final void run() {
                ShortsIconTextView.B(ShortsIconTextView.this, text);
            }
        });
    }

    @Override // zj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // zj.a
    public void e(@NotNull ShortsEpisode episode) {
        int i10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f47890e = episode;
        int i11 = this.f47889d;
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    y(R$drawable.ic_shorts_share);
                    String string = getContext().getString(R$string.shorts_fragment_share);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    A(string);
                    return;
                }
                return;
            }
            y(R$drawable.ic_shorts_list);
            String string2 = getContext().getString(R$string.shorts_fragment_list);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            A(string2);
            return;
        }
        if (episode.isCollected()) {
            i10 = R$drawable.ic_shorts_collected;
        } else {
            i10 = R$drawable.ic_shorts_uncollect;
        }
        y(i10);
        A(w.f51779a.a(episode.getCollectNum()));
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_shorts_icon_text;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47887b = (ImageView) findViewById(R$id.icon_iv);
        this.f47888c = (BaseTextView) findViewById(R$id.text_tv);
    }

    public int x() {
        return this.f47889d;
    }

    public void y(final int i10) {
        post(new Runnable() { // from class: zj.c
            @Override // java.lang.Runnable
            public final void run() {
                ShortsIconTextView.z(ShortsIconTextView.this, i10);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsIconTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsIconTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47889d = -1;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.ShortsIconTextView, i10, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47889d = obtainStyledAttributes.getInt(R$styleable.ShortsIconTextView_itv_type, -1);
        obtainStyledAttributes.recycle();
    }
}
