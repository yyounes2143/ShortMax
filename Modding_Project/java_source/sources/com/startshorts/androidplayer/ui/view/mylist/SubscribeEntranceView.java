package com.startshorts.androidplayer.ui.view.mylist;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: SubscribeEntranceView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubscribeEntranceView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f47475b;

    /* compiled from: SubscribeEntranceView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();
    }

    /* compiled from: SubscribeEntranceView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = SubscribeEntranceView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubscribeEntranceView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_mylist_subscribe_entrance;
    }

    @Nullable
    public final a getMListener() {
        return this.f47475b;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47475b = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        getRootView().setOnClickListener(new b());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubscribeEntranceView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribeEntranceView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
