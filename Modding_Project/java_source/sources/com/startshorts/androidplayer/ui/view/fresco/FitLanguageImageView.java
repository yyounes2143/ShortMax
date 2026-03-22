package com.startshorts.androidplayer.ui.view.fresco;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import fk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FitLanguageImageView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FitLanguageImageView extends AppCompatImageView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FitLanguageImageView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void b() {
        if (v.f51778a.b()) {
            setScaleX(-1.0f);
        } else {
            setScaleX(1.0f);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FitLanguageImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ FitLanguageImageView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FitLanguageImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        b();
    }
}
