package com.moloco.sdk.internal.publisher.nativead.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.w;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@SuppressLint({"ViewConstructor"})
/* loaded from: classes6.dex */
public final class c extends RelativeLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f32908a = new a(null);

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public /* synthetic */ c(Context context, Uri uri, g0 g0Var, Function0 function0, n0 n0Var, r rVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, uri, g0Var, function0, (i10 & 16) != 0 ? b.h.f33655a.f() : n0Var, (i10 & 32) != 0 ? w.a() : rVar);
    }

    public static final Unit a(r rVar, a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        rVar.h(button);
        return Unit.f60915a;
    }

    public static final void b(Function0 function0, View view) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context, @NotNull Uri imageUri, @NotNull g0 watermark, @Nullable final Function0<Unit> function0, @NotNull n0 externalLinkHandler, @NotNull final r buttonTracker) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageUri, "imageUri");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        ImageView imageView = new ImageView(context);
        imageView.setImageURI(imageUri);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.moloco.sdk.internal.publisher.nativead.ui.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.b(Function0.this, view);
            }
        });
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.b bVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.b(externalLinkHandler, context, null, 0, 12, null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(20);
        bVar.setPadding(16, 0, 0, 16);
        bVar.setOnButtonRenderedListener(new Function1() { // from class: com.moloco.sdk.internal.publisher.nativead.ui.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c.a(r.this, (a.AbstractC0597a.c) obj);
            }
        });
        bVar.setLayoutParams(layoutParams);
        watermark.a(imageView);
        addView(imageView);
        addView(bVar);
    }
}
