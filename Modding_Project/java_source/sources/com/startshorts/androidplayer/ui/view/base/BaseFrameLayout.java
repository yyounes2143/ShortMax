package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseFrameLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseFrameLayout extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f47083a = new a(null);

    /* compiled from: BaseFrameLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseFrameLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void d(AttributeSet attributeSet, int i10) {
        if (getLayoutResource() != 0) {
            LayoutInflater.from(getContext()).inflate(getLayoutResource(), this);
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        e(context, attributeSet, i10);
    }

    public final void b(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(getSTag(), error);
    }

    public final void c(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(getSTag(), info);
    }

    public abstract void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10);

    public abstract int getLayoutResource();

    @NotNull
    public String getSTag() {
        return "BaseFrameLayout";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        d(attributeSet, i10);
    }
}
