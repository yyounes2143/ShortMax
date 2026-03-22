package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"ViewConstructor"})
/* loaded from: classes6.dex */
public final class b extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final n0 f34734a;

    /* renamed from: b  reason: collision with root package name */
    public final int f34735b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f34736c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public Function1<? super a.AbstractC0597a.c, Unit> f34737d;

    public /* synthetic */ b(n0 n0Var, Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(n0Var, context, (i11 & 4) != 0 ? null : attributeSet, (i11 & 8) != 0 ? 0 : i10);
    }

    public static final void a(b bVar, View view) {
        bVar.f34734a.a("https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html");
    }

    public static final void b(b bVar, String str, View view) {
        bVar.f34734a.a(str);
    }

    @VisibleForTesting
    @NotNull
    public final ImageButton getAdButton() {
        return this.f34736c;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            float f10 = getResources().getDisplayMetrics().density;
            int[] iArr = new int[2];
            this.f34736c.getLocationOnScreen(iArr);
            a.AbstractC0597a.c cVar = new a.AbstractC0597a.c(a.AbstractC0597a.c.EnumC0599a.f36609i, new a.AbstractC0597a.f(iArr[0] / f10, iArr[1] / f10), new a.AbstractC0597a.g(this.f34736c.getWidth() / f10, this.f34736c.getHeight() / f10));
            Function1<? super a.AbstractC0597a.c, Unit> function1 = this.f34737d;
            if (function1 != null) {
                function1.invoke(cVar);
            }
        }
    }

    public final void setOnButtonRenderedListener(@NotNull Function1<? super a.AbstractC0597a.c, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f34737d = listener;
    }

    public final void setPrivacyUrl(@NotNull final String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f34736c.setOnClickListener(new View.OnClickListener() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.b(b.this, url, view);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull n0 externalLinkHandler, @NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(context, "context");
        this.f34734a = externalLinkHandler;
        this.f34735b = 12;
        ImageButton imageButton = new ImageButton(context);
        imageButton.setLayoutParams(new FrameLayout.LayoutParams(k.a(12, context), k.a(12, context)));
        imageButton.setImageResource(com.moloco.sdk.o.f33600e);
        imageButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageButton.setClipToOutline(true);
        imageButton.setBackground(null);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.a(b.this, view);
            }
        });
        this.f34736c = imageButton;
        addView(imageButton);
        imageButton.setContentDescription("Ad Badge");
        imageButton.setTag("Ad Badge");
    }
}
